local function GetCopPartner()
	local position = localplayer:get_position()
	position.x = position.x + 3

	for p in replayinterface.get_peds() do
		if p == nil or p == localplayer then
			goto continue
		end
		
		if p:get_pedtype() ~= 6 then -- is Cop
			goto continue
		end
		
		if p:is_in_vehicle() then
			veh = p:get_current_vehicle()
			veh:set_health(0)
		end

		p:set_position(position)
		p:set_config_flag(292, true) -- PED_FLAG_FREEZE
		p:set_config_flag(301, true) -- PED_FLAG_IS_STILL
		-- p:set_model_hash(-150975354)
		break

		::continue::
	end
end

-- Uncomment the next line to drop a ped when pressing F3
-- menu.register_hotkey(114, PedDrop)

-- Add Menu action under scripts sub menu
menu.add_action("Get Cop Partner", GetCopPartner)