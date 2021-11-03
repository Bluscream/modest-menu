-- menu.add_toggle("limp", function()
-- 	if localplayer == nil then
-- 		return nil
-- 	end
 
-- 	return localplayer:get_config_flag(166)
-- end, function(value)
-- 	localplayer:set_config_flag(166, value)
-- end)
 
-- menu.add_toggle("limp with weapon", function()
-- 	if localplayer == nil then
-- 		return nil
-- 	end
 
-- 	return localplayer:get_config_flag(187)
-- end, function(value)
-- 	localplayer:set_config_flag(187, value)
-- end)

menu.add_toggle("Snow", function()	
	return globals.get_boolean(262145 + 4724) 
end, function(value)
	globals.set_boolean(262145 + 4724, value)
end)