function player_is_player(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end
function player_is_npc(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end
function player_get_vehicle(veh)
	for i = 0, 31 do
		ply = player.get_player_ped(i)
		if ply then if ply:get_current_vehicle()==veh then
		return true else return false end end
	end
end
function player_is_modder(ply)
	if not player_is_player(ply) then return false end
	if ply:get_max_health() < 100 then return true end
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
	if ply:get_infinite_clip()then return true end --Infinit clip
	if ply:get_no_ragdoll() then return true end --No ragdoll
	if ply:get_seatbelt() and ply:is_in_vehicle() then return true end
	if ply:get_current_weapon() and ply:get_current_weapon():get_current_ammo() > 0 and ply:get_infinite_ammo() then return true end --Infinite ammo
	return false
end
function player_set_ped_model(hash)
	if hash == nil then print("[ERROR] player_set_ped_model: hash is nil") end
	globals.set_int(ChangeModelTrigger, 1)
	globals.set_int(ChangeModel, hash)
	sleep(0.01)
	globals.set_int(ChangeModelTrigger, 0)
end
function player_get_position(floor)
	local pos = localplayer:get_position()
	local head = localplayer:get_rotation()
	if floor then
		pos.x = math.floor(pos.x)
		pos.y = math.floor(pos.y)
		pos.z = math.floor(pos.z)
		head.x = math.floor(head.x)
		head.y = math.floor(head.y)
		head.z = math.floor(head.z)
	end
	return pos.x,pos.y,pos.z,head.x,head.y,head.z
end
function player_position_string()
	local x,y,z,hx,hy,hz = player_get_position(true)
	return "X: "..x.." Y: "..y.." Z: "..z
end
function player_rotation_string()
	local x,y,z,hx,hy,hz = player_get_position(true)
	return "X: "..hx.." Y: "..hy.." Z: "..hz
end