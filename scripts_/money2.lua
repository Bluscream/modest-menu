local enable = false
local delay = 0.5
 
local function loop()
	while enable do
		menu.send_key_press(151) -- Using some random unassigned virtal keycode to call the methods of other scripts
		sleep(delay)
	end
end
 
menu.register_hotkey(232, function()
	if not enable then
		enable = true
		loop()
	end
end)