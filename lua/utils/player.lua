function player:is_player(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end
function player:is_npc(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end
function player:get_vehicle(veh)
	for i = 0, 31 do
		ply = player.get_player_ped(i)
		if ply then if ply:get_current_vehicle()==veh then
		return true else return false end end
	end
end
function player:is_modder(ply)
	if not IsPlayer(ply) then return false end
	if ply:get_max_health() < 100 then return true end
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
	if ply:get_infinite_clip()then return true end --Infinit clip
	if ply:get_no_ragdoll() then return true end --No ragdoll
	if ply:get_seatbelt() and ply:is_in_vehicle() then return true end
	if ply:get_current_weapon() and ply:get_current_weapon():get_current_ammo() > 0 and ply:get_infinite_ammo() then return true end --Infinite ammo
	return false
end
function player:set_ped_model(hash)
	globals.set_int(ChangeModelTrigger, 1)
	globals.set_int(ChangeModel, hash)
	sleep(0.01)
	globals.set_int(ChangeModelTrigger, 0)
end