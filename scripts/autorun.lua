local firstRun = true

local function OnPlayerChanged(oldPlayer, newPlayer)
	if newPlayer == nil then return end
    if firstRun then
        firstRun = false
        if newPlayer.set_config_flag ~= nil then
            newPlayer:set_config_flag(241, true) -- DisableStoppingVehEngine
            -- newPlayer:set_config_flag(184, true) -- DisableShufflingToDriverSeat
            -- wdnewPlayer:set_config_flag(140, true) -- CanAttackFriendlies
            -- newPlayer:set_config_flag(33, false) -- DiesByRagdoll
        end
        if menu ~= nil then
        	menu:detach_objects()
            menu:set_bribe_authorities(true)
            menu:set_cops_turn_blind_eye(true)
            menu:set_reveal_player(true)
		end
    end
end

menu.register_callback('OnPlayerChanged', OnPlayerChanged)