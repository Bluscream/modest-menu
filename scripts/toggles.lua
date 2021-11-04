local Global = {
    Snow = 266869
}

local function ToggleSnow()
	if globals.get_boolean(Global.Snow) then
		globals.set_boolean(Global.Snow, false)
	else
		globals.set_boolean(Global.Snow, true)
	end
end

menu.add_toggle("Weather: Snow", function() return globals.get_boolean(Global.Snow) end, ToggleSnow)