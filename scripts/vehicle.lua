local autoVehicleGodMode = true
local autoRepairVehicle = false
local autoVehicleLicensePlate = true
local autoVehicleLock = true
local autoSiren = false

local function OnVehicleChanged(oldVehicle, newVehicle)
	if newVehicle ~= nil then
		if autoRepairVehicle == true and newVehicle:get_health() < 1000 then
			newVehicle:set_health(1000)
			menu:level_current_vehicle()
		end
		if autoVehicleGodMode == true and not newVehicle:get_godmode() then
			-- menu.heal_vehicle()
			newVehicle:set_godmode(true)
			newVehicle:set_can_be_visibly_damaged(false)
		end
		if autoVehicleLicensePlate == true then
			newVehicleHash = newVehicle:get_model_hash()
			newVehicle:set_number_plate_index(0)
			if newVehicleHash == 0x586765fb then -- Deluxo
				newVehicle:set_number_plate_text('outatime')
			else
				newVehicle:set_number_plate_text('x blu x')
			end
		end
		-- if autoSiren == true and not newVehicle:get_config_flag(4) then
		-- 	newVehicle:set_config_flag(1, true)
		-- 	newVehicle:set_config_flag(4, true)
		-- end
		if autoVehicleLock == true then
			newVehicle:set_door_lock_state(10)
		end
	elseif oldVehicle ~= nil then
		if autoVehicleLock then
			oldVehicle:set_door_lock_state(1)
		end
	end
end
local function UnlockOwnDoor()
	if localplayer ~= nil then
		if localplayer:is_in_vehicle() then
			local veh = localplayer:get_current_vehicle()
			if veh ~= nil then
				if veh:get_door_lock_state() ~= 1 then
					veh:set_door_lock_state(1)
				end
			end
		end
	end
end
local function GetEngine()
	if localplayer == nil then
		return nil
	else
		return localplayer:is_in_vehicle()
	end
end
local function SetEngine(value)
	if localplayer ~= nil then
		if value then
			localplayer:set_config_flag(241, true)
		else
			localplayer:set_config_flag(241, false)
		end
	end
end

menu.register_hotkey(112, function() menu.enter_personal_vehicle() end)
menu.register_hotkey(70, UnlockOwnDoor)
menu.register_callback('OnVehicleChanged', OnVehicleChanged)
menu.add_toggle("Engine Status", GetEngine, SetEngine)
menu.add_toggle("Auto Vehicle Godmode", function() return autoVehicleGodMode end, function(v) autoVehicleGodMode = v end)
menu.add_toggle("Auto Vehicle Repair", function() return autoRepairVehicle end, function(v) autoRepairVehicle = v end)
menu.add_toggle("Auto Vehicle License Plate", function() return autoVehicleLicensePlate end, function(v) autoVehicleLicensePlate = v end)
menu.add_toggle("Auto Vehicle Lock", function() return autoVehicleLock end, function(v) autoVehicleLock = v end)
-- menu.add_action("Lock all vehicles", function() for p in replayinterface.get_vehicles() do if p ~= nil then return p:set_door_lock_state(10) end end end)
-- menu.add_toggle("Auto Vehicle Siren", function() return autoSiren end, function(v) autoSiren = v end)