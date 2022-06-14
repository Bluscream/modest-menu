require("init")
-- MADE BY zFutoX
local spoofDetection = menu.add_submenu("Detect Spoofing")
 function calcRPover120(lvl)
	return 25*lvl^2+23575*lvl-1023150
 end
 RPneeded = {0,800,2100,3800,6100,9500,12500,16000,19800,24000,28500,33400,38700,44200,50200,56400,63000,69900,77100,84700,92500,100700,109200,118000,127100,136500,146200,156200,166500,177100,188000,199200,210700,222400,234500,246800,259400,272300,285500,299000,312700,326800,341000,355600,370500,385600,401000,416600,432600,448800,465200,482000,499000,516300,533800,551600,569600,588000,606500,625400,644500,663800,683400,703300,723400,743800,764500,785400,806500,827900,849600,871500,893600,916000,938700,961600,984700,1008100,1031800,1055700,1079800,1104200,1128800,1153700,1178800,1204200,1229800,1255600,1281700,1308100,1334600,1361400,1388500,1415800,1443300,1471100,1499100,1527300,1555800,1584350,1612950,1641600,1670300,1699050,1727850,1756700,1785600,1814550,1843550,1872600,1901700,1930850,1960050,1989300,2018600,2047950,2077350,2106800,2136300,2165850}
 devmode = true
spoofDetection:add_action("Check for modders", function()
 print("---")
 modders = 0
 for i = 0, 31 do
	ismodder = 0 moneyspoofed = false kdspoofed = false rankspoofed = false wronghealth = false isgodmode = false wrongspeed = false isvehgod = false noragdoll = false seatbelt = false
	local ply = player.get_player_ped(i)
	if ply then
	   PLAYERID = ply:get_player_id()
      if PLAYERID == -1 then
         print("Player id -1! Unable to retrieve info. Info below is inaccurate")
      end
	   print(player.get_player_name(i) .. ":")
	   -- getting the values
	   money_all_val = globals.get_int(1853131+1+(PLAYERID*888)+205+56)
	   money_cash_val = globals.get_int(1853131+1+(PLAYERID*888)+205+3)
	   money_bank_val = money_all_val-money_cash_val
	   money_all = math_thousand_seperator(money_all_val)
	   money_cash = math_thousand_seperator(money_cash_val)
	   money_bank = math_thousand_seperator(money_bank_val)
 
	   gtakd = math_round(globals.get_float(1853131+1+(PLAYERID*888)+205+26), 2)
	   kills = globals.get_int(1853131+1+(PLAYERID*888)+205+28)
	   deaths = globals.get_int(1853131+1+(PLAYERID*888)+205+29)
	   calckd = math_round(kills/deaths, 2)
 
	   gtarank = globals.get_int(1853131+1+(PLAYERID*888)+205+6)
	   rp = globals.get_int(1853131+1+(PLAYERID*888)+205+1)
	   print("Player ID: " .. PLAYERID)
	   print("Money all: " .. money_all)
	   print("Money bank: " .. money_bank)
	   print("Money cash: " .. money_cash)
	   -- checking if the money value is spoofed !! sometimes the money_all is 0 even if the player has money
	   if money_cash_val > money_all_val or money_bank_val < 0 then moneyspoofed = true ismodder = ismodder + 1 end
	   -- if moneyspoofed then print("Money probably spoofed") end
 
	   print("GTA K/D: " .. gtakd)
	   print("Calc K/D: " .. calckd)
	   print("Kills: " .. kills)
	   print("Deaths: " .. deaths)
	   -- compare calc kd and the kd from the global
	   if gtakd < calckd-0.1 or gtakd > calckd+0.1 then kdspoofed = true ismodder = ismodder + 1 end
	   -- if kdspoofed then print("KD/Kills/Deaths probably spoofed") end
 
	   print("Rank: " .. gtarank)
	   print("RP: " .. rp)
 
	   -- checking if rank global matches with the needed rp, sometimes rank cant be retrieved either and ends up being 0
	   if gtarank > 8000 then rankspoofed = true ismodder = ismodder + 1
	elseif gtarank < 1 then rankspoofed = true ismodder = ismodder + 1
	elseif gtarank > 0 and gtarank <= 120 then
	   if gtarank == 120 then
		  if rp >= 2165850 and rp < 2195450 then rankspoofed = false else rankspoofed = true ismodder = ismodder + 1 end
	   else
		  print("min rp: " .. RPneeded[gtarank])
		  print("max rp: " .. RPneeded[gtarank+1])
		  if rp >= RPneeded[gtarank] and rp < RPneeded[gtarank+1] then rankspoofed = false else rankspoofed = true ismodder = ismodder + 1 end
	   end
	elseif gtarank == 8000 then if rp >= 1787576850 then rankspoofed = false else rankspoofed = true ismodder = ismodder + 1 end
	else
	   if rp >= calcRPover120(gtarank) and rp < calcRPover120(gtarank+1) then
		  print("min rp: " .. calcRPover120(gtarank))
		  print("max rp: " .. calcRPover120(gtarank+1))
		  rankspoofed = false else rankspoofed = true ismodder = ismodder + 1
	   end
	end
	-- if rankspoofed then print("Rank probably spoofed") end
	if ply:get_max_health() < 100 then wronghealth = true ismodder = ismodder + 1 end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then wrongspeed = true ismodder = ismodder + 1 end
	if ply:get_godmode() then isgodmode = true ismodder = ismodder + 1 end
	-- if ply:is_in_vehicle() then if ply:get_current_vehicle():get_godmode() then isvehgod = true print("veh god") end end -- buggy idk, doesnt detect at all idk
	if ply:get_no_ragdoll() then noragdoll = true ismodder = ismodder + 1 end
	if ply:is_in_vehicle() then if ply:get_seatbelt() then seatbelt = true ismodder = ismodder + 1 end end
 
	-- put the loop to retrieve the information here ig (dont forget to check if the rank/money is spoofed (run the above again) )
	if ismodder > 0 then
	   modders = modders + 1
	   print("-------------------------------------")
	   print("Modder detected: " .. player.get_player_name(i))
	   print("Detections: " .. ismodder)
	   if devmode then
		  if rankspoofed then print("Rank") end
		  if moneyspoofed then print("Money") end
		  if kdspoofed then print("KD/Kills/Deaths") end
		  if wronghealth then print("Wrong Health") end
		  if wrongspeed then print("Wrong Speed") end
		  if isgodmode then print("Godmode") end
		  if noragdoll then print("No Ragdoll") end
		  if seatbelt then print("Seatbelt") end
	   end
	   print("-------------------------------------")
	end
	ismodder = 0 moneyspoofed = false kdspoofed = false rankspoofed = false wronghealth = false isgodmode = false wrongspeed = false isvehgod = false noragdoll = false seatbelt = false
 
 
 end
 end
 print("Modders: " .. modders)
 end)