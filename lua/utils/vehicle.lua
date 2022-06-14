function GetVehicleNameByHash(hash)
	for i = 1, #VehicleHashes do
		if VehicleHashes[i] == hash then return VehicleNames[i] end
	end
end
function GetVehicleHashByName(name)
	for i = 1, #VehicleHashes do
		if VehicleNames[i] == hash then return VehicleHashes[i] end
	end
end