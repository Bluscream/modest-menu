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