local DDCO=1963625		--v1.60 Doomsday Player Cut offset
local APCO=1937644		--v1.60 Apartment Player Cut offset

local function mpx()
	return stats.get_int("MPPLY_LAST_MP_CHAR")
end

local DDSt = menu.add_submenu("D'day")
 
local DDHeist = {}
DDHeist[1] = "Data Breaches"
DDHeist[2] = "Bogdan Problem"
DDHeist[3] = "Doomsday Scenario"
DDSt:add_array_item("Setup D'Day", DDHeist, function() return 3 end, function(ActNum)
	if ActNum == 1 then
		DProg = 503
		DStat = 229383
	elseif ActNum == 2 then
		DProg = 240
		DStat = 229378
	else
		DProg = 16368
		DStat = 229380
	end
		stats.set_int("MP"..mpx().."_GANGOPS_FLOW_MISSION_PROG", DProg)
		stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", DStat)
		stats.set_int("MP"..mpx().."_GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
 
DDC1 = 0
DDC2 = 0
DDC3 = 0
DDC4 = 0

if globals.get_int(DDCO+1) <= 10000 then
	DDSt:add_int_range("Doomsday Player 1", 5.0, 15, 100, function() return globals.get_int(DDCO+1) end, function(p1)
		DDC1=p1
	end)
	DDSt:add_int_range("Doomsday Player 2", 5.0, 15, 100, function() return globals.get_int(DDCO+2) end, function(p2)
		DDC2=p2
	end)
	DDSt:add_int_range("Doomsday Player 3", 5.0, 15, 100, function() return globals.get_int(DDCO+3) end, function(p3)
		DDC3=p3
	end)
	DDSt:add_int_range("Doomsday Player 4", 5.0, 15, 100, function() return globals.get_int(DDCO+4) end, function(p4)
		DDC4=p4
	end)
	local DDHE = {}
	DDHE[1] = "Selected"
	DDHE[2] = "All 100%"
	DDHE[3] = "Others 100%"
	DDHE[4] = "Others 85%"
	DDSt:add_array_item("                        ---[[Set]]---", DDHE, function() return 1 end, function(DDc)
		if DDc == 1 then goto ONT
		elseif DDc == 2 then
			DDC1, DDC2, DDC3, DDC4 = 100, 100, 100, 100
		elseif DDc == 3 then
			DDC1 = 15
			DDC2, DDC3, DDC4 = 100, 100, 100
		elseif DDc == 4 then
			DDC1 = 15
			DDC2, DDC3, DDC4 = 85, 85, 85
		end
		::ONT::
		globals.set_int(DDCO+1, DDC1)
		globals.set_int(DDCO+2, DDC2)
		if globals.get_int(DDCO+3) == nil then
			goto CT
		elseif globals.get_int(DDCO+3) >= 0 then
			globals.set_int(DDCO+3, DDC3)
			if globals.get_int(DDCO+4) == nil then
				goto CT
			elseif globals.get_int(DDCO+4) >= 0 then
				globals.set_int(DDCO+4, DDC4)
			end
		end
		::CT::
	end)
end

local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() <= 3 then
		return false else return true
	end
end
local POS={}
POS[1]="Underground"
POS[2]="On Yourself"
DDSt:add_array_item("Drop NPCs to ", POS, function()
if LPos then return LPos else return 1 end end, function(ps)
LPos=ps for ped in replayinterface.get_peds() do
	if IsNPC(ped) then
		if not ped:is_in_vehicle() then
			if ps==1 then ped:set_position(vector3(ped:get_position().y-20))
			else ped:set_position(localplayer:get_position()) end
			ped:set_armour(0)
		else
			ped:get_current_vehicle():set_acceleration(0)
		end
	end
		end
end)

DDSt:add_action("Kill all NPCs", function()
menu.kill_all_npcs() end)

DDSt:add_action("Fix vehicles", function()
	for veh in replayinterface.get_vehicles() do
		if veh:get_acceleration()==0 then veh:set_acceleration(0.34) end
		menu.heal_vehicle()
		veh:set_bulletproof_tires(true)
	end
end)


local AptH = menu.add_submenu("Apartment Heists")
AptH:add_action("Go to Current Heist Finale", function()
		stats.set_int("MP"..mpx().."_HEIST_PLANNING_STAGE", -1)
end)
 
 
--Text("         ((((HEIST CUT - Set to change))))")
if globals.get_int(APCO+1) <= 10000 then
	AC1 = 0
	AC2 = 0
	AC3 = 0
	AC4 = 0
 
	AptH:add_int_range("Apt Player 1", 5.0, 15, 100, function() 
		return globals.get_int(APCO+1)
	end, function(AP1Cut)
		AC1 = AP1Cut
	end)
 
	AptH:add_int_range("Apt Player 2", 5.0, 15, 100, function() 
		return globals.get_int(APCO+2)
	end, function(AP2Cut)
		AC2 = AP2Cut
	end)
 
	AptH:add_int_range("Apt Player 3", 5.0, 15, 100, function() 
		return globals.get_int(APCO+3)
	end, function(AP3Cut)
		AC3 = AP3Cut
	end)
 
	AptH:add_int_range("Apt Player 4", 5.0, 15, 100, function() 
		return globals.get_int(APCO+4)
	end, function(AP4Cut)
		AC4 = AP4Cut
	end)
 	local H4C1 = 15
	local H4C2 = 15
	local H4C3 = 15
	local H4C4 = 15
	local APHE = {}
	APHE[1] = "Selected"
	APHE[2] = "All 100%"
	APHE[3] = "Others 100%"
	APHE[4] = "Others 85%"
	AptH:add_array_item("                 ---[[Set]]---", APHE, function() return 1 end, function(ApC)
		if ApC == 1 then goto CON
		elseif ApC == 2 then
			AC1, AC2, AC3, AC4 = 100, 100, 100, 100
		elseif ApC == 3 then
			AC1 = 15
			AC2, AC3, AC4 = 100, 100, 100
		elseif ApC == 4 then
			AC1 = 15
			AC2, AC3, AC4 = 85, 85, 85
		end
		::CON::
		globals.set_int(APCO+1, AC1)
		globals.set_int(APCO+2, AC2)
		globals.set_int(APCO+3, AC3)
		globals.set_int(APCO+4, AC4)
	end)
end

local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() <= 3 then
		return false else return true
	end
end
local POS={}
POS[1]="Underground"
POS[2]="OnYourself"
AptH:add_array_item("Drop NPCs to ", POS, function()
if LPos then return LPos else return 1 end end, function(ps)
LPos=ps for ped in replayinterface.get_peds() do
	if IsNPC(ped) then
		if not ped:is_in_vehicle() then
			if ps==1 then ped:set_position(vector3(ped:get_position().y-20))
			else ped:set_position(localplayer:get_position()) end
			ped:set_armour(0)
		else
			ped:get_current_vehicle():set_acceleration(0)
		end
	end
		end
end)

AptH:add_action("Fix vehicles", function()
	for veh in replayinterface.get_vehicles() do
		if veh:get_acceleration()==0 then veh:set_acceleration(0.34) end
		menu.heal_vehicle()
		veh:set_bulletproof_tires(true)
	end
end)

AptH:add_action("Kill all NPCs", function()
menu.kill_all_npcs() end)