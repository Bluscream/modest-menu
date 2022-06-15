local enable = false
 
local speed = 2
 
local function up()
	if not enable or not speed then return end
	local newpos = localplayer:get_position() + vector3(0,0,speed)
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		vehicle=localplayer:get_current_vehicle()
		vehicle:set_position(newpos)
	end
end
 
local function down()
	if not enable or not speed then return end
	local newpos = localplayer:get_position() + vector3(0,0,speed * -1)
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		vehicle=localplayer:get_current_vehicle()
		vehicle:set_position(newpos)
	end
end
 
local function forward()
	if not enable or not speed then return end
	local dir = localplayer:get_heading()
	local newpos = localplayer:get_position() + (dir * speed)
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		vehicle=localplayer:get_current_vehicle()
		vehicle:set_position(newpos)
	end
end
 
local function backward()
	if not enable or not speed then return end
	local dir = localplayer:get_heading()
	local newpos = localplayer:get_position() + (dir * speed * -1)
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		vehicle=localplayer:get_current_vehicle()
		vehicle:set_position(newpos)
	end
end
 
local function turnleft()
	if not enable then return end
	local dir = localplayer:get_rotation()
	
	if not localplayer:is_in_vehicle() then
		localplayer:set_rotation(dir + vector3(0.25,0,0))
	else
		vehicle=localplayer:get_current_vehicle()
		vehicle:set_rotation(dir + vector3(0.25,0,0))
	end
end
 
local function turnright()
	if not enable then return end
	local dir = localplayer:get_rotation()
	
	if not localplayer:is_in_vehicle() then
		localplayer:set_rotation(dir + vector3(0.25 * -1,0,0))
	else
		vehicle=localplayer:get_current_vehicle()
		vehicle:set_rotation(dir + vector3(0.25 * -1,0,0))
	end
end
 
local function increasespeed()
	if speed > 0 then 
		speed = speed + 1
	end
end
 
local function decreasespeed()
	if speed > 1 then 
		speed = speed - 1
	end
end
 
local up_hotkey
local down_hotkey
local forward_hotkey
local backward_hotkey
local turnleft_hotkey
local turnright_hotkey
local increasespeed_hotkey
local decreasespeed_hotkey
 
local function NoClip(e)
	if not localplayer then return end
	if e then 
		localplayer:set_freeze_momentum(true) 
		localplayer:set_no_ragdoll(true)
		localplayer:set_config_flag(292,true)
		up_hotkey = menu.register_hotkey(16, up)
		down_hotkey = menu.register_hotkey(17, down)
		forward_hotkey = menu.register_hotkey(38, forward)
		backward_hotkey = menu.register_hotkey(40, backward)
		turnleft_hotkey = menu.register_hotkey(37, turnleft)
		turnright_hotkey = menu.register_hotkey(39, turnright)
		increasespeed_hotkey = menu.register_hotkey(107, increasespeed)
		decreasespeed_hotkey = menu.register_hotkey(109, decreasespeed)
	else
		localplayer:set_freeze_momentum(false)
		localplayer:set_no_ragdoll(false)
		localplayer:set_config_flag(292,false)
		menu.remove_hotkey(up_hotkey)
		menu.remove_hotkey(down_hotkey)
		menu.remove_hotkey(forward_hotkey)
		menu.remove_hotkey(backward_hotkey)
		menu.remove_hotkey(turnleft_hotkey)
		menu.remove_hotkey(turnright_hotkey)
		menu.remove_hotkey(increasespeed_hotkey)
		menu.remove_hotkey(decreasespeed_hotkey)
	end
end
 
-- menu.register_hotkey(46, function()
-- 	enable = not enable 
-- 	NoClip(enable)
-- end)
 
menu.add_toggle("NoClip", function()
	return enable
end, function()
	enable = not enable 
	NoClip(enable)
end)
 
menu.add_int_range("NoClip Speed", 1, 1, 10, function()
	return speed
end, function(i) speed = i end)