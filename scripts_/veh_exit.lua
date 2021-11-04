require "enums"

local function VehicleExitShutdown()
    if localplayer == nil return end
    if not localplayer:is_in_vehicle() return end
    local veh = localplayer:get_current_vehicle()
    if veh == nil return end
    local isExiting = veh:get_config_flag(VehicleConfigFlag.ExitingVehicle)
    local flag = localplayer:get_config_flag(PedConfigFlag.DisableStoppingVehEngine)
    
    localplayer:set_config_flag(PedConfigFlag.DisableStoppingVehEngine, false)
end

menu.register_hotkey(KeyCode.G, VehicleExitShutdown)