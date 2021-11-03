-- An demo example in contribution to MikeRohsoft:

siriusCoordsStart = vector3(526.510742, 5623.417480, 779.736694)
siriusCoordsEnd = vector3(2274.999268, 5787.000977, 153.723633)
state = 1

menu.add_hotkey(122, function()
	if localplayer == nil then
		return
	end
	
    if state == 1 then
        localplayer:set_position(siriusCoordsStart)
        state = 2
    else
        localplayer:set_position(siriusCoordsEnd)
        state = 1
    end
end)