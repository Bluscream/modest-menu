require("init")
local function GetNearestPickupHash()
	for p in replayinterface.get_pickups() do
		if p ~= nil then
			return p:get_pickup_hash()
		end
	end
end
local function GetNearestPickupModelHash()
	for p in replayinterface.get_pickups() do
		if p ~= nil then
			return p:get_model_hash()
		end
	end
end
local function GetNearestVehicleHash()
	for p in replayinterface.get_vehicles() do
		if p ~= nil then
			return p:get_model_hash()
		end
	end
end
local function GetOwnDoorLockState()
	if localplayer ~= nil then
		if localplayer:is_in_vehicle() then
			local veh = localplayer:get_current_vehicle()
			if veh ~= nil then
				local state = veh:get_door_lock_state()
				-- print("Door lock state: " .. state)
				return state 
			end
		end
	end
	return -1
end
local major,minor,build,patch = menu.get_game_version() 
menu.add_action("GTA V Version | "..major.."."..minor.."."..build.."."..patch,function() end)
-- menu.add_int_range("Nearest Pickup Hash", 1, -2140000000, 2140000000, GetNearestPickupHash, function() end)
-- menu.add_int_range("Nearest Pickup Model Hash", 1, -2140000000, 2140000000, GetNearestPickupModelHash, function() end)
-- menu.add_int_range("Nearest Vehicle Hash", 1, -2140000000, 2140000000, GetNearestVehicleHash, function() end)
-- menu.add_int_range("Vehicle Door Lock State", 1, -1, 9999, GetOwnDoorLockState, function(v) localplayer:get_current_vehicle():set_door_lock_state(v) end)
menu.add_bare_item("", function() return "Position | "..player_position_string(localplayer) end,function()end,function()end,function()end)
-- menu.add_bare_item("", function() return getPos("y") end,function()end,function()end,function()end)
-- menu.add_bare_item("", function() return getPos("z") end,function()end,function()end,function()end)
menu.add_bare_item("", function() return "Rotation | "..player_rotation_string(localplayer) end,function()end,function()end,function()end)