require "enums"

local function OnPlayerChanged(oldPlayer, newPlayer)
	if newPlayer == nil then return end
    newPlayer:set_config_flag(PedConfigFlag.DisableStoppingVehEngine, true)
    newPlayer:set_config_flag(PedConfigFlag.CanAttackFriendlies, true)
end

menu.register_callback('OnPlayerChanged', OnPlayerChanged)