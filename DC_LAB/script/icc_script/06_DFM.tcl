source $CBDK_LIB\/CIC/ICC/addCoreFiller.cmd 
verify_zrt_route 
route_zrt_detail -incremental true -initial_drc_from_input true

report_timing

derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}

source $CBDK_LIB\/CIC/ICC/add_io_text.tcl 
add_io_text TEXT3 5 portName

#use mouse...... 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -start CreateTextTool 
#gui_set_mouse_tool_option -tool CreateTextTool -option {layer} -value {METAL1}

#gui_set_mouse_tool_option -tool CreateTextTool -option {text} -value {VDD} 
#gui_set_mouse_tool_option -tool CreateTextTool -option {height} -value {5.0} 
#gui_set_mouse_tool_option -tool CreateTextTool -option {layer} -value {METAL2} 
#gui_set_mouse_tool_option -tool CreateTextTool -option {layer} -value {METAL3} 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -add_point {244.565 633.460} -scale 0.1936 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -reset 
#gui_mouse_tool -window [gui get current window -types Layout -mru] -start CreateTextTool 
#gui_set_mouse_tool_option -tool CreateTextTool -option {text} -value {VSS} 
#gui_set_mouse_tool_option -tool CreateTextTool -option {layer} -value {METAL2} 
#gui_set_mouse_tool_option -tool CreateTextTool -option {layer} -value (METAL3}
#gui_mouse_tool -window (gui_get_current_window -types Layout -mru] -add_point {245.535 624.750} -scale 0.1936 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -reset 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru) -start CreateTextTool 
#gui_set_mouse_tool_option -tool CreateTextTool -option {text} -value {IOVDD} 
#gui_set_mouse_tool_option -tool CreateTextTool -option {layer} -value {METAL4} 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru) -add_point {83.650 450.085} -scale 0.1936 
#gui_mouse_tool -window [gui get current window -types Layout -mru] -reset 
#gui_mouse_tool -window (gui_get_current_window -types Layout -mru] -start CreateTextTool 
#gui_set_mouse_tool_option -tool CreateTextTool -option {text} -value {IOVSS} 
#gui_mouse_tool -window [gui_get_current_window types Layout -mru] -add_point {83.460 547.100} -scale 0.1936 
#gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -reset

