local original_max_health = 0.0

local function GetUndeadOffradar()
	if localplayer == nil then
		return nil
	end
	
	max_health = localplayer:get_max_health()
	return max_health < 100.0
end

local function SetUndeadOffradar(value)
	if value == nil or localplayer == nil then
		return
	end
	
	if value then
		max_health = localplayer:get_max_health()
		if max_health >= 100.0 then
			original_max_health = max_health
		end
		localplayer:set_max_health(0.0)
	else
		if original_max_health >= 100 then
			localplayer:set_max_health(original_max_health)
		else
			localplayer:set_max_health(328.0)
		end
	end
end

menu.add_toggle("Undead offradar", GetUndeadOffradar, SetUndeadOffradar)

local function ToggleUndeadOffradar()
	value = GetUndeadOffradar()
	if value ~= nil then
		SetUndeadOffradar(not value)
	end
end

-- Uncomment the next line to toggle undead offradar when pressing F4
-- menu.register_hotkey(115, ToggleUndeadOffradar)

menu.add_toggle("Unique Cargo Toggle", function()	
	return globals.get_boolean(1683827) 
end, function(value)
	globals.set_boolean(1683827, value)
end)