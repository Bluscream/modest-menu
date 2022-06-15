require("init")

local massmenu = menu.add_submenu("Mass Actions")

massmenu:add_action("Lock all vehicles", function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_door_lock_state(VehicleDoorLockState.CannotBeTriedToEnter)
        end
    end
end)
massmenu:add_action("Unlock all vehicles", function()
    for v in replayinterface.get_vehicles() do
        if v ~= nil then
            v:set_door_lock_state(VehicleDoorLockState.Unlocked)
        end
    end
end)
massmenu:add_action("Freeze all peds", function()
    for p in replayinterface.get_peds() do
        if p ~= nil and p ~= localplayer then
            p:set_freeze_momentum(true)
        end
    end
end)
massmenu:add_action("Unfreeze all peds", function()
    for p in replayinterface.get_peds() do
        if p ~= nil and p ~= localplayer then
            p:set_freeze_momentum(false)
        end
    end
end)