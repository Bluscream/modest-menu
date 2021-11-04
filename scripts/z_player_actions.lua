local PedConfigFlag = {
    CanPunch = 18,
    CanFlyThruWindscreen = 32,
    DiesByRagdoll = 33,
    PutOnMotorcycleHelmet = 35,
    NoCollision = 52,
    IsShooting = 58,
    IsOnGround = 60,
    NoCollide = 62,
    Dead = 71,
    IsSniperScopeActive = 72,
    SuperDead = 73,
    IsInAir = 76,
    IsAiming = 78,
    Drunk = 100,
    IsNotRagdollAndNotPlayingAnim = 104,
    NoPlayerMelee = 122,
    NmMessage466 = 125,
    CanAttackFriendlies = 140,
    InjuredLimp = 166,
    InjuredLimp2 = 170,
    DisableShufflingToDriverSeat = 184,
    InjuredDown = 187,
    Shrink = 223,
    MeleeCombat = 224,
    DisableStoppingVehEngine = 241,
    IsOnStairs = 253,
    HasOneLegOnGround = 276,
    NoWrithe = 281,
    Freeze = 292,
    IsStill = 301,
    NoPedMelee = 314,
    PedSwitchingWeapon = 331,
    Alpha = 410,
    DisablePropKnockOff = 423,
    DisableStartingVehEngine = 429,
    FlamingFootprints = 421
}

-- Function definitions
 
local function Text(text)
	menu.add_action(text, function() end)
end
 
local function sqrt(i)
	return i^0.5
end
 
local function DistanceToSqr(vec1, vec2)
	return ((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2)
end
 
local function Distance(vec1, vec2)
	return sqrt(DistanceToSqr(vec1, vec2))
end
 
local function floor(num)
	return num//1
end
 
-- Player / Ped functions
 
local function IsPlayer(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end
 
local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end
 
local function IsModder(ply)
	if not IsPlayer(ply) then return false end
	
	if ply:get_max_health() > 100 then return true end -- <
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
 
	return false
end
 
local function GetPlayerIndex(pl)
	local index = 1
	for ply in replayinterface.get_peds() do
		if IsPlayer(ply) then
			if pl == ply then
				return index
			end
			index = index + 1
		end
	end
	return 0
end
 
local function GetPlayerByArrayIndex(num)
	local index = 1
	for ply in replayinterface.get_peds() do
		if IsPlayer(ply) then
			if index == num then
				return ply
			end
			index = index + 1
		end
	end
	return nil
end
 
local function GetPlayerCount()
	local playercount = 0
	for ped in replayinterface.get_peds() do
		if IsPlayer(ped) then 
			playercount = playercount + 1
		end
	end
	return playercount
end
 
-- Action functions
 
local function TeleportToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
 
	if not localplayer:is_in_vehicle() then
		-- localplayer:set_position(pos)
	else
		-- localplayer:get_current_vehicle():set_position(pos)
	end
end
 
local function TeleportVehiclesToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_position(pos)
		end
	end
end
 
local function TeleportPedsToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			ped:set_position(pos)
		end
	end
end
 
local function ExplodePlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_rotation(vector3(0,0,180))
			veh:set_health(-1)
			veh:set_position(pos)
		end
	end
end
 
-- Player option 
local selectedplayer = -1
 
local function add_player_option(ply)
	local index = GetPlayerIndex(ply)
	
	local text = index..":"
 
	-- Player ID
	if ply == localplayer then
		text = text.." YOU"
	else
		text = text.." Player "..ply:get_player_id()
	end
 
	if IsModder(ply) then
		text = text.."*"
	end
 
	text = text.." -"
 
	-- Is In GodMode, if not then Player Health
	if ply:get_godmode() then
		text = text.." God"
	else
		text = text.." "..floor(ply:get_health()).." HP"
	end
 
	-- Is In Vehicle
	if ply:is_in_vehicle() then
		text = text.." | Veh"
	end
 
	-- Player Wanted Level
	text = text.." | "..ply:get_wanted_level().."*"
 
	-- Player's Distance From You
	text = text.." | "..floor(Distance(ply:get_position(), localplayer:get_position())).." m"
 
	local d = index
 
	menu.add_toggle(text, function()
		if selectedplayer == d then
			return true
		else
			return false
		end
	end, function(val)
		selectedplayer = d
	end)
end

local function hasConfigFlag(flag)
	player = GetPlayerByArrayIndex(selectedplayer)
	if player ~= nil then return player:get_config_flag(flag) end
end
local function setConfigFlag(flag, v)
	player = GetPlayerByArrayIndex(selectedplayer)
	if player ~= nil then player:set_config_flag(flag, v) end
end
local function add_flag_toggle(name, flag)
	menu.add_toggle(name, function() return hasConfigFlag(flag) end, function(v) setConfigFlag(flag, v) end)
end

menu.add_action("[P] Teleport me to player", function() TeleportToPlayer(GetPlayerByArrayIndex(selectedplayer)) end)
menu.add_action("[P] Teleport Vehicles to player", function() TeleportVehiclesToPlayer(GetPlayerByArrayIndex(selectedplayer)) end)
menu.add_action("[P] Teleport Peds to player", function() TeleportPedsToPlayer(GetPlayerByArrayIndex(selectedplayer)) end)
menu.add_action("[P] Explode player", function() ExplodePlayer(GetPlayerByArrayIndex(selectedplayer)) end)


add_flag_toggle("[P] Tiny", PedConfigFlag.Shrink)
add_flag_toggle("[P] Freeze", PedConfigFlag.Freeze)
add_flag_toggle("[P] Keep engine running", PedConfigFlag.DisableStoppingVehEngine)
add_flag_toggle("[P] Don't start engine", PedConfigFlag.DisableStartingVehEngine)
add_flag_toggle("[P] Can attack friendlies", PedConfigFlag.CanAttackFriendlies)


 
-- Building Player List
 
Text("---AppleVegas's Player List, "..GetPlayerCount().." Players---")
 
local function IsInArray(arr, val)
	for i = 1, #arr do
		if arr[i] == val then return true end
	end 
	return false 
end
 
local PlayersDistances = {}
local SortedPlayers = {}
 
local i = 1
for ply in replayinterface.get_peds() do
	if IsPlayer(ply) then 
		PlayersDistances[i] = {ply, DistanceToSqr(ply:get_position(), localplayer:get_position())}
		i = i + 1
	end
end
 
for c = 1, i do
	local smallest = {nil, nil}
	for plyd = 1, #PlayersDistances do
		if not IsInArray(SortedPlayers, PlayersDistances[plyd][1]) then 
			if smallest[2] == nil or PlayersDistances[plyd][2] <= smallest[2] then
				smallest = PlayersDistances[plyd]
			end
		end
	end
	SortedPlayers[c] = smallest[1]
end
 
for ply = 1, #SortedPlayers do
	add_player_option(SortedPlayers[ply])
end
 
 
 
Text("---End---")
 
-- Info Panel
 
Text("")
 
menu.add_toggle("Is Selected Player Valid", function()
	if selectedplayer == -1 then return false end
	if not IsPlayer(GetPlayerByArrayIndex(selectedplayer)) then return false end
	return true 
end, function() end)
 
menu.add_float_range("Distance To Selected Player", 1, 0, 0, function()
	if selectedplayer == -1 then return 0 end
 
	local ply = GetPlayerByArrayIndex(selectedplayer)
 
	if not IsPlayer(ply) then return 0 end
 
	return floor(Distance(ply:get_position(), localplayer:get_position()))
end, function() end)