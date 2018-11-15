# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GET_SET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HORIZ_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HORIZ_FRONT_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HORIZ_RES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HORIZ_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HORIZ_SYNC_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HORIZ_SYNC_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET_CYCLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESTART_STATE_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESTART_STATE_RESTART" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESTART_STATE_WAIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_16_SHIFT_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_16_SHIFT_SHIFTED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_16_SHIFT_STORED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_HORIZ_RES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_VERT_RES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERT_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERT_FRONT_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERT_RES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERT_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERT_SYNC_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERT_SYNC_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT_END_VSYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT_START_VSYNC" -parent ${Page_0}


}

proc update_PARAM_VALUE.GET_SET { PARAM_VALUE.GET_SET } {
	# Procedure called to update GET_SET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET_SET { PARAM_VALUE.GET_SET } {
	# Procedure called to validate GET_SET
	return true
}

proc update_PARAM_VALUE.HORIZ_BACK_PORCH { PARAM_VALUE.HORIZ_BACK_PORCH } {
	# Procedure called to update HORIZ_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZ_BACK_PORCH { PARAM_VALUE.HORIZ_BACK_PORCH } {
	# Procedure called to validate HORIZ_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.HORIZ_FRONT_PORCH { PARAM_VALUE.HORIZ_FRONT_PORCH } {
	# Procedure called to update HORIZ_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZ_FRONT_PORCH { PARAM_VALUE.HORIZ_FRONT_PORCH } {
	# Procedure called to validate HORIZ_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.HORIZ_RES { PARAM_VALUE.HORIZ_RES } {
	# Procedure called to update HORIZ_RES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZ_RES { PARAM_VALUE.HORIZ_RES } {
	# Procedure called to validate HORIZ_RES
	return true
}

proc update_PARAM_VALUE.HORIZ_SYNC { PARAM_VALUE.HORIZ_SYNC } {
	# Procedure called to update HORIZ_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZ_SYNC { PARAM_VALUE.HORIZ_SYNC } {
	# Procedure called to validate HORIZ_SYNC
	return true
}

proc update_PARAM_VALUE.HORIZ_SYNC_END { PARAM_VALUE.HORIZ_SYNC_END } {
	# Procedure called to update HORIZ_SYNC_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZ_SYNC_END { PARAM_VALUE.HORIZ_SYNC_END } {
	# Procedure called to validate HORIZ_SYNC_END
	return true
}

proc update_PARAM_VALUE.HORIZ_SYNC_START { PARAM_VALUE.HORIZ_SYNC_START } {
	# Procedure called to update HORIZ_SYNC_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZ_SYNC_START { PARAM_VALUE.HORIZ_SYNC_START } {
	# Procedure called to validate HORIZ_SYNC_START
	return true
}

proc update_PARAM_VALUE.RESET_CYCLE { PARAM_VALUE.RESET_CYCLE } {
	# Procedure called to update RESET_CYCLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_CYCLE { PARAM_VALUE.RESET_CYCLE } {
	# Procedure called to validate RESET_CYCLE
	return true
}

proc update_PARAM_VALUE.RESTART_STATE_END { PARAM_VALUE.RESTART_STATE_END } {
	# Procedure called to update RESTART_STATE_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESTART_STATE_END { PARAM_VALUE.RESTART_STATE_END } {
	# Procedure called to validate RESTART_STATE_END
	return true
}

proc update_PARAM_VALUE.RESTART_STATE_RESTART { PARAM_VALUE.RESTART_STATE_RESTART } {
	# Procedure called to update RESTART_STATE_RESTART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESTART_STATE_RESTART { PARAM_VALUE.RESTART_STATE_RESTART } {
	# Procedure called to validate RESTART_STATE_RESTART
	return true
}

proc update_PARAM_VALUE.RESTART_STATE_WAIT { PARAM_VALUE.RESTART_STATE_WAIT } {
	# Procedure called to update RESTART_STATE_WAIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESTART_STATE_WAIT { PARAM_VALUE.RESTART_STATE_WAIT } {
	# Procedure called to validate RESTART_STATE_WAIT
	return true
}

proc update_PARAM_VALUE.STATE_16_SHIFT_IDLE { PARAM_VALUE.STATE_16_SHIFT_IDLE } {
	# Procedure called to update STATE_16_SHIFT_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_16_SHIFT_IDLE { PARAM_VALUE.STATE_16_SHIFT_IDLE } {
	# Procedure called to validate STATE_16_SHIFT_IDLE
	return true
}

proc update_PARAM_VALUE.STATE_16_SHIFT_SHIFTED { PARAM_VALUE.STATE_16_SHIFT_SHIFTED } {
	# Procedure called to update STATE_16_SHIFT_SHIFTED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_16_SHIFT_SHIFTED { PARAM_VALUE.STATE_16_SHIFT_SHIFTED } {
	# Procedure called to validate STATE_16_SHIFT_SHIFTED
	return true
}

proc update_PARAM_VALUE.STATE_16_SHIFT_STORED { PARAM_VALUE.STATE_16_SHIFT_STORED } {
	# Procedure called to update STATE_16_SHIFT_STORED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_16_SHIFT_STORED { PARAM_VALUE.STATE_16_SHIFT_STORED } {
	# Procedure called to validate STATE_16_SHIFT_STORED
	return true
}

proc update_PARAM_VALUE.TOTAL_HORIZ_RES { PARAM_VALUE.TOTAL_HORIZ_RES } {
	# Procedure called to update TOTAL_HORIZ_RES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_HORIZ_RES { PARAM_VALUE.TOTAL_HORIZ_RES } {
	# Procedure called to validate TOTAL_HORIZ_RES
	return true
}

proc update_PARAM_VALUE.TOTAL_VERT_RES { PARAM_VALUE.TOTAL_VERT_RES } {
	# Procedure called to update TOTAL_VERT_RES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_VERT_RES { PARAM_VALUE.TOTAL_VERT_RES } {
	# Procedure called to validate TOTAL_VERT_RES
	return true
}

proc update_PARAM_VALUE.VERT_BACK_PORCH { PARAM_VALUE.VERT_BACK_PORCH } {
	# Procedure called to update VERT_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERT_BACK_PORCH { PARAM_VALUE.VERT_BACK_PORCH } {
	# Procedure called to validate VERT_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.VERT_FRONT_PORCH { PARAM_VALUE.VERT_FRONT_PORCH } {
	# Procedure called to update VERT_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERT_FRONT_PORCH { PARAM_VALUE.VERT_FRONT_PORCH } {
	# Procedure called to validate VERT_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.VERT_RES { PARAM_VALUE.VERT_RES } {
	# Procedure called to update VERT_RES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERT_RES { PARAM_VALUE.VERT_RES } {
	# Procedure called to validate VERT_RES
	return true
}

proc update_PARAM_VALUE.VERT_SYNC { PARAM_VALUE.VERT_SYNC } {
	# Procedure called to update VERT_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERT_SYNC { PARAM_VALUE.VERT_SYNC } {
	# Procedure called to validate VERT_SYNC
	return true
}

proc update_PARAM_VALUE.VERT_SYNC_END { PARAM_VALUE.VERT_SYNC_END } {
	# Procedure called to update VERT_SYNC_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERT_SYNC_END { PARAM_VALUE.VERT_SYNC_END } {
	# Procedure called to validate VERT_SYNC_END
	return true
}

proc update_PARAM_VALUE.VERT_SYNC_START { PARAM_VALUE.VERT_SYNC_START } {
	# Procedure called to update VERT_SYNC_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERT_SYNC_START { PARAM_VALUE.VERT_SYNC_START } {
	# Procedure called to validate VERT_SYNC_START
	return true
}

proc update_PARAM_VALUE.WAIT_END_VSYNC { PARAM_VALUE.WAIT_END_VSYNC } {
	# Procedure called to update WAIT_END_VSYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT_END_VSYNC { PARAM_VALUE.WAIT_END_VSYNC } {
	# Procedure called to validate WAIT_END_VSYNC
	return true
}

proc update_PARAM_VALUE.WAIT_START_VSYNC { PARAM_VALUE.WAIT_START_VSYNC } {
	# Procedure called to update WAIT_START_VSYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT_START_VSYNC { PARAM_VALUE.WAIT_START_VSYNC } {
	# Procedure called to validate WAIT_START_VSYNC
	return true
}


proc update_MODELPARAM_VALUE.HORIZ_RES { MODELPARAM_VALUE.HORIZ_RES PARAM_VALUE.HORIZ_RES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZ_RES}] ${MODELPARAM_VALUE.HORIZ_RES}
}

proc update_MODELPARAM_VALUE.VERT_RES { MODELPARAM_VALUE.VERT_RES PARAM_VALUE.VERT_RES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERT_RES}] ${MODELPARAM_VALUE.VERT_RES}
}

proc update_MODELPARAM_VALUE.HORIZ_BACK_PORCH { MODELPARAM_VALUE.HORIZ_BACK_PORCH PARAM_VALUE.HORIZ_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZ_BACK_PORCH}] ${MODELPARAM_VALUE.HORIZ_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.HORIZ_FRONT_PORCH { MODELPARAM_VALUE.HORIZ_FRONT_PORCH PARAM_VALUE.HORIZ_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZ_FRONT_PORCH}] ${MODELPARAM_VALUE.HORIZ_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.HORIZ_SYNC { MODELPARAM_VALUE.HORIZ_SYNC PARAM_VALUE.HORIZ_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZ_SYNC}] ${MODELPARAM_VALUE.HORIZ_SYNC}
}

proc update_MODELPARAM_VALUE.VERT_BACK_PORCH { MODELPARAM_VALUE.VERT_BACK_PORCH PARAM_VALUE.VERT_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERT_BACK_PORCH}] ${MODELPARAM_VALUE.VERT_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.VERT_FRONT_PORCH { MODELPARAM_VALUE.VERT_FRONT_PORCH PARAM_VALUE.VERT_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERT_FRONT_PORCH}] ${MODELPARAM_VALUE.VERT_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.VERT_SYNC { MODELPARAM_VALUE.VERT_SYNC PARAM_VALUE.VERT_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERT_SYNC}] ${MODELPARAM_VALUE.VERT_SYNC}
}

proc update_MODELPARAM_VALUE.TOTAL_HORIZ_RES { MODELPARAM_VALUE.TOTAL_HORIZ_RES PARAM_VALUE.TOTAL_HORIZ_RES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_HORIZ_RES}] ${MODELPARAM_VALUE.TOTAL_HORIZ_RES}
}

proc update_MODELPARAM_VALUE.TOTAL_VERT_RES { MODELPARAM_VALUE.TOTAL_VERT_RES PARAM_VALUE.TOTAL_VERT_RES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_VERT_RES}] ${MODELPARAM_VALUE.TOTAL_VERT_RES}
}

proc update_MODELPARAM_VALUE.HORIZ_SYNC_START { MODELPARAM_VALUE.HORIZ_SYNC_START PARAM_VALUE.HORIZ_SYNC_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZ_SYNC_START}] ${MODELPARAM_VALUE.HORIZ_SYNC_START}
}

proc update_MODELPARAM_VALUE.HORIZ_SYNC_END { MODELPARAM_VALUE.HORIZ_SYNC_END PARAM_VALUE.HORIZ_SYNC_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZ_SYNC_END}] ${MODELPARAM_VALUE.HORIZ_SYNC_END}
}

proc update_MODELPARAM_VALUE.VERT_SYNC_START { MODELPARAM_VALUE.VERT_SYNC_START PARAM_VALUE.VERT_SYNC_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERT_SYNC_START}] ${MODELPARAM_VALUE.VERT_SYNC_START}
}

proc update_MODELPARAM_VALUE.VERT_SYNC_END { MODELPARAM_VALUE.VERT_SYNC_END PARAM_VALUE.VERT_SYNC_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERT_SYNC_END}] ${MODELPARAM_VALUE.VERT_SYNC_END}
}

proc update_MODELPARAM_VALUE.WAIT_START_VSYNC { MODELPARAM_VALUE.WAIT_START_VSYNC PARAM_VALUE.WAIT_START_VSYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT_START_VSYNC}] ${MODELPARAM_VALUE.WAIT_START_VSYNC}
}

proc update_MODELPARAM_VALUE.RESET_CYCLE { MODELPARAM_VALUE.RESET_CYCLE PARAM_VALUE.RESET_CYCLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_CYCLE}] ${MODELPARAM_VALUE.RESET_CYCLE}
}

proc update_MODELPARAM_VALUE.GET_SET { MODELPARAM_VALUE.GET_SET PARAM_VALUE.GET_SET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET_SET}] ${MODELPARAM_VALUE.GET_SET}
}

proc update_MODELPARAM_VALUE.WAIT_END_VSYNC { MODELPARAM_VALUE.WAIT_END_VSYNC PARAM_VALUE.WAIT_END_VSYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT_END_VSYNC}] ${MODELPARAM_VALUE.WAIT_END_VSYNC}
}

proc update_MODELPARAM_VALUE.RESTART_STATE_WAIT { MODELPARAM_VALUE.RESTART_STATE_WAIT PARAM_VALUE.RESTART_STATE_WAIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESTART_STATE_WAIT}] ${MODELPARAM_VALUE.RESTART_STATE_WAIT}
}

proc update_MODELPARAM_VALUE.RESTART_STATE_RESTART { MODELPARAM_VALUE.RESTART_STATE_RESTART PARAM_VALUE.RESTART_STATE_RESTART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESTART_STATE_RESTART}] ${MODELPARAM_VALUE.RESTART_STATE_RESTART}
}

proc update_MODELPARAM_VALUE.RESTART_STATE_END { MODELPARAM_VALUE.RESTART_STATE_END PARAM_VALUE.RESTART_STATE_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESTART_STATE_END}] ${MODELPARAM_VALUE.RESTART_STATE_END}
}

proc update_MODELPARAM_VALUE.STATE_16_SHIFT_IDLE { MODELPARAM_VALUE.STATE_16_SHIFT_IDLE PARAM_VALUE.STATE_16_SHIFT_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_16_SHIFT_IDLE}] ${MODELPARAM_VALUE.STATE_16_SHIFT_IDLE}
}

proc update_MODELPARAM_VALUE.STATE_16_SHIFT_STORED { MODELPARAM_VALUE.STATE_16_SHIFT_STORED PARAM_VALUE.STATE_16_SHIFT_STORED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_16_SHIFT_STORED}] ${MODELPARAM_VALUE.STATE_16_SHIFT_STORED}
}

proc update_MODELPARAM_VALUE.STATE_16_SHIFT_SHIFTED { MODELPARAM_VALUE.STATE_16_SHIFT_SHIFTED PARAM_VALUE.STATE_16_SHIFT_SHIFTED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_16_SHIFT_SHIFTED}] ${MODELPARAM_VALUE.STATE_16_SHIFT_SHIFTED}
}

