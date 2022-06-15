function vehicle_get_hash(name) return VehicleHash[name] end
function vehicle_get_name(hash) return VehicleHashName[hash] end
function vehicle_get_infos(veh)
	if not veh then return {} end
	local infos = {}
	infos.hash = veh:get_model_hash()
	infos.name = vehicle_get_name(infos.hash)
	infos.licensePlate = veh:get_number_plate_text()
	infos.godmode = veh:get_godmode()
	infos.locked = veh:get_door_lock_state()
	infos.max_speed = veh:get_max_speed()
	infos.bouyance = veh:get_bouyance()
	return infos
end

function vehicle_get_string(veh)
    local infos = vehicle_get_infos(veh)
	-- log("vehicle_get_infos: "..dump(infos))
	local str = infos.name or tostring(veh)
	if infos.hash then str = str .. " (" .. dump(infos.hash) .. ")" end
	if infos.licensePlate then str = str .. " [" .. dump(infos.licensePlate) .. "]" end
	if infos.godmode then str = str .. " * " end
	if infos.locked ~= nil then str = str .. " " .. (infos.locked and "LOCKED" or "UNLOCKED")..": "..dump(infos.locked) end
	if infos.max_speed then str = str .. " speed:" .. dump(infos.max_speed) end
	if infos.bouyance then str = str .. " bouyance:" .. dump(infos.bouyance) end
	return str
end

function vehicle_spawn(modelhash, moreopts) -- made by jjrbt
	local mypos = localplayer:get_position()

	--Source: https://gitlab.com/ExternalMemoryakaLolBobTest/external-menu-gta-5-csgo/-/blob/master/GTA%205%20C++/Hack.cpp

	globals.set_int(2725269 + 2, 1)
	globals.set_uint(2725269 + 5, 1)
	globals.set_uint(2725269 + 27, 1)

	if moreopts then

		--globals.set_text(2725269 + 27 + 1, "PLATE_TEXT") //VEHICLE_NUMBER_PLATE_TEXT
		
		globals.set_uint(2725269 + 27 + 5, 255) --VEHICLE_PRIMARY_COLOR
		globals.set_uint(2725269 + 27 + 6, 255) --VEHICLE_SECONDARY_COLOR
		globals.set_uint(2725269 + 27 + 7, 255) --VEHICLE_EXTRA_COLOURS
		
		globals.set_int(2725269 + 27 + 8, 255)
		globals.set_int(2725269 + 27 + 10, 5)
		globals.set_int(2725269 + 27 + 12, 4)
		globals.set_int(2725269 + 27 + 13, 8)
		globals.set_int(2725269 + 27 + 14, 6)
		globals.set_int(2725269 + 27 + 15, 3)
		globals.set_int(2725269 + 27 + 16, 4)
		globals.set_int(2725269 + 27 + 17, 13)
		globals.set_int(2725269 + 27 + 18, 8)
		globals.set_int(2725269 + 27 + 19, 5)
		globals.set_int(2725269 + 27 + 20, 255)
		globals.set_int(2725269 + 27 + 21, 3)
		globals.set_int(2725269 + 27 + 22, 6)
		globals.set_int(2725269 + 27 + 23, 10)
		globals.set_int(2725269 + 27 + 24, -1)
		
		globals.set_uint(2725269 + 27 + 59, 2)
		globals.set_int(2725269 + 27 + 62, 255)
		globals.set_int(2725269 + 27 + 63, 0)
		globals.set_int(2725269 + 27 + 64, 0)
		globals.set_int(2725269 + 27 + 65, 2)
		
		globals.set_uint(2725269 + 27 + 67, 1)
		globals.set_uint(2725269 + 27 + 69, 0)
		globals.set_uint(2725269 + 27 + 27, 1)
		
		globals.set_uint(2725269 + 27 + 74, 255) --VEHICLE_NEON_LIGHTS_COLOUR
		globals.set_uint(2725269 + 27 + 75, 255) 
		globals.set_uint(2725269 + 27 + 76, 255) 
		
		globals.set_uint(2725269 + 27 + 68, 1) --GET_CONVERTIBLE_ROOF_STATE
		globals.set_int(2725269 + 27 + 77, 0xF0400000) --CAR OPTIONS
		globals.set_uint(2725269 + 27 + 96, 1)
		globals.set_uint(2725269 + 27 + 97, 1)
		globals.set_uint(2725269 + 27 + 98, 0)
		globals.set_uint(2725269 + 27 + 99, 255)
	end

	globals.set_uint(2725269 + 27 + 70, 0) --VEHICLE_DOOR_LOCK_STATUS (If it is not 0, you cant enter the vehicle).

	globals.set_int(2725269 + 27 + 66, modelhash)

	globals.set_float(2725269 + 7, mypos.x + 5) --Position X
	globals.set_float(2725269 + 7+1, mypos.y + 5) --Position Y
	globals.set_float(2725269 + 7+2, -255)
end