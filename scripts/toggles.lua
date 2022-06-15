require("init")
menu_add_global_toggle(Global.Snow, "Weather: Snow")
-- menu.add_action("become Bigfoot", function()
-- 	globals.set_int(2671444+59, 1)
--     globals.set_int(2671444+46, -1389097126)
-- end)
-- menu.add_action("become MP_female", function()
-- 	globals.set_int(2671444+59, 1)
--     globals.set_int(2671444+46, -1667301416)
-- end)
-- menu.add_action("become MP_male", function()
-- 	globals.set_int(2671444+59, 1)
--     globals.set_int(2671444+46, 1885233650)
-- end)
-- menu.add_action("Become Female Cop", function()
-- 	globals.set_int(2671444+59, 1)
-- 	globals.set_int(2671444+46, 1299047806) --working priest model
-- 	sleep(0.09)
-- 	globals.set_int(2671444+59, 1)
--     globals.set_int(2671444+46, 0x15F8700D) --usually non-working female cop model
-- end)
-- menu.add_action("Become Chop", function()
-- 	globals.set_int(2671444+59, 1)
--     globals.set_int(2671444+46, 0x14EC17EA)
-- end)
-- menu.add_action("Become Imanni", function()
-- 	globals.set_int(2671444+59, 1)
-- 	globals.set_int(2671444+46, 1987160310) -- hash ped
-- 	sleep(0.04) -- it is better if this ca5n be adjustable by another menu option
-- 	globals.set_int(2671444+59, 0)
-- end)
-- menu.add_int_range("Skin Number:", 1, 1, get_keys(#PedHash), function() end, function(v)-- lua tables start at 1, and you can get the length of PedModel with #PedModel
-- 	sethash(PedHash[v]) 
-- end)

-- menu:add_enum_range(menu, enum, title, sort, action_callback)
local function get_current_ped()
	local hash = PedHashName[localplayer:get_model_hash()]
	return hash
end
local function set_current_ped(hash)
	print(tostring(hash))
	if hash == nil then return end
	player_set_ped_model(hash)
end
menu_add_enum_range(PedHash, "Ped Model", false, set_current_ped, get_current_ped)

menu.add_action("Get Weapons",function()
	for i=1, #WeaponPickups do
		weapon_spawn(WeaponPickups[i])
	end
end)