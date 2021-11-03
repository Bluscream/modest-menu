local autoVehicleGodMode = true
local autoRepairVehicle = true
local autoVehicleLicensePlate = false

local function OnVehicleChanged(oldVehicle, newVehicle)
	if newVehicle ~= nil then
		if autoRepairVehicle == true and newVehicle:get_health() < 1000 then
			newVehicle:set_health(1000)
		end
		if autoVehicleGodMode == true and not newVehicle:get_godmode() then
			-- menu.heal_vehicle()
			newVehicle:set_godmode(true)
		end
		if autoVehicleLicensePlate == true then
			newVehicleHash = newVehicle:get_model_hash()
			if newVehicleHash == 0x586765fb then -- Deluxo
				newVehicle:set_number_plate_text('outatime')
			else
				newVehicle:set_number_plate_text('x blu x')
			end
		end
	end
end

menu.register_callback('OnVehicleChanged', OnVehicleChanged)
menu.add_toggle("Auto Vehicle Godmode", function() return autoVehicleGodMode end, function(v) autoVehicleGodMode = v end)
menu.add_toggle("Auto Vehicle Repair", function() return autoRepairVehicle end, function(v) autoRepairVehicle = v end)
menu.add_toggle("Auto Vehicle License Plate", function() return autoVehicleLicensePlate end, function(v) autoVehicleLicensePlate = v end)