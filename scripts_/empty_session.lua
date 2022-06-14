-- MADE BY zjz1
local cooldownVal = false
 
local function removeCoolDown(removeCoolDownVar)
    if not localplayer then
        return
    end
    if removeCoolDownVar then
        globals.set_int(277506, 0)
        globals.set_int(277507, 0)
    else
        globals.set_int(277506, 300000)
        globals.set_int(277507, 1800000)
    end
end
local function setValue(Val)
	  globals.set_int(277741, Val)
        globals.set_int(277742, math.floor(Val / 2))
        globals.set_int(277743, math.floor(Val / 3))
        globals.set_int(277744, math.floor(Val / 4))
        globals.set_int(277745, math.floor(Val / 5))
        globals.set_int(277746, math.floor(Val / 6))
        globals.set_int(277747, math.floor(Val / 7))
        globals.set_int(277748, math.floor(Val / 8))
        globals.set_int(277749, math.floor(Val / 9))
        globals.set_int(277750, math.floor(Val / 10))
        globals.set_int(277751, math.floor(Val / 11))
        globals.set_int(277752, math.floor(Val / 12))
        globals.set_int(277753, math.floor(Val / 13))
        globals.set_int(277754, math.floor(Val / 14))
        globals.set_int(277755, math.floor(Val / 15))
        globals.set_int(277756, math.floor(Val / 16))
        globals.set_int(277757, math.floor(Val / 17))
        globals.set_int(277758, math.floor(Val / 18))
        globals.set_int(277759, math.floor(Val / 19))
        globals.set_int(277760, math.floor(Val / 20))
        globals.set_int(277761, math.floor(Val / 21))
        if Val > 5000000 then
            menu.empty_session()
            print("Emptying Session, your session is too fucking large")
        end
end
 
local cratesMenu = menu.add_submenu("Ceo Crates")
cratesMenu:add_int_range(
    "Set Value",
    100000,
    10000,
    6000000,
    function()
        return globals.get_int(277741)
    end,
    function(Val)
        setValue(Val)
    end
)
cratesMenu:add_toggle(
    "Remove Sell and Buy Cooldowns",
    function()
        return cooldownVal
    end,
    function()
        cooldownVal = not cooldownVal
        removeCoolDown(cooldownVal)
    end
)
cratesMenu:add_toggle(
    "Unique Cargo Toggle",
    function()
        return globals.get_boolean(1946798)
    end,
    function(value)
        globals.set_boolean(1946798, value)
    end
)