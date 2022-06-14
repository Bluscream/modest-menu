local CrVh=2725269				--Create Vehicle Offset

local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end

local function PlyVeh(veh)
	for i = 0, 31 do
		ply = player.get_player_ped(i)
		if ply then if ply:get_current_vehicle()==veh then
		return true else return false end end
	end
end

local function TeleportPedsToPlayer(ply, dead)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			if not ped:is_in_vehicle() then
				ped:set_position(ply:get_position()+vector3(2*disX, 2*disY, disZ))
			end
		end
	end
end

local function ExplodePlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local currentvehicle = nil 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not PlyVeh(veh) then
			acc=veh:get_acceleration()
			veh:set_acceleration(0)
			veh:set_rotation(vector3(0,0,180))
			veh:set_health(-1)
			veh:set_position(ply:get_position()+vector3(disX, disY, disZ))
			veh:set_acceleration(acc)
		end
		end
	end
end
 
local function LaunchPlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local currentvehicle = nil 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle~=veh then
		if not PlyVeh(veh) then
			acc=veh:get_acceleration()
			veh:set_acceleration(0)
			veh:set_rotation(vector3(0,0,0))
			veh:set_gravity(-100)
			veh:set_position(ply:get_position()+vector3(2.5*disX, 2.5*disY, disZ-5))
			veh:set_acceleration(acc)
		end
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_gravity(9.8)
		end
	end
end
 
local function SlamPlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local currentvehicle = nil 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not PlyVeh(veh) then
			acc=veh:get_acceleration()
			veh:set_acceleration(0)
			veh:set_rotation(vector3(0,0,0))
			veh:set_gravity(10000)
			veh:set_position(ply:get_position()+vector3(5*disX, 5*disY, disZ + 100))
			veh:set_acceleration(acc)
		end
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not ply:get_current_vehicle() or ply:get_current_vehicle() ~= veh then
			veh:set_gravity(9.8)
		end
		end
	end
end

local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
local function lpBmb()
	SlPl=globals.get_int(CrVh+27+6) a=0
	while SlPl>=0 and SlPl<=31 do
		if a==0 then globals.set_int(CrVh+27+6, 0) a=1 end
		if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then return end
		TeleportPedsToPlayer(player.get_player_ped(SlPl))
		sleep(0.5)
		if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then return end
		ExplodePlayer(player.get_player_ped(SlPl))
		sleep(1.5)
		if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then return end
		LaunchPlayer(player.get_player_ped(SlPl))
		sleep(3)
		if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then return end
		SlamPlayer(player.get_player_ped(SlPl))
		sleep(1.5)
	end
	stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", stats.get_int("MP"..mpx.."_H4LOOT_WEED_I"))
end
menu.register_hotkey(155, lpBmb)



