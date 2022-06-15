require("init")

local autoVehicleGodMode = true
local autoRepairVehicle = false
local autoVehicleLicensePlate = true
local autoVehicleLock = false
local autoVehicleUnLock = true
local autoSiren = false

local function UnlockOwnDoor()
	if autoVehicleUnLock and localplayer ~= nil then
		if localplayer.get_current_vehicle then
			local veh = localplayer:get_current_vehicle()
			if veh ~= nil then
				veh:set_door_lock_state(VehicleDoorLockState.Unlocked)
			end
		end
	end
end

local function OnVehicleChanged(oldVehicle, newVehicle)
	local infos = vehicle_get_infos(newVehicle)
	if newVehicle ~= nil then
		if autoRepairVehicle == true and newVehicle:get_health() < 1000 then
			newVehicle:set_health(1000)
			menu:level_current_vehicle()
		end
		if autoVehicleGodMode == true and not newVehicle:get_godmode() then
			-- menu.heal_vehicle()
			newVehicle:set_godmode(true)
			newVehicle:set_can_be_visibly_damaged(false)
			newVehicle:set_window_collisions_disabled(true)
			-- newVehicle:set_bouyance(0)
			newVehicle:set_dirt_level(15)
			-- newVehicle:set_max_speed(2)
			newVehicle:set_window_tint(1)
		end
		if autoVehicleLicensePlate == true then
			newVehicle:set_number_plate_index(2)
			if infos["hash"] then
				if infos["hash"] == 0x586765fb then -- Deluxo
					newVehicle:set_number_plate_text('outatime')
				elseif string.startsWith(VehicleHashName[infos["hash"]], "police") then
					newVehicle:set_number_plate_text('LSPD:FR')
				else
					newVehicle:set_number_plate_text('x blu x')
				end
			else
				newVehicle:set_number_plate_text('x blu x')
			end
		end
		if autoSiren == true and not newVehicle:get_config_flag(VehicleConfigFlag.SirenActive) then
			newVehicle:set_config_flag(VehicleConfigFlag.SirenActive, true)
			newVehicle:set_config_flag(VehicleConfigFlag.PressingHorn, true)
		end
		if autoVehicleLock == true then
			newVehicle:set_door_lock_state(VehicleDoorLockState.CannotBeTriedToEnter)
		end
	else
		UnlockOwnDoor()
	end
	if oldVehicle ~= nil then
		if autoVehicleUnLock then
			oldVehicle:set_door_lock_state(VehicleDoorLockState.Unlocked)
		end
	end
end
local function GetEngine()
	if localplayer ~= nil and localplayer:is_in_vehicle() then
		return localplayer:get_config_flag(PedConfigFlag.DisableStoppingVehEngine)
	end
	return false
end
local function SetEngine(value)
	if localplayer ~= nil then
		if value then
			localplayer:set_config_flag(PedConfigFlag.DisableStoppingVehEngine, true)
		else
			localplayer:set_config_flag(PedConfigFlag.DisableStoppingVehEngine, false)
		end
	end
end

-- menu.register_hotkey(112, function() menu.enter_personal_vehicle() end)
menu.register_hotkey(KeyCode.F, UnlockOwnDoor)
menu.register_callback(Event.OnVehicleChanged, OnVehicleChanged)
local vehmenu = menu.add_submenu("Vehicle Actions")
vehmenu:add_toggle("Engine Status", GetEngine, SetEngine)
vehmenu:add_toggle("Auto Vehicle Godmode", function() return autoVehicleGodMode end, function(v) autoVehicleGodMode = v end)
vehmenu:add_toggle("Auto Vehicle Repair", function() return autoRepairVehicle end, function(v) autoRepairVehicle = v end)
vehmenu:add_toggle("Auto Vehicle License Plate", function() return autoVehicleLicensePlate end, function(v) autoVehicleLicensePlate = v end)
vehmenu:add_toggle("Auto Vehicle Lock", function() return autoVehicleLock end, function(v) autoVehicleLock = v end)
vehmenu:add_toggle("Auto Vehicle Unlock", function() return autoVehicleUnLock end, function(v) autoVehicleUnLock = v end)
-- vehmenu:add_toggle("Auto Vehicle Siren", function() return autoSiren end, function(v) autoSiren = v end)

local function get_current_plate()
	if not not localplayer or not localplayer:get_current_vehicle() or not localplayer:get_current_vehicle():get_number_plate_index() then return nil end
	local hash = VehicleLicensePlateColorName[localplayer:get_current_vehicle():get_number_plate_index()]
	return hash
end
local function set_current_plate(hash)
	print(tostring(hash))
	if hash == nil then return end
	localplayer:get_current_vehicle():set_number_plate_index(hash)
end
menu_add_enum_range(VehicleLicensePlateColor, "License Plate", false, set_current_plate, get_current_plate, vehmenu)

vehmenu:add_action("Spawn Vehicle",function() 
	vehicle_spawn(joaat("ambulance"), true) --the false value, is to not apply any extra options to the vehicle, just spawn it.
end)