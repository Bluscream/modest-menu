-- Made by zFutox
spoofdetect = menu.add_submenu("Detect Spoof")
 
function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end
 
function getmoney(PLAYERID)
	money_all_val = globals.get_int(1853131+1+(PLAYERID*888)+205+56)
	money_cash_val = globals.get_int(1853131+1+(PLAYERID*888)+205+3)
	money_bank_val = money_all_val-money_cash_val
	return money_all_val, money_cash_val, money_bank_val
end
 
function getkd(PLAYERID)
	gtakd_val = round(globals.get_float(1853131+1+(PLAYERID*888)+205+26), 2)
	kills_val = globals.get_int(1853131+1+(PLAYERID*888)+205+28)
	deaths_val = globals.get_int(1853131+1+(PLAYERID*888)+205+29)
	calckd_val = round(kills_val/deaths_val, 2)	
	return gtakd_val, kills_val, deaths_val, calckd_val
end
 
function getrank(PLAYERID)
	gtarank_val = globals.get_int(1853131+1+(PLAYERID*888)+205+6)
	rp_val = globals.get_int(1853131+1+(PLAYERID*888)+205+1)
	return gtarank_val, rp_val
end
 
function calcRPover120(lvl)
	return 25*lvl^2+23575*lvl-1023150
end
RPneeded = {0,800,2100,3800,6100,9500,12500,16000,19800,24000,28500,33400,38700,44200,50200,56400,63000,69900,77100,84700,92500,100700,109200,118000,127100,136500,146200,156200,166500,177100,188000,199200,210700,222400,234500,246800,259400,272300,285500,299000,312700,326800,341000,355600,370500,385600,401000,416600,432600,448800,465200,482000,499000,516300,533800,551600,569600,588000,606500,625400,644500,663800,683400,703300,723400,743800,764500,785400,806500,827900,849600,871500,893600,916000,938700,961600,984700,1008100,1031800,1055700,1079800,1104200,1128800,1153700,1178800,1204200,1229800,1255600,1281700,1308100,1334600,1361400,1388500,1415800,1443300,1471100,1499100,1527300,1555800,1584350,1612950,1641600,1670300,1699050,1727850,1756700,1785600,1814550,1843550,1872600,1901700,1930850,1960050,1989300,2018600,2047950,2077350,2106800,2136300,2165850}
 
 
 
-- SETTINGS
 
devmode = false
devmodep = false
 
errorproof = true -- this will prevent non correct data bein false detected
errorprooflimit = true
errorprooflimitinsec = 10 -- it can take a while to get the data of some people so you might want that. below 10 sec will often not be enough (testing)
 
extraresults = true -- best not to use with devmode(p)																		
 
-- SETTINGS END
 
if errorprooflimitinsec < 0 and errorprooflimit == true then print("[Check Spoof] Invalid error limit, removing limit...") errorprooflimit = false else errorprooflimitinsec = round(errorprooflimitinsec, 1) end
 
spoofdetect:add_action("Check for Spoof (console)", function()
	resultlistname = {}
	resultlistdets = {}    
	modders = 0
	for i = 0, 31 do
		ismodder = 0 moneyspoofed = false kdspoofed = false rankspoofed = false errorprooflimitcount = 0
		local ply = player.get_player_ped(i)
		if ply then
			if ply:get_player_id() ~= -1 then
				NAME_before = player.get_player_name(i)
				PLAYERID = ply:get_player_id()
 
				money_all, money_cash, money_bank = getmoney(PLAYERID)
				gtakd, kills, deaths, calckd = getkd(PLAYERID)
				gtarank, rp = getrank(PLAYERID)
 
				if errorproof then
					if money_all == 0 and money_cash ~= 0 or gtarank == 0 and rp == 0 then
						print("[!] Couldn't collect data from: " .. NAME_before .. ". Trying again...")
						if errorprooflimit then
							repeat sleep(0.1) errorprooflimitcount = round(errorprooflimitcount+0.1, 1) until(globals.get_int(1853131+1+(PLAYERID*888)+205+56) ~= 0 and globals.get_int(1853131+1+(PLAYERID*888)+205+6) ~= 0 or player.get_player_name(i) ~= NAME_before or errorprooflimitcount == errorprooflimitinsec)
							if errorprooflimitcount == errorprooflimitinsec then print("[!] Timeout collecting information from: " .. NAME_before) goto nextplayer end
						else
							repeat sleep(0.1) until(globals.get_int(1853131+1+(PLAYERID*888)+205+56) ~= 0 and globals.get_int(1853131+1+(PLAYERID*888)+205+6) ~= 0 or player.get_player_name(i) ~= NAME_before)
						end
						if player.get_player_name(i) ~= nil then
							NAME_now = player.get_player_name(i)
							if NAME_now ~= NAME_before then print("[*] Player changed") end
							money_all, money_cash, money_bank = getmoney(PLAYERID)
							gtakd, kills, deaths, calckd = getkd(PLAYERID)
							gtarank, rp = getrank(PLAYERID)
							print("[*] Data found for: " .. NAME_now)
						else 
							print("[*] " .. NAME_before .. " probably left") goto nextplayer
						end
					end
				end
				if money_cash > money_all or money_bank < 0 then moneyspoofed = true ismodder = ismodder + 1 end
 
				if gtakd < calckd-0.1 or gtakd > calckd+0.1 then kdspoofed = true ismodder = ismodder + 1 end
 
				if gtarank > 8000 then rankspoofed = true ismodder = ismodder + 1 
				elseif gtarank < 1 then rankspoofed = true ismodder = ismodder + 1 
				elseif gtarank > 0 and gtarank <= 120 then
					if gtarank == 120 then 
						if rp >= 2165850 and rp < 2195450 then rankspoofed = false else rankspoofed = true ismodder = ismodder + 1 end 		
					else	
						if rp >= RPneeded[gtarank] and rp < RPneeded[gtarank+1] then rankspoofed = false else rankspoofed = true ismodder = ismodder + 1 end
					end
				elseif gtarank == 8000 then if rp >= 1787576850 then rankspoofed = false else rankspoofed = true ismodder = ismodder + 1 end
				else 
					if rp >= calcRPover120(gtarank) and rp < calcRPover120(gtarank+1) then 		
						rankspoofed = false else rankspoofed = true ismodder = ismodder + 1
					end
				end
				
				if ismodder > 0 then
					modders = modders + 1
					if extraresults then
						resultlistname[modders] = player.get_player_name(i)
						resultlistdets[modders] = ismodder
					else
						print("-------------------------------------")
						print("[*] Spoof detected: " .. player.get_player_name(i) .. " (" .. ismodder .. " detections)")
					end
					if devmode then
						print(player.get_player_name(i) .. ":")
						if rankspoofed then print("Rank probably spoofed") end
						if moneyspoofed then print("Money probably spoofed") end
						if kdspoofed then print("KD/Kills/Deaths probably spoofed") end
					end
					if devmodep then
						print(player.get_player_name(i) .. ":")
						print("Player ID: " .. PLAYERID)
						print("Money all: " .. money_all)
						print("Money bank: " .. money_bank)
						print("Money cash: " .. money_cash)
						print("GTA K/D: " .. gtakd)
						print("Calc K/D: " .. calckd) 
						print("Kills: " .. kills)
						print("Deaths: " .. deaths)
						print("Rank: " .. gtarank)
						print("RP: " .. rp)
					end
				end
			else print("[!] Can't retrieve data from: " .. player.get_player_name(i))
			end
			::nextplayer::
		end
	end
	print("---")
	print("[*] " .. modders .. " modders \n")
	if extraresults then for x = 1,modders do print(resultlistname[x] .. " (" .. resultlistdets[x] .. " detections)") end end
	print("\n[*] Finished!")
end)
spoofdetect:add_action("---", function() end)
spoofdetect:add_action("Creator: Bababoiiiii#7176", function() end)