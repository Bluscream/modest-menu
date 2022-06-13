local demo_menu = menu.add_submenu("Demo")

local function PedDrop()
	local position = localplayer:get_position()
	position.z = position.z + 30

	for p in replayinterface.get_peds() do
		if p == nil or p == localplayer then
			goto continue
		end
		
		if p:get_pedtype() < 4 then
			goto continue
		end
		
		if p:is_in_vehicle() then
			goto continue
		end

		p:set_position(position)

		if p:get_health() > 99 then
			p:set_position(position)
			p:set_freeze_momentum(true)
			p:set_health(0)
			p:set_wallet(1337)
			break
		end

		::continue::
	end
end

-- Uncomment the next line to drop a ped when pressing F3
-- menu.register_hotkey(114, PedDrop)

-- Add Menu action under scripts sub menu
demo_menu:add_action("Drop Ped", PedDrop)

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

demo_menu:add_toggle("Undead offradar", GetUndeadOffradar, SetUndeadOffradar)

local function ToggleUndeadOffradar()
	value = GetUndeadOffradar()
	if value ~= nil then
		SetUndeadOffradar(not value)
	end
end

-- Uncomment the next line to toggle undead offradar when pressing F4
-- menu.register_hotkey(115, ToggleUndeadOffradar)
