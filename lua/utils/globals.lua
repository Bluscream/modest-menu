local function global_toggle(var)
	if globals.get_boolean(var) then globals.set_boolean(var, false) else globals.set_boolean(var, true) end
end