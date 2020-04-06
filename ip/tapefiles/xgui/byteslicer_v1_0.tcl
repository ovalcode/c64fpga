# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "STATE_INIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_LOADED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_SHIFT_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_SHIFT_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_SHIFT_3" -parent ${Page_0}


}

proc update_PARAM_VALUE.STATE_INIT { PARAM_VALUE.STATE_INIT } {
	# Procedure called to update STATE_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_INIT { PARAM_VALUE.STATE_INIT } {
	# Procedure called to validate STATE_INIT
	return true
}

proc update_PARAM_VALUE.STATE_LOADED { PARAM_VALUE.STATE_LOADED } {
	# Procedure called to update STATE_LOADED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_LOADED { PARAM_VALUE.STATE_LOADED } {
	# Procedure called to validate STATE_LOADED
	return true
}

proc update_PARAM_VALUE.STATE_SHIFT_1 { PARAM_VALUE.STATE_SHIFT_1 } {
	# Procedure called to update STATE_SHIFT_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_SHIFT_1 { PARAM_VALUE.STATE_SHIFT_1 } {
	# Procedure called to validate STATE_SHIFT_1
	return true
}

proc update_PARAM_VALUE.STATE_SHIFT_2 { PARAM_VALUE.STATE_SHIFT_2 } {
	# Procedure called to update STATE_SHIFT_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_SHIFT_2 { PARAM_VALUE.STATE_SHIFT_2 } {
	# Procedure called to validate STATE_SHIFT_2
	return true
}

proc update_PARAM_VALUE.STATE_SHIFT_3 { PARAM_VALUE.STATE_SHIFT_3 } {
	# Procedure called to update STATE_SHIFT_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_SHIFT_3 { PARAM_VALUE.STATE_SHIFT_3 } {
	# Procedure called to validate STATE_SHIFT_3
	return true
}


proc update_MODELPARAM_VALUE.STATE_INIT { MODELPARAM_VALUE.STATE_INIT PARAM_VALUE.STATE_INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_INIT}] ${MODELPARAM_VALUE.STATE_INIT}
}

proc update_MODELPARAM_VALUE.STATE_LOADED { MODELPARAM_VALUE.STATE_LOADED PARAM_VALUE.STATE_LOADED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_LOADED}] ${MODELPARAM_VALUE.STATE_LOADED}
}

proc update_MODELPARAM_VALUE.STATE_SHIFT_1 { MODELPARAM_VALUE.STATE_SHIFT_1 PARAM_VALUE.STATE_SHIFT_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_SHIFT_1}] ${MODELPARAM_VALUE.STATE_SHIFT_1}
}

proc update_MODELPARAM_VALUE.STATE_SHIFT_2 { MODELPARAM_VALUE.STATE_SHIFT_2 PARAM_VALUE.STATE_SHIFT_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_SHIFT_2}] ${MODELPARAM_VALUE.STATE_SHIFT_2}
}

proc update_MODELPARAM_VALUE.STATE_SHIFT_3 { MODELPARAM_VALUE.STATE_SHIFT_3 PARAM_VALUE.STATE_SHIFT_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_SHIFT_3}] ${MODELPARAM_VALUE.STATE_SHIFT_3}
}

