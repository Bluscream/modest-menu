require("init")
local function SetMaxSpeed(vehicle, SpeedInt)
    vehicle:set_max_speed(SpeedInt)
    print('Setting max speed of '..SpeedInt..' for Vehicle ID ' .. vehicle_get_string(vehicle_get_infos(vehicle)))
end

-- Overrides

local TOWN_SPEED = 0.15
local CONNECTING_ROADS_SPEED = 0.20 
local HIGHWAY_SPEED = 0.25

-- Menu

local SBM = menu.add_submenu('NPC Spoof')

SBM:add_action('Town Speed Set', function ()
    local PlayerPed = localplayer
    local VehicleStatus = PlayerPed:is_in_vehicle()

    if VehicleStatus == false then
        return print('Error: Not In vehicle')
    end

    
    local Vch = PlayerPed:get_current_vehicle()

    local current_max_speed = Vch:get_max_speed()

    SetMaxSpeed(Vch, TOWN_SPEED)
end)
SBM:add_action('Connecting Speed Set', function ()
    local PlayerPed = localplayer
    local VehicleStatus = PlayerPed:is_in_vehicle()

    if VehicleStatus == false then
        return print('Error: Not In vehicle')
    end

    
    local Vch = PlayerPed:get_current_vehicle()

    SetMaxSpeed(Vch, CONNECTING_ROADS_SPEED)
end)
SBM:add_action('Highway Speed Set', function ()
    local PlayerPed = localplayer
    local VehicleStatus = PlayerPed:is_in_vehicle()

    if VehicleStatus == false then
        return print('Error: Not In vehicle')
    end

    
    local Vch = PlayerPed:get_current_vehicle()

    SetMaxSpeed(Vch, HIGHWAY_SPEED)
end)
