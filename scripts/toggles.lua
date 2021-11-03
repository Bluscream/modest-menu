menu.add_toggle("Weather: Snow", function()	
	return globals.get_boolean(262145 + 4724) 
end, function(value)
	if value ~= nil then globals.set_boolean(262145 + 4724, value) end
end)