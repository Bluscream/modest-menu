local rp = false
local wanted = false
local money = false
local kill = false
 
local function giverp()
	if wanted then
		localplayer:set_wanted_level(0)
		wanted = false
	else
		localplayer:set_wanted_level(5)
		wanted = true
	end
end
 
local function givemoney()
	local function IsNPC(ped)
		if ped == nil or ped:get_pedtype() < 4 then
			return false
		end
		return true
	end
	if localplayer == nil then
		return
	end
	if not kill then
		local pos = localplayer:get_position()
		for ped in replayinterface.get_peds() do
			if IsNPC(ped) then
				ped:set_position(pos)
				ped:set_freeze_momentum(true)
			end
		end
		kill = true
	else
		menu.kill_all_npcs()
		kill = false
	end
end
 
local function loop()
	menu.send_key_press(232)
end
 
menu.add_toggle("RP loop", function()
	return rp
end, function(value)
	rp = value
	loop()
end)
 
menu.add_toggle("Money loop", function()
	return money
end, function(value)
	money = value
	loop()
end)
 
menu.register_hotkey(151, function()
	if rp then
		giverp()
	end
	if money then
		givemoney()
	end
end)
