require("init")

local speedometer_submenu = menu.add_submenu("Speedometer")
 
local units_selection = 3
local units_text = {"kilometres per hour", "metres per second", "miles per hour", "feet per second"}
local units_text_short = {"km/h", "m/s", "mi/h", "ft/s"}
local units_text_numberplate = {"kmh", "mps", "mph", "fps"}
local units_value = {3.6, 1, 2.2369362921, 3.280839895}
local numberplate_enabled = false
local numberplate_key = {KeyCode.W, KeyCode.S}-- W, A, S, D
local numberplate_ref = {}
local oldplate = ""
 
local function round(value, dec)
	dec = dec or 0
	return tonumber(string.format("%." .. dec .. "f", value))
end
 
local function get_vehicle_speed(veh)
	if not veh then return 0 end
	local velocity = veh:get_velocity()
	return math.sqrt(velocity.x ^ 2 + velocity.y ^ 2 + velocity.z ^ 2)
end

speedometer_submenu:add_toggle("Speedometer Numberplates", function()
	return numberplate_enabled
end, function(value)
	numberplate_enabled = value
	if value then
		oldplate = localplayer:get_current_vehicle():get_number_plate_text()	
		for i = 1, #numberplate_key do
			numberplate_ref[i] = menu.register_hotkey(numberplate_key[i], function()
				if not localplayer:is_in_vehicle() then return end
				local veh = localplayer:get_current_vehicle()
				if not veh then return end
				local speed = round(get_vehicle_speed(veh) * units_value[units_selection], 0)
				-- veh:set_number_plate_index(math.random(-1, 16))
				veh:set_number_plate_text((speed < 10 and "   " or speed < 100 and "  " or speed < 1000 and " " or "") .. speed .. " " .. units_text_numberplate[units_selection])
				sleep(.1)
			end)
		end
	else
		for i = 1, #numberplate_ref do
			menu.remove_hotkey(numberplate_ref[i])
		end
		localplayer:get_current_vehicle():set_number_plate_text(oldplate)
	end
end)
 
speedometer_submenu:add_array_item("Speed unit", units_text, function()
	return units_selection
end, function(value)
	units_selection = value
end)
 
speedometer_submenu:add_bare_item("Speed", function()
	if not localplayer:is_in_vehicle() then return "Speed: not in vehicle" end
	local veh = localplayer:get_current_vehicle()
	if not veh then return "Speed: invalid vehicle" end
	local speed = round(get_vehicle_speed(veh) * units_value[units_selection], 1)
	return "Speed: " .. speed .. " " .. units_text_short[units_selection]
end, function() end, function() end, function() end)