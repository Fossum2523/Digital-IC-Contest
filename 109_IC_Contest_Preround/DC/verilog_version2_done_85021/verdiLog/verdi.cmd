debImport "-f" "filelist.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home/merg112/m11202141/IC_Contest/109_IC_Contest_Preround/verilog_version2_test/novas.fsdb}
verdiWindowResize -win $_Verdi_1 "480" "166" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debExit
