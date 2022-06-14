local global_trigger = 2671444+59
local global_hash = 2671444+46
local init = false
local perfectdelay = false
local delay = 0
 
local function GetDelay()
	if not init then return end
	globals.set_int(global_trigger, 1)
	while (globals.get_int(global_trigger) ~= 0) do
		if not init then return end
		delay = delay + 0.01
		sleep(0.01)
	end
	perfectdelay = true
end
 
local function get_model_hash()
	return globals.get_int(global_hash)
end
 
local function set_model_hash(h)
	if not perfectdelay then
		init = true
		GetDelay()
		sleep(1)
	end
	globals.set_int(global_trigger, 1)
	globals.set_int(global_hash, h)
	sleep(delay)
	globals.set_int(global_trigger, 0)
	globals.set_int(global_hash, 0)
end
 
menu.add_action("become mp_female", function()
	set_model_hash(-1667301416)
end)
menu.add_action("become mp_male", function()
	set_model_hash(1885233650)
end)
menu.add_action("become drug addict", function()
	set_model_hash(797459875)
end)
menu.add_action("become cat", function()
	set_model_hash(1462895032)
end)
menu.add_action("become chicken", function()
	set_model_hash(1794449327)
end)
menu.add_action("become pug", function()
	set_model_hash(1832265812)
end)
menu.add_action("become pigeon", function()
	set_model_hash(111281960)
end)
menu.add_action("become pig", function()
	set_model_hash(2971380566)
end)
menu.add_action("become mountain lion", function()
	set_model_hash(307287994)
end)