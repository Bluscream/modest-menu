KeyCode = {
    VK_LBUTTON = 1, -- Left mouse button
    VK_RBUTTON = 2, -- Right mouse button
    VK_CANCEL = 3, -- Control-break processing
    VK_MBUTTON = 4, -- Middle mouse button (three-button mouse)
    VK_XBUTTON1 = 5, -- Windows 2000: X1 mouse button
    VK_XBUTTON2 = 6, -- Windows 2000: X2 mouse button
    VK_BACK = 8, -- BACKSPACE key
    VK_TAB = 9, -- TAB key
    VK_CLEAR = 12, -- CLEAR key
    VK_RETURN = 13, -- ENTER key
    VK_SHIFT = 16, -- SHIFT key
    VK_CONTROL = 17, -- CTRL key
    VK_MENU = 18, -- ALT key
    VK_PAUSE = 19, -- PAUSE key
    VK_CAPITAL = 20, -- CAPS LOCK key
    VK_KANA = 21, -- IME Kana mode
    VK_HANGUEL = 21, -- IME Hanguel mode (maintained for compatibility; use VK_HANGUL)
    VK_HANGUL = 21, -- IME Hangul mode
    VK_JUNJA = 23, -- IME Junja mode
    VK_FINAL = 24, -- IME final mode
    VK_HANJA = 25, -- IME Hanja mode
    VK_KANJI = 25, -- IME Kanji mode
    VK_ESCAPE = 27, -- ESC key
    VK_CONVERT = 28, -- IME convert
    VK_NONCONVERT = 29, -- IME nonconvert
    VK_ACCEPT = 30, -- IME accept
    VK_MODECHANGE = 31, -- IME mode change request
    VK_SPACE = 32, -- SPACEBAR
    VK_PRIOR = 33, -- PAGE UP key
    VK_NEXT = 34, -- PAGE DOWN key
    VK_END = 35, -- END key
    VK_HOME = 36, -- HOME key
    VK_LEFT = 37, -- LEFT ARROW key
    VK_UP = 38, -- UP ARROW key
    VK_RIGHT = 39, -- RIGHT ARROW key
    VK_DOWN = 40, -- DOWN ARROW key
    VK_SELECT = 41, -- SELECT key
    VK_PRINT = 42, -- PRINT key
    VK_EXECUTE = 43, -- EXECUTE key
    VK_SNAPSHOT = 44, -- PRINT SCREEN key
    VK_INSERT = 45, -- INS key
    VK_DELETE = 46, -- DEL key
    VK_HELP = 47, -- HELP key
    VK_0 = 48,
    VK_1 = 49,
    VK_2 = 50,
    VK_3 = 51,
    VK_4 = 52,
    VK_5 = 53,
    VK_6 = 54,
    VK_7 = 55,
    VK_8 = 56,
    VK_9 = 57,
    A = 65,
    B = 66,
    C = 67,
    D = 68,
    E = 69,
    F = 70,
    G = 71,
    H = 72,
    I = 73,
    J = 74,
    K = 75,
    L = 76,
    M = 77,
    N = 78,
    O = 79,
    P = 80,
    Q = 81,
    R = 82,
    S = 83,
    T = 84,
    U = 85,
    V = 86,
    W = 87,
    X = 88,
    Y = 89,
    Z = 90,
    VK_LWIN = 91, -- Left Windows key (Microsoft® Natural® keyboard)
    VK_RWIN = 92, -- Right Windows key (Natural keyboard)
    VK_APPS = 93, -- Applications key (Natural keyboard)
    VK_SLEEP = 95, -- Computer Sleep key
    VK_NUMPAD0 = 96, -- Numeric keypad 0 key
    VK_NUMPAD1 = 97, -- Numeric keypad 1 key
    VK_NUMPAD2 = 98, -- Numeric keypad 2 key
    VK_NUMPAD3 = 99, -- Numeric keypad 3 key
    VK_NUMPAD4 = 100, -- Numeric keypad 4 key
    VK_NUMPAD5 = 101, -- Numeric keypad 5 key
    VK_NUMPAD6 = 102, -- Numeric keypad 6 key
    VK_NUMPAD7 = 103, -- Numeric keypad 7 key
    VK_NUMPAD8 = 104, -- Numeric keypad 8 key
    VK_NUMPAD9 = 105, -- Numeric keypad 9 key
    VK_MULTIPLY = 106, -- Multiply key
    VK_ADD = 107, -- Add key
    VK_SEPARATOR = 108, -- Separator key
    VK_SUBTRACT = 109, -- Subtract key
    VK_DECIMAL = 110, -- Decimal key
    VK_DIVIDE = 111, -- Divide key
    VK_F1 = 112, -- F1 key
    VK_F2 = 113, -- F2 key
    VK_F3 = 114, -- F3 key
    VK_F4 = 115, -- F4 key
    VK_F5 = 116, -- F5 key
    VK_F6 = 117, -- F6 key
    VK_F7 = 118, -- F7 key
    VK_F8 = 119, -- F8 key
    VK_F9 = 120, -- F9 key
    VK_F10 = 121, -- F10 key
    VK_F11 = 122, -- F11 key
    VK_F12 = 123, -- F12 key
    VK_F13 = 124, -- F13 key
    VK_F14 = 125, -- F14 key
    VK_F15 = 126, -- F15 key
    VK_F16 = 127, -- F16 key
    VK_F17 = 128, -- F17 key
    VK_F18 = 129, -- F18 key
    VK_F19 = 130, -- F19 key
    VK_F20 = 131, -- F20 key
    VK_F21 = 132, -- F21 key
    VK_F22 = 133, -- F22 key
    VK_F23 = 134, -- F23 key
    VK_F24 = 135, -- F24 key
    VK_NUMLOCK = 144, -- NUM LOCK key
    VK_SCROLL = 145, -- SCROLL LOCK key
    VK_LSHIFT = 160, -- Left SHIFT key
    VK_RSHIFT = 161, -- Right SHIFT key
    VK_LCONTROL = 162, -- Left CONTROL key
    VK_RCONTROL = 163, -- Right CONTROL key
    VK_LMENU = 164, -- Left MENU key
    VK_RMENU = 165, -- Right MENU key
    VK_BROWSER_BACK = 166, -- Windows 2000: Browser Back key
    VK_BROWSER_FORWARD = 167, -- Windows 2000: Browser Forward key
    VK_BROWSER_REFRESH = 168, -- Windows 2000: Browser Refresh key
    VK_BROWSER_STOP = 169, -- Windows 2000: Browser Stop key
    VK_BROWSER_SEARCH = 170, -- Windows 2000: Browser Search key
    VK_BROWSER_FAVORITES = 171, -- Windows 2000: Browser Favorites key
    VK_BROWSER_HOME = 172, -- Windows 2000: Browser Start and Home key
    VK_VOLUME_MUTE = 173, -- Windows 2000: Volume Mute key
    VK_VOLUME_DOWN = 174, -- Windows 2000: Volume Down key
    VK_VOLUME_UP = 175, -- Windows 2000: Volume Up key
    VK_MEDIA_NEXT_TRACK = 176, -- Windows 2000: Next Track key
    VK_MEDIA_PREV_TRACK = 177, -- Windows 2000: Previous Track key
    VK_MEDIA_STOP = 178, -- Windows 2000: Stop Media key
    VK_MEDIA_PLAY_PAUSE = 179, -- Windows 2000: Play/Pause Media key
    VK_LAUNCH_MAIL = 180, -- Windows 2000: Start Mail key
    VK_LAUNCH_MEDIA_SELECT = 181, -- Windows 2000: Select Media key
    VK_LAUNCH_APP1 = 182, -- Windows 2000: Start Application 1 key
    VK_LAUNCH_APP2 = 183, -- Windows 2000: Start Application 2 key
    VK_OEM_1 = 186, -- Windows 2000: For the US standard keyboard, the ';:' key
    VK_OEM_PLUS = 187, -- Windows 2000: For any country/region, the '+' key
    VK_OEM_COMMA = 188, -- Windows 2000: For any country/region, the ',' key
    VK_OEM_MINUS = 189, -- Windows 2000: For any country/region, the '-' key
    VK_OEM_PERIOD = 190, -- Windows 2000: For any country/region, the '.' key
    VK_OEM_2 = 191, -- Windows 2000: For the US standard keyboard, the '/?' key
    VK_OEM_3 = 192, -- Windows 2000: For the US standard keyboard, the '`~' key
    VK_OEM_4 = 219, -- Windows 2000: For the US standard keyboard, the '[{' key
    VK_OEM_5 = 220, -- Windows 2000: For the US standard keyboard, the '\|' key
    VK_OEM_6 = 221, -- Windows 2000: For the US standard keyboard, the ']}' key
    VK_OEM_7 = 222, -- Windows 2000: For the US standard keyboard, the 'single-quote/double-quote' key
    VK_OEM_8 = 223, -- 
    VK_OEM_102 = 226, -- Windows 2000: Either the angle bracket key or the backslash key on the RT 102-key keyboard
    VK_PROCESSKEY = 229, -- Windows 95/98, Windows NT 4.0, Windows 2000: IME PROCESS key
    VK_PACKET = 231, -- Windows 2000: Used to pass Unicode characters as if they were keystrokes. The VK_PACKET key is the low word of a 32-bit Virtual Key value used for non-keyboard input methods. For more information, see Remark in KEYBDINPUT, SendInput, WM_KEYDOWN, and WM_KEYUP
    VK_ATTN = 246, -- Attn key
    VK_CRSEL = 247, -- CrSel key
    VK_EXSEL = 248, -- ExSel key
    VK_EREOF = 249, -- Erase EOF key
    VK_PLAY = 250, -- Play key
    VK_ZOOM = 251, -- Zoom key
    VK_NONAME = 252, -- Reserved for future use
    VK_PA1 = 253, -- PA1 key
    VK_OEM_CLEAR = 254 -- Clear key
}
PedConfigFlag = {
    CanPunch = 18,
    CanFlyThruWindscreen = 32,
    DiesByRagdoll = 33,
    PutOnMotorcycleHelmet = 35,
    NoCollision = 52,
    IsShooting = 58,
    IsOnGround = 60,
    NoCollide = 62,
    Dead = 71,
    IsSniperScopeActive = 72,
    SuperDead = 73,
    IsInAir = 76,
    IsAiming = 78,
    Drunk = 100,
    IsNotRagdollAndNotPlayingAnim = 104,
    NoPlayerMelee = 122,
    NmMessage466 = 125,
    CanAttackFriendlies = 140,
    InjuredLimp = 166,
    InjuredLimp2 = 170,
    DisableShufflingToDriverSeat = 184,
    InjuredDown = 187,
    Shrink = 223,
    MeleeCombat = 224,
    DisableStoppingVehEngine = 241,
    IsOnStairs = 253,
    HasOneLegOnGround = 276,
    NoWrithe = 281,
    Freeze = 292,
    IsStill = 301,
    NoPedMelee = 314,
    PedSwitchingWeapon = 331,
    Alpha = 410,
    DisablePropKnockOff = 423,
    DisableStartingVehEngine = 429,
    FlamingFootprints = 421
}

local panicModeActive = false

local function togglePanicMode()
    panicModeActive = not panicModeActive
    if panicModeActive then
        menu:set_disable_crash_to_sp(panicModeActive)
        menu:set_disable_send_to_island(panicModeActive)
        menu:set_disable_send_to_job(panicModeActive)
        menu:set_disable_teleport_to_apartment(panicModeActive)
        menu:set_disable_vehicle_kick(panicModeActive)
        menu:set_disable_weather_control(panicModeActive)
        if localplayer ~= nil then
            localplayer:set_godmode(panicModeActive)
            if localplayer:is_in_vehicle() then
                menu:level_current_vehicle()
                veh = localplayer:get_current_vehicle()
                if veh ~= nil then
                    veh:set_health(1000)
                    veh:set_godmode(panicModeActive)
                    veh:set_bulletproof_tires(panicModeActive)
                else
                    menu.heal_vehicle()
                end
            end
        else
            menu.heal_player()
        end
        menu:detach_objects()
        menu:clear_wanted_level()
        menu:kill_all_enemies()
        menu:call_heli_backup()
        menu:remove_insurance_claims()
        menu:end_cutscene()
    end
    if localplayer ~= nil then
        localplayer:set_config_flag(PedConfigFlag.DiesByRagdoll, not panicModeActive)
    end
    menu:set_bribe_authorities(panicModeActive)
    menu:set_cops_turn_blind_eye(panicModeActive)
    menu:set_ghost_organisation(panicModeActive)
    menu:set_offradar(panicModeActive)
    -- menu:set_passive(panicModeActive)
    menu:set_reveal_player(panicModeActive)
end

menu.add_toggle("PANIC MODE", function() return panicModeActive end, togglePanicMode)
local ref = menu.register_hotkey(KeyCode.VK_F10, togglePanicMode)