local enums = require ("lib/init")

local Global = {
    Snow = 262145 + 4723
}

local function ToggleSnow()
	if globals.get_boolean(Global.Snow) then
		globals.set_boolean(Global.Snow, false)
	else
		globals.set_boolean(Global.Snow, true)
	end
end

menu.add_toggle("Weather: Snow", function() return globals.get_boolean(Global.Snow) end, ToggleSnow)
menu.add_action("become Bigfoot", function()
	globals.set_int(2671444+59, 1)
    globals.set_int(2671444+46, -1389097126)
end)
menu.add_action("become MP_female", function()
	globals.set_int(2671444+59, 1)
    globals.set_int(2671444+46, -1667301416)
end)
menu.add_action("become MP_male", function()
	globals.set_int(2671444+59, 1)
    globals.set_int(2671444+46, 1885233650)
end)
menu.add_action("Become Female Cop", function()
	globals.set_int(2671444+59, 1)
	globals.set_int(2671444+46, 1299047806) --working priest model
	sleep(0.09)
	globals.set_int(2671444+59, 1)
    globals.set_int(2671444+46, 0x15F8700D) --usually non-working female cop model
end)
menu.add_action("Become Chop", function()
	globals.set_int(2671444+59, 1)
    globals.set_int(2671444+46, 0x14EC17EA)
end)
menu.add_action("Become Imanni", function()
	globals.set_int(2671444+59, 1)
	globals.set_int(2671444+46, 1987160310) -- hash ped
	sleep(0.04) -- it is better if this can be adjustable by another menu option
	globals.set_int(2671444+59, 0)
end)

local function sethash(hash)
	globals.set_int(2671444+59, 1)
	globals.set_int(2671444+46, hash)
	sleep(0.01)
	globals.set_int(2671444+59, 0)
end
menu.add_int_range("Skin Number:", 1, 1, #PedHashes, function() end, function(value)-- lua tables start at 1, and you can get the length of PedModel with #PedModel
	sethash(PedHashes[value][2]) 
end)