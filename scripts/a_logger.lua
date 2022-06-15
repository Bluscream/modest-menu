require("init")

local function OnPlayerChanged(oldPlayerPed, newPlayerPed)
    log('OnPlayerChanged: ' .. dump(oldPlayerPed) .. '\n\t=> ' .. dump(newPlayerPed))
end
local function OnPlayerStateChanged(oldState, newState)
    print('OnPlayerStateChanged: ' .. dump(oldState) .. '\n\t=> ' .. dump(newState))
end
local function OnVehicleChanged(oldVehicle, newVehicle)
    log("OnVehicleChanged: " .. vehicle_get_string(oldVehicle) .. "\n\t=> " .. vehicle_get_string(newVehicle))
end
local function OnWeaponChanged(oldWeapon, newWeapon)
    print('OnWeaponChanged: ' .. dump(oldWeapon) .. '\n\t=> ' .. dump(newWeapon))
end


menu.register_callback(Event.OnPlayerChanged, OnPlayerChanged)
menu.register_callback(Event.OnPlayerStateChanged, OnPlayerStateChanged)
menu.register_callback(Event.OnVehicleChanged, OnVehicleChanged)
menu.register_callback(Event.OnWeaponChanged, OnWeaponChanged)