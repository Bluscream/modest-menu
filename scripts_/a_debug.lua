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
 
menu.add_int_range("Nearest Pickup Hash", 1, -2140000000, 2140000000, GetNearestPickupHash, function() end)
menu.add_int_range("Nearest Pickup Model Hash", 1, -2140000000, 2140000000, GetNearestPickupModelHash, function() end)
menu.add_int_range("Nearest Vehicle Hash", 1, -2140000000, 2140000000, GetNearestVehicleHash, function() end)