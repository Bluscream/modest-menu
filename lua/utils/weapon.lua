function weapon_get_hash(name)
    return WeaponHash[name] or joaat(name)
end
function weapon_get_name(hash)
    return WeaponHashName[hash] or "Unknown"
end
function weapon_get_infos(gun)
	if not gun then return {} end
	local infos = {}
	infos.hash = gun:get_model_hash()
	infos.name = weapon_get_name(infos.hash)
	infos.ammo = gun:get_current_ammo()
	infos.max_ammo = gun:get_max_mp_ammo()
	return infos
end

function weapon_get_string(gun)
    local infos = weapon_get_infos(gun)
	-- log("weapon_get_infos: "..dump(infos))
	local str = infos["name"] or tostring(gun)
	if infos.hash then str = str .. " (" .. dump(infos.hash) .. ")" end
	if infos.ammo then str = str .. " ["..dump(infos.ammo).."/"..dump(infos.max_ammo)"]" end
	return str
end



function weapon_spawn(weapon)
	local mypos = localplayer:get_position()
	
	--CODE TO CREATE AN AMBIENT PICKUP--
	
	globals.set_uint(2783351, 1)
	globals.set_int(2783345  + 1, 1337) -- 1337 is the amount of money just to identify the pickup later
	globals.set_float(2783345  + 3, mypos.x + 0)
	globals.set_float(2783345  + 4, mypos.y + 0)
	globals.set_float(2783345  + 5, mypos.z + 5)
	globals.set_uint(4528329 + 1 + (globals.get_int(2783345) * 85) + 66 + 2, 2)
	
	--Source: https://gitlab.com/ExternalMemoryakaLolBobTest/external-menu-gta-5-csgo/-/blob/master/GTA%205%20C++/Hack.cpp
	
	--END OF CODE TO CREATE AN AMBIENT PICKUP--
	
	sleep(0.30) -- We wait for pickup to be created
	
	local mypos = localplayer:get_position()
	for p in replayinterface.get_pickups() do
		if p:get_amount() == 1337 then
			p:set_amount(2000)
			p:set_pickup_hash(weapon)
			break
		end
	end
end