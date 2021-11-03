local function OnPlayerChanged(oldPlayer, newPlayer)
	if newPlayer == nil then return end
    newPlayer:set_config_flag(241, true)
    newPlayer:set_config_flag(140, true)
end

menu.register_callback('OnPlayerChanged', OnPlayerChanged)