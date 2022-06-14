local enable = false		--QuickFire default(on/off>true/false)
local enable2 = true		--QuickTP Toggle function-inside WeaponCD&Extras(enable/disable>true/false)
local enable4 = true		--VehAcclTweaks

local RefB=69				--Refill Boost Hotkey, E key, =nil to disable
local RefB2=88				--Refill Boost Hotkey, X key, =nil to disable
local GHk=144				--Godmode+ toggle hot key
local UOR=120				--UndeadOffradar Toggle, F9
local RefIn=107				--Refill Inventory, Numpad+
local QTP=110				--QuickTP Toggle, Numpad Delete
	local QTPf=38			--	TelePort Forward, Up Arrow key
	local QTPu=39			--	TelePort Upward, Right Arrow key
	local QTPd=37			--	TelePort Downward, Left Arrow key
local WepTw=nil 			--Weapon maxTweaks Hotkey, =nil to disable & ='keycode' to enable
local VehTw=192				--Vehicle Tweaks Toggle, `key(~)
	local VDmg=114			--No scratch hotkey, F3

local SMCD=262145+31345		--Security Missions
local PHCD=262145+31423		--Payphone Hit


local function mpx() return stats.get_int("MPPLY_LAST_MP_CHAR") end

WepCD=menu.add_submenu("Weapon CD and extras")
local YN={} YN[1]="Yes" YN[0]="No"
WepCD:add_array_item("CanYouStartEngine?", YN, function() if localplayer:get_config_flag(429) then return 0 else return 1 end end, function(V)
	if V==0 then V=true else V=false end localplayer:set_config_flag(429, V)
end)

local original_max_health = 0.0
local function GetUndeadOffradar()
	if localplayer == nil then
		return nil
	end
	max_health = localplayer:get_max_health()
	return max_health < 100.0
end
local function SetUndeadOffradar(value)
	if value == nil or localplayer == nil then
		return
	end
	if value then
		max_health = localplayer:get_max_health()
		if max_health >= 100.0 then
			original_max_health = max_health
		end
		localplayer:set_max_health(0.0)
	else
		if original_max_health >= 100 then
			localplayer:set_max_health(original_max_health)
		else
			localplayer:set_max_health(328.0)
		end
	end
end
WepCD:add_toggle("Undead offradar", GetUndeadOffradar, SetUndeadOffradar)
local function ToggleUndeadOffradar()
	value = GetUndeadOffradar()
	if value ~= nil then
		SetUndeadOffradar(not value)
	end
end
menu.register_hotkey(UOR, ToggleUndeadOffradar)

local bT,WR,LR=0,0,0
local function OnWeaponChanged(oldWeapon, newWeapon)
	if newWeapon ~= nil then NAME=localplayer:get_current_weapon():get_name_hash()
		if NAME==joaat("weapon_hominglauncher") then
			newWeapon:set_range(1500)
		elseif NAME==joaat("weapon_raypistol") then
			newWeapon:set_heli_force(1075)
			newWeapon:set_ped_force(63)
			newWeapon:set_vehicle_force(1075) end
		if bT==0 then
			if NAME==joaat("weapon_stungun_mp") then
				newWeapon:set_time_between_shots(1)
			elseif NAME==joaat("weapon_raypistol") then
				newWeapon:set_time_between_shots(0.5)
			end
		else newWeapon:set_time_between_shots(bT) end
		if WR~=0 then newWeapon:set_range(WR) else
			if NAME==joaat("weapon_raypistol") then
				newWeapon:set_range(1200)
			elseif NAME==joaat("weapon_stungun_mp") then
				newWeapon:set_range(1000)
			end end
		if LR==0 then
			if NAME==joaat("weapon_hominglauncher") then
				newWeapon:set_lock_on_range(1500) end
			else newWeapon:set_lock_on_range(LR) end
	end
end
------
if WCD then menu.remove_callback(WCD) end
local WCD=nil
if enable then
	local WCD = menu.register_callback('OnWeaponChanged', OnWeaponChanged)
end

local function WpCD(e)
	if e then
		WCD = menu.register_callback('OnWeaponChanged', OnWeaponChanged)
	else
		menu.remove_callback(WCD)
		bT,WR,LR=0,0,0
	end
end
WepCD:add_toggle("QuickFire-Atmzer,StnGun/Auto{}", function()
	return enable
end, function()
	enable = not enable 
	WpCD(enable)
end)

WepCD:add_float_range("{}Time Between Shots for all", 0.1, 0, 4, function()
return localplayer:get_current_weapon():get_time_between_shots() end, function(BtSh)
	bT=BtSh
	localplayer:get_current_weapon():set_time_between_shots(BtSh) end)
WepCD:add_float_range("{}Weapon Range for all", 10, 0, 1500, function()
return localplayer:get_current_weapon():get_range() end, function(range)
	WR=range
	localplayer:get_current_weapon():set_range(range) end)
WepCD:add_float_range("{}Lock-On Range", 10, 0, 1500, function()
return localplayer:get_current_weapon():get_lock_on_range() end, function(Lock)
	LR=Lock
	localplayer:get_current_weapon():set_lock_on_range(Lock) end)

local function mxwep()
	localplayer:get_current_weapon():set_heli_force(60000)
	localplayer:get_current_weapon():set_ped_force(60000)
	localplayer:get_current_weapon():set_vehicle_force(60000)
	localplayer:get_current_weapon():set_time_between_shots(0.1)
	localplayer:get_current_weapon():set_range(2000)
	localplayer:get_current_weapon():set_lock_on_range(2000)
	localplayer:get_current_weapon():set_spread(0.2)
end
if WepTw~=nil then menu.register_hotkey(WepTw, mxwep) end
WepCD:add_action("Max All weaponstats", function() mxwep() end)

local TPF, TPU, TPD = nil, nil, nil
local enable3 = false
local function TPup()
	if not enable3 then return end
	local newpos = localplayer:get_position() + vector3(0,0,2.5)
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		localplayer:get_current_vehicle():set_position(newpos)
	end
end
local function TPdn()
	if not enable3 then return end
	local newpos = localplayer:get_position() + vector3(0,0,-2.5)
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		localplayer:get_current_vehicle():set_position(newpos)
	end
end

local function TPfr()
	if not enable3 then return end
	menu.teleport_forward()
end
local function TPHk(e)
	if e then
		TPD = menu.register_hotkey(QTPd, TPdn)
		TPF = menu.register_hotkey(QTPf, TPfr)
		TPU = menu.register_hotkey(QTPu, TPup)
	else
		menu.remove_hotkey(TPD)
		menu.remove_hotkey(TPF)
		menu.remove_hotkey(TPU)
	end
end
------
local function TelePort()
	enable3 = not enable3 
	TPHk(enable3)
end
if TPH then menu.remove_hotkey(TPH) end
local TPH=nil
if enable2 then
	TPH = menu.register_hotkey(QTP, TelePort)
end
local function TPHkS(e)
	if e then
		TPH = menu.register_hotkey(QTP, TelePort)
	else
		if TPD == nil then
			menu.remove_hotkey(TPH)
		else
			menu.remove_hotkey(TPD)
			menu.remove_hotkey(TPF)
			menu.remove_hotkey(TPU)
			menu.remove_hotkey(TPH)
		end
	end
end
WepCD:add_action("                 _________Extras_________", function() end)
WepCD:add_toggle("QuickTP(NumDel)", function() --Menu Toggle- Add/Remove Hotkey
	return enable2
end, function()
	enable2 = not enable2
	TPHkS(enable2)
end)

WepCD:add_action("Make Nightclub Popular", function()
		stats.set_int("MP"..mpx().."_club_popularity", 1000)
end)

local OlA,OlG,OlVeh=nil,nil,nil
local function VehicleTweaks()
	if localplayer:is_in_vehicle() then
		OlVeh=localplayer:get_current_vehicle()
		if localplayer:get_current_vehicle():get_acceleration() == 0.47 then
			if OlA then localplayer:get_current_vehicle():set_acceleration(OlA) end
			if OlG then localplayer:get_current_vehicle():set_gravity(OlG) end
			if not OlVeh:get_can_be_visibly_damaged() then
				OlVeh:set_can_be_visibly_damaged(true) end
			if OlVeh:get_window_collisions_disabled() then
				OlVeh:set_window_collisions_disabled(false) end
			if OlVeh:get_godmode() then  OlVeh:set_godmode(false) end
			OlA,OlG,OlVeh=nil,nil,nil
		elseif localplayer:get_current_vehicle():get_acceleration() <= 0.47 and localplayer:get_current_vehicle():get_acceleration() >= 0.1 then
			OlA = localplayer:get_current_vehicle():get_acceleration()
			OlG = localplayer:get_current_vehicle():get_gravity()
			OlV = localplayer:get_current_vehicle():get_can_be_visibly_damaged()
			localplayer:get_current_vehicle():set_acceleration(0.47)
			localplayer:get_current_vehicle():set_gravity(14.8)
			localplayer:get_current_vehicle():set_max_speed(220)
		end
		if localplayer:get_current_vehicle():get_acceleration() == 40 then
			localplayer:get_current_vehicle():set_acceleration(OlA)
			if not OlVeh:get_can_be_visibly_damaged() then
				OlVeh:set_can_be_visibly_damaged(true) end
			if OlVeh:get_window_collisions_disabled() then
				OlVeh:set_window_collisions_disabled(false) end
			if OlVeh:get_godmode() then  OlVeh:set_godmode(false) end
			OlA,OlG,OlVeh=nil,nil,nil
		elseif  localplayer:get_current_vehicle():get_acceleration() <= 40 and localplayer:get_current_vehicle():get_acceleration() >= 5 then
			OlA = localplayer:get_current_vehicle():get_acceleration()
			localplayer:get_current_vehicle():set_acceleration(40)
			localplayer:get_current_vehicle():set_max_speed(220)
		end
	else
		if not OlVeh then return end
		if OlA then OlVeh:set_acceleration(OlA) end
		if OlG then OlVeh:set_gravity(OlG) end
		if not OlVeh:get_can_be_visibly_damaged() then
			OlVeh:set_can_be_visibly_damaged(true) end
		if OlVeh:get_window_collisions_disabled() then
			OlVeh:set_window_collisions_disabled(false) end
		if OlVeh:get_godmode() then  OlVeh:set_godmode(false) end
		OlA,OlG,OlVeh=nil,nil,nil
	end
end
if enable4 then
	menu.register_hotkey(VehTw, VehicleTweaks)
end

local function RfB()
	if localplayer:is_in_vehicle() then
		a=0
		while a==0 do
			if localplayer:get_current_vehicle():get_boost()==0 then
				menu.refill_boost()
				localplayer:get_current_vehicle():set_boost_enabled(true)
			else
				local Start = localplayer:get_current_vehicle():get_boost()
				sleep(0.05)
				local End = localplayer:get_current_vehicle():get_boost()
				if (End-Start) >= 0 then
					menu.refill_boost()
					localplayer:get_current_vehicle():set_boost_enabled(true)
				end
			end
			a=1
		end
	end
end
if RefB~=nil then menu.register_hotkey(RefB, RfB) end
if RefB2~=nil then menu.register_hotkey(RefB2, RfB) end

local function GD(GOD)
	if GOD then
		if not localplayer:get_godmode() then localplayer:set_godmode(true) end
		if not localplayer:get_no_ragdoll() then localplayer:set_no_ragdoll(true) end
		if not localplayer:get_seatbelt() then localplayer:set_seatbelt(true) end
	else
		if localplayer:get_godmode() then localplayer:set_godmode(false) end
		if localplayer:get_no_ragdoll() then localplayer:set_no_ragdoll(false) end
		if localplayer:get_seatbelt() then localplayer:set_seatbelt(false) end
	end
end
if GHk then menu.register_hotkey(GHk, function() GOD = not GOD GD(GOD) end) end


local function NoScratch()
	if localplayer:is_in_vehicle() then
		OlVeh=localplayer:get_current_vehicle()
		localplayer:get_current_vehicle():set_can_be_visibly_damaged(false)
		localplayer:get_current_vehicle():set_window_collisions_disabled(true)
	end
end
if VDmg then menu.register_hotkey(VDmg, NoScratch) end

local FC = menu.add_submenu("F. Clinton")
FC:add_action("Goto Dr. Dre Final Mission", function()
		stats.set_int("MP"..mpx().."_FIXER_STORY_BS", -1)
		stats.set_int("MP"..mpx().."_FIXER_STORY_STRAND", -1)
		stats.set_int("MP"..mpx().."_FIXER_STORY_COOLDOWN", -1)
end)

FC:add_float_range("Security mission cooldown", 300000.0, 0, 300000, function() 
	return globals.get_int(SMCD)
end, function(value)
	globals.set_int(SMCD, value)
end)
FC:add_float_range("Payphone hit cooldown", 1200000.0, 0, 1200000, function() 
	return globals.get_int(PHCD)
end, function(value)
	globals.set_int(PHCD, value)
end)

local function refillInventory()
	stats.set_int("MP"..mpx().."_NO_BOUGHT_YUM_SNACKS", 30)
	stats.set_int("MP"..mpx().."_NO_BOUGHT_HEALTH_SNACKS", 15)
	stats.set_int("MP"..mpx().."_NO_BOUGHT_EPIC_SNACKS", 5)
	stats.set_int("MP"..mpx().."_NUMBER_OF_ORANGE_BOUGHT", 10)
	stats.set_int("MP"..mpx().."_NUMBER_OF_BOURGE_BOUGHT", 10)
	stats.set_int("MP"..mpx().."_NUMBER_OF_CHAMP_BOUGHT", 5)
	stats.set_int("MP"..mpx().."_CIGARETTES_BOUGHT", 20)
	stats.set_int("MP"..mpx().."_MP_CHAR_ARMOUR_5_COUNT", 10)
	stats.set_int("MP"..mpx().."_BREATHING_APPAR_BOUGHT", 20)
end
menu.register_hotkey(RefIn, refillInventory)

local LSCh = 2
if stats.get_bool("MP"..mpx().."_CARMEET_PV_CHLLGE_CMPLT") == true then
	LSCh = 1
else 
	LSCh = 0
end
WepCD:add_int_range("No. of Chllngs to Get Carmeet Prize", 1, 1, 100, function() 
	return LSCh
end, function(ChCn)
	stats.set_bool("MP"..mpx().."_CARMEET_PV_CHLLGE_CMPLT", true)
	stats.set_int("MP"..mpx().."_CARMEET_PV_CHLLGE_PRGSS", ChCn)
end)