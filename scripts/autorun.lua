local PedConfigFlagValues = {
	18, -- CanPunch
	32, -- CanFlyThruWindscreen
	33, -- DiesByRagdoll
	35, -- PutOnMotorcycleHelmet
	52, -- NoCollision
	58, -- IsShooting
	60, -- IsOnGround
	62, -- NoCollide
	71, -- Dead
	72, -- IsSniperScopeActive
	73, -- SuperDead
	76, -- IsInAir
	78, -- IsAiming
	100, -- Drunk
	104, -- IsNotRagdollAndNotPlayingAnim
	122, -- NoPlayerMelee
	125, -- NmMessage466
	140, -- CanAttackFriendlies
	166, -- InjuredLimp
	170, -- InjuredLimp2
	184, -- DisableShufflingToDriverSeat
	187, -- InjuredDown
	223, -- Shrink
	224, -- MeleeCombat
	241, -- DisableStoppingVehEngine
	253, -- IsOnStairs
	276, -- HasOneLegOnGround
	281, -- NoWrithe
	292, -- Freeze
	301, -- IsStill
	314, -- NoPedMelee
	331, -- PedSwitchingWeapon
	410, -- Alpha
	423, -- DisablePropKnockOff
	429, -- DisableStartingVehEngine
	421 -- FlamingFootprints
}

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
        menu:detach_objects()
    end
end

menu.register_callback('OnPlayerChanged', OnPlayerChanged)