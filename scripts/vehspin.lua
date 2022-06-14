local enabled = false
local events = { "OnPlayerChanged", "OnVehicleChanged", "OnWeaponChanged" }
local keycodes = { 87, 65, 83, 68 } -- w a s d | add more keys here
local shit = { } -- storing keycode lua_ref
local shit2 = { } -- storing events lua_ref
local rot = 0
 
do_some_trolling = function()
    if localplayer ~= nil then
        if not enabled then
            return
        else
            i = 0
            repeat i = i + 1
                for v in replayinterface.get_vehicles() do
                    if v and not (localplayer:get_current_vehicle() == v) then
                        rot = v:get_rotation()
                        v:set_rotation(rot + rot)
                        --uncomment the line below for mayhem
                        --v:set_gravity(420) -- 9.8 default
                    end
                end
            until i == 10 -- edit this
        end
    end
end
 
menu.add_toggle("toggle da trolling", function() return enabled end, function()
    enabled = not enabled
    if enabled then
        do_some_trolling()
        for _, v in pairs(keycodes) do
            if not shit[v] then
                local bruh = menu.register_hotkey(v, do_some_trolling)
                table.insert(shit, bruh)
            end
        end
        for _, v in pairs(events) do
            if not shit2[v] then
                local bruh = menu.register_callback(v, do_some_trolling)
               table.insert(shit2, bruh)
            end
        end
    else
        for _, v in pairs(shit) do
            if v and v ~= nil then
                menu.remove_hotkey(v)
            end
        end
        for _, v in pairs(shit2) do
            if v and v ~= nil then
                menu.remove_callback(v)
            end
        end        
    end
end)