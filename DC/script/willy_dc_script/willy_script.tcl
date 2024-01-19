#========================================#
# Replace All $DESIGN to top module name #
#========================================#
##### Read Design File #####
#創建一個model資料夾
sh mkdir model 
#定義design_lib 叫做 'model' 並且目標路徑設定爲 './model'
define_design_lib model -path ./model

##讀取檔案 資料型態 'pla' 檔案爲 'converter.pla'
##read_file -format pla  converter.pla
##讀取檔案 資料型態 'verilog'， -autoread 自動讀取，-top module叫做$DESIGN，-recursive 在{ }路徑下的檔案都尋找
read_file -format verilog -autoread -top $DESIGN -recursive {./}

#分析這些 HDL source 之中有無互相連結，把結果儲存到 library 'model'
#analyze -library model -format verilog "dir2/timer.v dir2/microwave.v dir2/micro_st.v dir2/loader.v dir2/display.v dir1/top.v"
analyze -library model -format verilog -autoread -recursive ./

#建置架構，名稱為'top'，架構爲'verilog'，library爲'model'
elaborate top -architecture verilog -library model

#把top level 設定到'top'
current_design top
#檢查file&Lib是否正確 (務必正確才能到下一步)
link

##### Setting Clock Constraints ######
# 七大法則
## 1.Period
create_clock -name clk -period 4   [get_ports clk] 
## 2.Waveform
set_dont_touch_network             [get_clocks clk]
set_fix_hold                       [get_clocks clk]
## Uncertainty
### 3.Skew
set_clock_uncertainty       0.1    [get_clocks clk]  #通常設 小：0.1, 中：0.2, 大：0.3~0.5, 盡量小於0.5
## Latency  #設定tool看不到的delay, 把未來CTS會長出來的delay在合成階段先考慮進去
### 4.Source latency (option) #跟別人分工才需要，單獨完成不用
set_clock_latency   -source 0      [get_clocks clk]  #從外部origin clock到內部clock的delay
### 5.Network latency 
set_clock_latency           1      [get_clocks clk]  #從內部clock到register clk的delay
## 6.Input transition
set_input_transition        0.5    [all_inputs]      #TSMC測試機臺0.5，實際數值要詢問
## 7.Clock transition
set_clock_transition        0.1    [all_clocks]      #TSMC測試機臺0.1，實際數值要詢問

##### Setting Design Environment #####
#設定工作溫度環境，two corners，40nm 以下corner條件會交換
set_operating_conditions -min fast  -max slow
#設定wire要用的model，有什麼model跟詳細參數多少可以到 slow.lib 裡面看
set_wire_load_model -name tsmc090_wl10 -library slow 
#設定輸入端透過什麼driving_cell (BUFF4 form slow.lib) 推動到哪個腳位 (pin{Y})  #通常用來設定 I/O PAD
set_driving_cell -library slow -lib_cell BUFX4   -pin {Y}  [get_ports clk]
set_driving_cell -library slow -lib_cell DFFX1   -pin {Q}  [remove_from_collection [all_inputs] [get_ports clk]]
#設定輸出端被什麼腳位讀取 (slow/DFFX1/D)  #通常用來設定 I/O PAD
set_load  [load_of "slow/DFFX1/D"]       [all_outputs]
#設定 input and output delay（ns）＃一般都設定 50% ~ 60% 的 $period，主要還是看公司
# -max for Setup-time  # -min for Hold-time
set_input_delay   -max 1    -clock clk   [all_inputs]
set_input_delay   -min 0.2  -clock clk   [all_inputs]
set_output_delay  -max 1    -clock clk   [all_outputs]
set_output_delay  -min 0.1  -clock clk   [all_outputs]
check_design

##### Setting DRC Constraint #####
set_max_area        0
set_max_fanout      10    [all_inputs]
set_max_transition  0.3   [all_inputs]   #製成決定
#set_max_capacitance 0.1   [all_inputs]   #製成決定

##### Solve Multiple Instance #####
check_design 
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]  #防止assign出現導致APR錯誤
set case_analysis_with_logic_constants true

##### solve floating point ###### 
remove_unconnected_ports -blast_buses [get_cells * -hier] 
#remove_irregular_net_bus - restricted "A\[\]"

##### Multi-Core Sythesis ######
set_host_options -max_cores 8   #看電腦核心(1-16)

##### Synthesis all design #####
# -boundary_optimization #有才需要加在compile後面
# set_dynamic_optimization true                                      #需要最佳power才要設定
set compile_top_all_paths true
compile  #default medium
###timing 或 area 沒過
##第一招
#compile -inc -map_effort high
#compile -inc -area_effort high
#compile -inc -area_effort high -map_effort high
##第二招
#compile -map_effort high
#compile -area_effort high
#compile -area_effort high -map_effort high
##第三招
#compile_ultra -timing -scan   #找終極速度
#compile_ultra -area   -scan   #找最佳面積
#如果compile_ultra後function有錯誤要加 '-no_autoungroup'

##### Report design #####
# 可以加 -hier 看每個階層的資訊
report_area -hier  > area.log
report_timing      > timing.log
report_power       > power.log
report_qor         > $DESIGN_syn.qor

##### Write synthesis file #####
write     -format ddc     -hierarchy -output "$DESIGN_syn.ddc"
write_sdf -version 1.0                        $DESIGN_syn.sdf
write     -format verilog -hierarchy -output  $DESIGN_syn.v
exit


