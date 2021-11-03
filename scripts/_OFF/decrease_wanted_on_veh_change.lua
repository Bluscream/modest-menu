local function WantedOnVehicleChange(oldVehicle, newVehicle)
	if oldVehicle == nil and newVehicle and localplayer then
        wanted_level = localplayer:get_wanted_level()
        if wanted_level > 0 then
        localplayer:set_wanted_level(wanted_level - 1)
        end
	end
end
menu.register_callback('OnVehicleChanged', WantedOnVehicleChange)