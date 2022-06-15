-- Made by AppleVegas
print("=== z_player_actions START ===")
require("init")
local VehicleHashName = table_invert(VehicleHash)

local Tsk=1					--On Admin Detection; 1-DoARoundabout, 2-JoinPublic, 3-EmptySession
local ChSs=nil				--ChangeSession Hotkey, nil to disable
local EmSs=KeyCode.VK_PAUSE --Pause|Break key	--EmptySession Hotkey, nil to disable
local enable = false		--ExplodeLoop hotkey default(on/off>true/false)
local TL=KeyCode.VK_NUMPAD9	--TrollLoop hotkey, Numpad9

local SsTy=Global.SessionType	--v1.60 Session Type
local SsTr=Global.SessionTrigger	--v1.60 Session Trigger
local CrVh=Global.CreateVehicle	--Create Vehicle Offset
	
-- On Admin Detection
local nme=0
local function ondetect()
	if Tsk==2 then ChangeSession()
	elseif Tsk==3 then EmptySession()
	else if nme~=adm then nme=adm
	menu.send_key_press(157)
end end end
local function ChangeSession()
	globals.set_int(SsTy, 0)
	globals.set_int(SsTr, 1)
	sleep(0.01)
	globals.set_int(SsTr, 0)
	nme=0
end
if Hkey1 then menu.remove_hotkey(Hkey1) end
if ChSs then Hkey1=menu.register_hotkey(ChSs, ChangeSession) end
local function EmptySession()
	menu.empty_session() nme=0
end
if Hkey2 then menu.remove_hotkey(Hkey1) end
if EmSs then Hkey2=menu.register_hotkey(EmSs, EmptySession) end

-- Function definitions
local function null() end
local function Text(submenu, text)
	if (submenu ~= nil) then
		submenu:add_action(text, null)
	else
		menu.add_action(text, null)
	end
end
-- Action functions
local function TeleportToPlayer(ply, seconds)
	if not ply or ply == nil then return end 
	local pos = ply:get_position()
	if seconds then
		if localplayer:is_in_vehicle() then
			print("can not teleport while in vehicle")
			return
		end
 
		local oldpos = localplayer:get_position()
		localplayer:set_position(pos)
		sleep(seconds)
		localplayer:set_freeze_momentum(true) 
		localplayer:set_config_flag(292,true)
		localplayer:set_position(oldpos)
		localplayer:set_freeze_momentum(false) 
		localplayer:set_config_flag(292,false)
		return
	end
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(pos)
	else
		localplayer:get_current_vehicle():set_position(pos)
	end
end
local function TeleportClosestVehicleToPlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local veh = localplayer:get_nearest_vehicle()
	if not veh or localplayer:get_nearest_vehicle()==localplayer:get_current_vehicle() then return end
	veh:set_position(ply:get_position()+vector3(2*disX, 2*disY, disZ))
end
local function TeleportPedsToPlayer(ply, dead)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	for ped in replayinterface.get_peds() do
		if player_is_npc(ped) then
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
		if not player_get_vehicle(veh) then
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
		if not currentvehicle or currentvehicle ~= veh then
		if not player_get_vehicle(veh) then
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
		if not player_get_vehicle(veh) then
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

-- Player option 
local selectedplayer = -1
 
local function f_p_o(ply_id, ply, ply_name) -- Format Player Option Text
	-- log("z_player_actions.lua > f_p_o > ply_id: "..tostring(ply_id).." | ply: "..tostring(ply).." | ply_name: "..tostring(ply_name))
	if ply_id == nil or ply == nil then return end
	local text = ""
	-- if ply == localplayer then
		-- text = text.."YOU"
	-- else
		text = text..""..dump(ply_name)..""
	-- end
	if player_is_modder(ply) then
		text = text.." *"
	end
	text = text.." ("..tostring(ply_id)..")"
	-- Is In GodMode, if not then Player Health & Armor
	if ply:get_godmode() then
		text = text.." | GOD"
	else
		text = text.." |"..string.format("%3.0f",(ply:get_health()/ply:get_max_health())*100).."%"--" / "..string.format("%2.0f",ply:get_armour()*2).."%"
	end

	if ply:is_in_vehicle() then
		local veh = ply:get_current_vehicle()
		if veh ~= nil then
			local veh_hash = veh:get_model_hash()
			if veh_hash ~= nil then
				local veh_name = VehicleHashName[veh_hash]
				if veh_name ~= nil then
					text = text.." | "..veh_name
				else
					text = text.." | 🚗"
				end
			else
				text = text.." | 🚗"
			end
			if veh:get_godmode() then
				text = text.."*"
			end
		else
			text = text.." | 🚗"
		end
	else 
		text = text.." | 🚶"
	end
	local wanted_level = ply:get_wanted_level()
	-- Player Wanted Level
	if wanted_level > 0 then text = text.." | "..wanted_level.."✰" end

	-- Player's Distance From You
	local mypos = localplayer:get_position()
	local plypos = ply:get_position()
	local distance = math.floor(math_distance2(plypos, mypos))
	-- print(text.." mypos: "..tostring(mypos) .. " ||| plypos: " .. tostring(plypos))
	if distance > 0 then text = text.." | "..distance.."m" end
	
	return text
end
 
local function add_player_option(submenu, ply_id, ply, ply_name)
	-- log("z_player_actions.lua > add_player_option > ply_id: "..dump(ply_id).." | ply: "..dump(ply).." | ply_name: "..dump(ply_name))
	local text = f_p_o(ply_id, ply, ply_name)
	if text == nil then return end
	local d = ply_id
 
	if (submenu ~= nil) then
		submenu:add_bare_item(text, function() return f_p_o(ply_id, ply, ply_name).."|"..(selectedplayer == ply_id and "✓" or "□")  end, function() selectedplayer = d end, null, null)
	else
		menu.add_bare_item(text, function() return f_p_o(ply_id, ply, ply_name).."|"..(selectedplayer == ply_id and "✓" or "□") end, function() selectedplayer = d end, null, null)
	end
end
 
local function add_info_option(submenu, text, funcget, forceplayer)
	local func = function() 
		local ply = player.get_player_ped(forceplayer and forceplayer or selectedplayer)
		if not ply then return text..": **Invalid**" end
		return text..": "..funcget(ply)
	end
	if (submenu ~= nil) then
		submenu:add_bare_item(text..": ", func, null, null, null)
	else
		menu.add_bare_item(text..": ", func, null, null, null)
	end
end

-- TrollLoop
local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
local function switch()
	if selectedplayer==nil then return end
	if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 8192)
		globals.set_int(CrVh+27+6, selectedplayer)
		sleep(1.0)
		menu.send_key_press(155)
	else
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	end
end
if Exploop then menu.remove_hotkey(Exploop) end
local Exploop=nil
if enable then
	Exploop = menu.register_hotkey(TL, switch)
end
local function LooP(e)
	if e then
		Exploop = menu.register_hotkey(TL, switch)
	else
		menu.remove_hotkey(Exploop)
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
		globals.set_int(CrVh+27+6, 0)
	end
end
-- menu.add_toggle("TrollLoop(NUM9)", function()
-- 	return enable
-- end, function()
-- 	enable = not enable 
-- 	LooP(enable)
-- end)

-- Building Player List
local playerlist = menu.add_submenu("--- PLAYER LIST --- | "..player.get_number_of_players())
local adm=""
local function BuildListOld()
	Text(playerlist, "--- "..player.get_number_of_players().." Players ---")

	local players = {}

	-- WITHOUT DISTANCE --- 
	for i = 0, 31 do
		local ply = player.get_player_ped(i)
		if ply then players[i] = {ply, player.get_player_name(i)} end
	end
	-- table.sort(players, function(a,b) return a[2] < b[2] end)
	-- print(table_dump(players))
	for id, player in pairs(players) do
		add_player_option(playerlist, id, player[1], player[2])
		for x=1, #RockstarStaff do
			if player[2]==RockstarStaff[x] then
				adm="[ Admin>"..admin.." ]"
				ondetect()
			end
		end
	end
	-- WITHOUT DISTANCE --- 
	-- --- WITH DISTANCE	 
	-- local PlayersDistances = {}
	-- local SortedPlayers = {}
	-- local _i = 0
	-- local mypos = localplayer:get_position()
	-- print("mypos: "..tostring(mypos))
	-- for i = 0, 31 do
	-- 	local ply = player.get_player_ped(i)
	-- 	if ply then 
	-- 		local plypos = ply:get_position()
	-- 		print("plypos ".._i.." is at "..tostring(plypos))
	-- 		PlayersDistances[_i] = {ply, math_distance2(plypos, mypos)}
	-- 		_i = _i + 1
	-- 	end
	-- end
	-- log("z_player_actions.lua > PlayersDistances: "..dump(PlayersDistances))
	-- if _i == nil then return end
	-- for c = 1, _i do
	-- 	log("z_player_actions.lua > (for c = 1, _i do) c: " ..dump(c).." | _i: "..dump(_i))
	-- 	local smallest = {nil, nil}
	-- 	for plyd = 1, #PlayersDistances do
	-- 		log("z_player_actions.lua > (for plyd = 1, #PlayersDistances do) c: " ..dump(plyd))
	-- 		if not array_contains(SortedPlayers, PlayersDistances[plyd][1]) then 
	-- 			if smallest[2] == nil or PlayersDistances[plyd][2] <= smallest[2] then
	-- 				smallest = PlayersDistances[plyd]
	-- 			end
	-- 		end
	-- 	end
	-- 	SortedPlayers[c] = smallest[1]
	-- end
	-- log("z_player_actions.lua > SortedPlayers: "..dump(SortedPlayers))
	-- for ply = 0, #SortedPlayers do
	-- 	-- log("z_player_actions.lua > (for ply = 0, #SortedPlayers do) ply: " ..dump(ply).." | SortedPlayers[ply]: "..dump(nil))
	-- 	add_player_option(playerlist, ply, SortedPlayers[ply], player.get_player_name(ply))
	-- 	admin=player.get_player_name(ply)
	-- 	for x=1, #RockstarStaff do
	-- 		if admin==RockstarStaff[x] then
	-- 			adm="[ Admin>"..admin.." ]"
	-- 			ondetect()
	-- 		end
	-- 	end
	-- end
	-- --- WITH DISTANCE
	log("z_player_actions.lua > added players")
	-- test

	Text(playerlist, "    ---End---"..adm)
	playerlist:add_array_item("On Admin Detection>", {"Do a roundabout", "Change Session", "Empty Session"}, function() return Tsk end,
	function(d) Tsk=d ondetect() end)
 	add_info_option(playerlist, "Selected Player>", function() return player.get_player_name(selectedplayer) end)
	
	-- Troll Options
	local LTr
	local function LTro()
		if LTr == nil then
			return 1
		else
			return LTr
		end
	end
	local TrOp = {}
	TrOp[1] = "Explosion"
	TrOp[2] = "Anti-Gravity"
	TrOp[3] = "Slamming"
	playerlist:add_array_item("Troll by>", TrOp, function() return LTro() end, function(Trll)
		LTr=Trll
		if Trll == 1 then
			ExplodePlayer(player.get_player_ped(selectedplayer))
		elseif Trll == 2 then
			LaunchPlayer(player.get_player_ped(selectedplayer))
		else
			SlamPlayer(player.get_player_ped(selectedplayer))
		end
	end)
	
	--Teleport Options
	playerlist:add_int_range("Peek for(seconds)", 2, 1, 10, function() return 2 end, function(n) TeleportToPlayer(player.get_player_ped(selectedplayer), n) end)
	
	local LGf
	local function LsGft()
		if LGf == nil then
			return 2
		else
			return LGf
		end
	end
	local OlPos
	local Used
 	local TPOp = {}
	TPOp[1] = "Yourself"
	TPOp[2] = "Closest Vehicle"
	TPOp[3] = "Peds"
	playerlist:add_array_item("Send to player>", TPOp, function() return LsGft() end, function(LsTP)
		LGf=LsTP
		if LsTP == 1 then
			if Used==1 or Used==nil then
				OlPos=localplayer:get_position()
				Used=0
			end
			TeleportToPlayer(player.get_player_ped(selectedplayer))
		elseif LsTP == 2 then
			TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer))
		elseif LsTP == 3 then 
			TeleportPedsToPlayer(player.get_player_ped(selectedplayer))
		end
	end)
	playerlist:add_action("Teleport back", function()
		if OlPos~=nil then
			if not localplayer:is_in_vehicle() then
				localplayer:set_position(OlPos)
			else
				localplayer:get_current_vehicle():set_position(Olpos)
			end
			if localplayer:get_position()==OlPos then
				Used=1
			end
		end
	end)


local moreinfo=playerlist:add_submenu("More info on player")
	local function ply() return player.get_player_ped(selectedplayer) end
	local TR={} TR[1]="Yes" TR[0]="No"
	moreinfo:add_float_range("MaxHealth", 0, 0, 0, function()
		if ply() then return ply():get_max_health() end end, function() end)
	moreinfo:add_float_range("Health", 0, 0, 0, function()
		if ply() then return ply():get_health() end end, function() end)
	moreinfo:add_float_range("Armour", 0, 0, 0, function()
		if ply() then return ply():get_armour() end end, function() end)
	moreinfo:add_float_range("Run Speed", 0, 0, 0, function()
		if ply() then return ply():get_run_speed() end end, function() end)
	moreinfo:add_float_range("Swim Speed", 0, 0, 0, function()
		if ply() then return ply():get_swim_speed() end end, function() end)
	moreinfo:add_int_range("Wanted level", 0, 0, 0, function()
		if ply() then return ply():get_wanted_level() end end, function() end)
	moreinfo:add_array_item("Can be targeted>", TR, function()
		if ply() and ply():get_can_be_targeted() then return 1 else return 0 end end, function() end)
	moreinfo:add_array_item("No ragdoll>", TR, function()
		if ply() and ply():get_no_ragdoll() then return 1 else return 0 end end, function() end)
		
	moreinfo:add_action("            Vehicle Info(close range only)", function() end)
	moreinfo:add_array_item("Seatbelt>", TR, function()
		if ply() and ply():get_seatbelt() then return 1 else return 0 end end, function() end)
	moreinfo:add_float_range("Gravity", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_gravity() end end, function() end)
	moreinfo:add_float_range("Accelaration", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_acceleration() end end, function() end)
	moreinfo:add_float_range("Max Speed", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_max_speed() end end, function() end)
	moreinfo:add_float_range("Mass", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_mass() end end, function() end)
	moreinfo:add_int_range("Bomb Count>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_bomb_count() end end, function() end)
	moreinfo:add_int_range("CounterMeasure Count>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_countermeasure_count() end end, function() end)
	moreinfo:add_float_range("Boost amount>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_boost() end end, function() end)
	moreinfo:add_array_item("Boost is active>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_boost_active() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Can be targeted>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_can_be_targeted() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Visible Damage>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_can_be_visibly_damaged() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Window Damage>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_window_collisions_disabled() then return 0 else return 1 end end end, function() end)
		
	moreinfo:add_action("                     Weapon Info", function() end)
		
	moreinfo:add_array_item("Infinite Ammo>", TR, function()
		if ply() and ply():get_infinite_ammo() then return 1 else return 0 end end, function() end)
	moreinfo:add_array_item("Infinite Clip>", TR, function()
		if ply() and ply():get_infinite_clip() then return 1 else return 0 end end, function() end)
	moreinfo:add_int_range("Current Ammo", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_current_ammo() end end, function() end)
	moreinfo:add_float_range("Reload time multiplier", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_reload_time_multiplier() end end, function() end)
	moreinfo:add_float_range("Time between shots", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_time_between_shots() end end, function() end)
	moreinfo:add_float_range("Range", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_range() end end, function() end)
	moreinfo:add_float_range("Lock-On range", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_lock_on_range() end end, function() end)
	moreinfo:add_float_range("Ped Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_ped_force() end end, function() end)
	moreinfo:add_float_range("Vehicle Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_vehicle_force() end end, function() end)
	moreinfo:add_float_range("Heli Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_heli_force() end end, function() end)
	moreinfo:add_int_range("Fire Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_fire_type() end end, function() end)
	moreinfo:add_int_range("Explosion Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_explosion_type() end end, function() end)
	moreinfo:add_int_range("Damage Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_damage_type() end end, function() end)


local playerflags=playerlist:add_submenu("Player Flags")
	local function ply() return player.get_player_ped(selectedplayer) end
	local function hasConfigFlag(flag)
		_player = ply()
		if _player == nil or flag == nil then return false end
		return _player:get_config_flag(flag)
	end
	local function setConfigFlag(flag, v)
		_player = ply()
		if _player ~= nil and flag ~= nil then _player:set_config_flag(flag, v) end
	end
	local function add_flag_toggle(name, flag)
		if name == nil or flag == nil then return end
		playerflags:add_toggle(name, function() return hasConfigFlag(flag) end, function(v) setConfigFlag(flag, v) end)
	end
	for key, value in pairs(PedConfigFlag) do
		add_flag_toggle(""..key, value)
	end

local moreinfo=playerlist:add_submenu("More info on player")
	local function ply() return player.get_player_ped(selectedplayer) end
	local TR={} TR[1]="Yes" TR[0]="No"
	moreinfo:add_float_range("MaxHealth", 0, 0, 0, function()
		if ply() then return ply():get_max_health() end end, function() end)
	moreinfo:add_float_range("Health", 0, 0, 0, function()
		if ply() then return ply():get_health() end end, function() end)
	moreinfo:add_float_range("Armour", 0, 0, 0, function()
		if ply() then return ply():get_armour() end end, function() end)
	moreinfo:add_float_range("Run Speed", 0, 0, 0, function()
		if ply() then return ply():get_run_speed() end end, function() end)
	moreinfo:add_float_range("Swim Speed", 0, 0, 0, function()
		if ply() then return ply():get_swim_speed() end end, function() end)
	moreinfo:add_int_range("Wanted level", 0, 0, 0, function()
		if ply() then return ply():get_wanted_level() end end, function() end)
	moreinfo:add_array_item("Can be targeted>", TR, function()
		if ply() and ply():get_can_be_targeted() then return 1 else return 0 end end, function() end)
	moreinfo:add_array_item("No ragdoll>", TR, function()
		if ply() and ply():get_no_ragdoll() then return 1 else return 0 end end, function() end)
		
	moreinfo:add_action("            Vehicle Info(close range only)", function() end)
	moreinfo:add_toggle("Seatbelt>", function() return ply() and ply():get_seatbelt() end, function() end)
	moreinfo:add_float_range("Gravity", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_gravity() end end, function() end)
	moreinfo:add_float_range("Accelaration", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_acceleration() end end, function() end)
	moreinfo:add_float_range("Max Speed", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_max_speed() end end, function() end)
	moreinfo:add_float_range("Mass", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_mass() end end, function() end)
	moreinfo:add_int_range("Bomb Count>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_bomb_count() end end, function() end)
	moreinfo:add_int_range("CounterMeasure Count>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_countermeasure_count() end end, function() end)
	moreinfo:add_float_range("Boost amount>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_boost() end end, function() end)
	moreinfo:add_array_item("Boost is active>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_boost_active() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Can be targeted>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_can_be_targeted() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Visible Damage>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_can_be_visibly_damaged() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Window Damage>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_window_collisions_disabled() then return 0 else return 1 end end end, function() end)
		
	moreinfo:add_action("                     Weapon Info", function() end)
		
	moreinfo:add_array_item("Infinite Ammo>", TR, function()
		if ply() and ply():get_infinite_ammo() then return 1 else return 0 end end, function() end)
	moreinfo:add_array_item("Infinite Clip>", TR, function()
		if ply() and ply():get_infinite_clip() then return 1 else return 0 end end, function() end)
	moreinfo:add_int_range("Current Ammo", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_current_ammo() end end, function() end)
	moreinfo:add_float_range("Reload time multiplier", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_reload_time_multiplier() end end, function() end)
	moreinfo:add_float_range("Time between shots", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_time_between_shots() end end, function() end)
	moreinfo:add_float_range("Range", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_range() end end, function() end)
	moreinfo:add_float_range("Lock-On range", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_lock_on_range() end end, function() end)
	moreinfo:add_float_range("Ped Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_ped_force() end end, function() end)
	moreinfo:add_float_range("Vehicle Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_vehicle_force() end end, function() end)
	moreinfo:add_float_range("Heli Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_heli_force() end end, function() end)
	moreinfo:add_int_range("Fire Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_fire_type() end end, function() end)
	moreinfo:add_int_range("Explosion Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_explosion_type() end end, function() end)
	moreinfo:add_int_range("Damage Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_damage_type() end end, function() end)


local pedactions=playerlist:add_submenu("Ped Actions")
	local function ply() return player.get_player_ped(selectedplayer) end
 pedactions:add_float_range("armour",10,0,500,function() return ply():get_armour() 		    end, function(v) ply():set_armour(v) end)
 	pedactions:add_toggle("can_be_targeted",function() return ply():get_can_be_targeted()   end, function(v) ply():set_can_be_targeted(v) end)
	pedactions:add_toggle("freeze_momentum",function() return ply():get_freeze_momentum()   end, function(v) ply():set_freeze_momentum(v) end)
	pedactions:add_toggle("godmode", 		function() return ply():get_godmode()           end, function(v) ply():set_godmode(v) end)
 pedactions:add_float_range("health",10,0,0,function() return ply():get_health()		    end, function(v) ply():set_health(v) end)
 pedactions:add_float_range("hurt_health",10,0,0,function() return ply():get_hurt_health()end, function(v) ply():set_hurt_health(v) end)
	pedactions:add_toggle("infinite_ammo", 	function() return ply():get_infinite_ammo()     end, function(v) ply():set_infinite_ammo(v) end)
	pedactions:add_toggle("infinite_clip", 	function() return ply():get_infinite_clip()     end, function(v) ply():set_infinite_clip(v) end)
 pedactions:add_float_range("max_health",10,0,0,function() return ply():get_max_health()	end, function(v) ply():set_max_health(v) end)
	pedactions:add_toggle("no_ragdoll", 	function() return ply():get_no_ragdoll()        end, function(v) ply():set_no_ragdoll(v) end)
 -- pedactions.add_bare_item("position", function() return "Position | "..player_position_string(ply()) end,function()end,function()end,function()end)
 -- pedactions:add_toggle("reset_flag", 	function() return ply():get_reset_flag()		end, function(v) ply():set_reset_flag(v) end)
 -- pedactions.add_bare_item("rotation", function() return "Rotation | "..player_rotation_string(ply()) end,function()end,function()end,function()end)
 pedactions:add_float_range("run_speed",.1,0,0,function() return ply():get_run_speed()		end, function(v) ply():set_run_speed(v) end)
 pedactions:add_float_range("swim_speed",.1,0,0,function() return ply():get_swim_speed()	end, function(v) ply():set_swim_speed(v) end)
 pedactions:add_int_range("wallet",1,0,0,function() return ply():get_wallet()	end, function(v) ply():set_wallet(v) end)
 pedactions:add_int_range("wanted_level",1,1,5,function() return ply():get_wanted_level()	end, function(v) ply():set_wanted_level(v) end)
 -- pedactions:add_toggle("weapon_enabled", function() return ply():get_weapon_enabled() end, function(v) ply():set_weapon_enabled(v) end)
end

-- List Updater
menu.add_bare_item("Reload Player List", function() playerlist:clear() BuildListOld() end, null, null, null)

print("=== z_player_actions END ===")