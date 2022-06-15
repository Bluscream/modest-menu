require("init")
local selected_vehicle = nil
local tune = false
local vehmenu = menu.add_submenu("Spawn Vehicle")
vehmenu:add_action("Spawn Vehicle | " .. table_count(VehicleHash), function() end)
for k,v in table_sort(VehicleHash) do
    vehmenu:add_action(menu_centered_text(string.toTitleCase(k)), function()
        print(k)
        if k == nil then return end
        vehicle_spawn(joaat(k), false)
    end)
end

vehmenu:add_toggle("Spawn tuned", function() return tune end, function(v) tune = not tune end)