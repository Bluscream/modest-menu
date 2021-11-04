local firstRun = true

local function OnPlayerChanged(oldPlayer, newPlayer)
	if newPlayer == nil then return end
    if firstRun then
        firstRun = false
        -- if newPlayer.set_config_flag == nil then return end
        newPlayer:set_config_flag(PedConfigFlag.DisableStoppingVehEngine, true)
        newPlayer:set_config_flag(PedConfigFlag.DisableShufflingToDriverSeat, true)
        newPlayer:set_config_flag(PedConfigFlag.CanAttackFriendlies, true)
        newPlayer:set_config_flag(PedConfigFlag.DiesByRagdoll, false)
        menu:detach_objects()
    end
end

menu.register_callback('OnPlayerChanged', OnPlayerChanged)