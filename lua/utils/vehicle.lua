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