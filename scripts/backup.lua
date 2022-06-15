require("init")

local events = nil
local keys = nil

local function Trigger() menu.call_heli_backup() end

local function Toggle()
    if events == nil then
        events = {}
        for k, v in pairs(Event) do
            table.insert(events, menu.register_callback(v, Trigger))
        end
        Trigger()
    else
        for i = 1, #events do
            menu.remove_callback(events[i])
        end
        events = nil
    end
    if keys == nil then
        keys = {}
        for k, v in pairs({ KeyCode.W, KeyCode.A, KeyCode.S, KeyCode.D, KeyCode.VK_ESCAPE }) do
            table.insert(keys, menu.register_hotkey(v, Trigger))
        end
        Trigger()
    else
        for i = 1, #keys do
            menu.remove_hotkey(keys[i])
        end
        keys = nil
    end
end

menu.add_toggle("Permanent Backup", function() return events ~= nil and keys ~= nil end, Toggle)