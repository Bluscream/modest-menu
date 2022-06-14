-- Made by zFutox

PLAYERID = localplayer:get_player_id()
local spoofsub = menu.add_submenu("Spoof")
function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end
function calcRPover120(lvl)
	return 25*lvl^2+23575*lvl-1023150
end
RPneeded = {0,800,2100,3800,6100,9500,12500,16000,19800,24000,28500,33400,38700,44200,50200,56400,63000,69900,77100,84700,92500,100700,109200,118000,127100,136500,146200,156200,166500,177100,188000,199200,210700,222400,234500,246800,259400,272300,285500,299000,312700,326800,341000,355600,370500,385600,401000,416600,432600,448800,465200,482000,499000,516300,533800,551600,569600,588000,606500,625400,644500,663800,683400,703300,723400,743800,764500,785400,806500,827900,849600,871500,893600,916000,938700,961600,984700,1008100,1031800,1055700,1079800,1104200,1128800,1153700,1178800,1204200,1229800,1255600,1281700,1308100,1334600,1361400,1388500,1415800,1443300,1471100,1499100,1527300,1555800,1584350,1612950,1641600,1670300,1699050,1727850,1756700,1785600,1814550,1843550,1872600,1901700,1930850,1960050,1989300,2018600,2047950,2077350,2106800,2136300,2165850}
 
local ranktospoof = globals.get_int(1853131+1+(PLAYERID*888)+205+6)
spoofsub:add_int_range("Rank", 10, 1, 8000, function() 
	return ranktospoof
end, function(rankval)
	ranktospoof = rankval
	anyspoof = true
	spoofrank = true
end)
 
local bankmoneytospoof = globals.get_int(1853131+1+(PLAYERID*888)+205+56)-globals.get_int(1853131+1+(PLAYERID*888)+205+3)
spoofsub:add_int_range("Money in bank", 1000000, 0, 1000000000, function() 
	return bankmoneytospoof
end, function(bankmoneyval)
	bankmoneytospoof = bankmoneyval
	anyspoof = true
	spoofbankmoney = true
end)
 
local cashtospoof = globals.get_int(1853131+1+(PLAYERID*888)+205+3)
spoofsub:add_int_range("Cash", 1000000, 0, 1000000000, function() 
	return cashtospoof
end, function(cashval)
	cashtospoof = cashval
	anyspoof = true
	spoofcash = true
	spoofbankmoney = true
end)
 
local killstospoof = globals.get_int(1853131+1+(PLAYERID*888)+205+28)
spoofsub:add_int_range("Kills (!: KD)", 100, 0, 1000000, function() 
	return killstospoof
end, function(killsval)
	killstospoof = killsval
	anyspoof = true
	spoofkills = true
	spoofkdsimple = true
	spoofdeaths = true
end)
 
local deathstospoof = globals.get_int(1853131+1+(PLAYERID*888)+205+29)
spoofsub:add_int_range("Deaths (!: KD)", 100, 0, 1000000, function() 
	return deathstospoof
end, function(deathsval)
	deathstospoof = deathsval
	spoofdeaths = true
	anyspoof = true
	spoofkills = true
	spoofkdsimple = true
end)
 
local kdprotectedtospoof = round(globals.get_int(1853131+1+(PLAYERID*888)+205+28)/globals.get_int(1853131+1+(PLAYERID*888)+205+29), 2)
spoofsub:add_float_range("K/D (!: Kills/Deaths)", 1.0, 0, 1000.0, function() 
	return kdprotectedtospoof
end, function(kdprotectedval)
	kdprotectedtospoof = kdprotectedval
	anyspoof = true
	spoofkdprotected = true
	spoofkills = true
	spoofdeaths = true
end)
 
 
spoofsub:add_action("---", function() end)
spoofsub:add_action("Start Spoof", function()
	if not anyspoof then print("[!] Please choose at least 1 option to spoof.") return end
	rptoadd = math.random(1,750)
	-- while testv
	-- do
		if spoofrank then 
			globals.set_int(1853131+1+(PLAYERID*888)+205+6, ranktospoof)
			if ranktospoof == 8000 then globals.set_int(1853131+1+(PLAYERID*888)+205+1, 1787576850+rptoadd)
			elseif ranktospoof > 0 and ranktospoof <= 120 then globals.set_int(1853131+1+(PLAYERID*888)+205+1, RPneeded[ranktospoof]+rptoadd)
			else globals.set_int(1853131+1+(PLAYERID*888)+205+1, 25*ranktospoof^2+23575*ranktospoof-1023150)
			end
		end
		if spoofcash then globals.set_int(1853131+1+(PLAYERID*888)+205+3, cashtospoof) end
		if spoofbankmoney then globals.set_int(1853131+1+(PLAYERID*888)+205+56, bankmoneytospoof+globals.get_int(1853131+1+(PLAYERID*888)+205+3)) end
		if spoofkills then globals.set_int(1853131+1+(PLAYERID*888)+205+28, killstospoof) globals.set_float(1853131+1+(PLAYERID*888)+205+26, round(globals.get_int(1853131+1+(PLAYERID*888)+205+28)/globals.get_int(1853131+1+(PLAYERID*888)+205+29), 2)) end
		if spoofdeaths then globals.set_int(1853131+1+(PLAYERID*888)+205+29, deathstospoof) globals.set_float(1853131+1+(PLAYERID*888)+205+26, round(globals.get_int(1853131+1+(PLAYERID*888)+205+28)/globals.get_int(1853131+1+(PLAYERID*888)+205+29), 2)) end
		if spoofkdprotected then globals.set_int(1853131+1+(PLAYERID*888)+205+28, math.floor(round(globals.get_int(1853131+1+(PLAYERID*888)+205+29), 0)*kdprotectedtospoof)) globals.set_float(1853131+1+(PLAYERID*888)+205+26, globals.get_int(1853131+1+(PLAYERID*888)+205+28)/globals.get_int(1853131+1+(PLAYERID*888)+205+29)) end
	sleep(1)
	--end
end)
spoofsub:add_action("---", function() end)
infosub = spoofsub:add_submenu("Information")
infosub:add_action("[*] Detection proof spoof", function() end)
infosub:add_action("[*] ! = not compatible without risks", function() end)
infosub:add_action("[*] ! = Using together can break things", function() end)
infosub:add_action("[*] This is a version that is protected", function() end)
infosub:add_action("     against some spoof detections", function() end)
infosub:add_action("---", function() end)
infosub:add_action("Creator: Bababoiiiii#7176", function() end)
infosub:add_action("Idea: ΞΛZТΞΛ#3171", function() end)