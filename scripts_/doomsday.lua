local doomsday = menu.add_submenu('Doomsday Heist')

local function Text (txt)
    doomsday:add_action(txt, function()
    end) -- Creates A Fake Action to provide a text.
end

Text('Create Doomsday Heist')
Text('DataBreaches=1')
Text('Bogdan=2')
Text('Doomsday=3')
doomsday:add_int_range("Select Type Of Heist", 1, 1, 3, function() return 1 end, function(ActNum)
	if ActNum == 1 then
		DProg = 503
		DStat = 229383
	elseif ActNum == 2 then
		DProg = 240
		DStat = 229378
	else
		DProg = 16368
		DStat = 229380
	end
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", DProg)
		stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", DStat)
		stats.set_int(mpx .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
doomsday:add_int_range("Doomsday Player1", 5.0, 15, 100, function() 
	return globals.get_int(1963618)
end, function(value)
	globals.set_int(1963618, value)
end)
 
doomsday:add_int_range("Doomsday Player2", 5.0, 15, 100, function() 
	return globals.get_int(1963619)
end, function(value)
	globals.set_int(1963619, value)
end)
 
doomsday:add_int_range("Doomsday Player3", 5.0, 15, 100, function() 
	return globals.get_int(1963620)
end, function(value)
	globals.set_int(1963620, value)
end)
 
doomsday:add_int_range("Doomsday Player4", 5.0, 15, 100, function() 
	return globals.get_int(1963621)
end, function(value)
	globals.set_int(1963621, value)
end)
Text('HEIST CUT NOT WORKING!')
