function vehicle_get_hash(name) return VehicleHash[name] end
function vehicle_get_name(hash) return VehicleName[hash] end
function vehicle_get_infos(veh)
	if not veh then return end
	local hash = veh:get_model_hash()
	local name = VehicleName[hash]
	local licensePlate = veh:get_number_plate_text()
	local godmode = veh:get_godmode()
	local locked = veh:get_door_lock_state()
	return hash, name, licensePlate, godmode, locked
end

function vehicle_get_string(veh, hash, name, licensePlate, godmode, locked)
	str = name or tostring(veh)
	if hash then str = str .. " (" .. hash .. ")" end
	if licensePlate then str = str .. " [" .. licensePlate .. "]" end
	if godmode then str = str .. " * " end
	if locked ~= nil then str = str .. " " .. (locked and "LOCKED" or "UNLOCKED")..": "..tostring(locked) end
	return dump(str)
end