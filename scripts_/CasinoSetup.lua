local CrVO=2725269			--v1.60 Create Vehicle offset
local DTO=262145+28469			--v1.60 Casino Target value offset
local DPCO=1969064				--v1.60 Casino Player Cut offset

local HS0RT=22337				--v1.60 Casino Real Take(local)
local HS0FG=52899				--v1.60 Casino Finger Graft(local)
local HS0KM=54696				--v1.60 Casino Keypad Max(local)
local HS0KS=54713				--v1.60 Casino Keypad Stat(local)
local HS0VT=10068+37			--v1.60 Casino Vault Total(local)
local HS0VS=10068+7				--v1.60 Casino Vault Stat(local)

local function mpx() return stats.get_int("MPPLY_LAST_MP_CHAR") end local Weapon=0

local CsSet=menu.add_submenu("Casino Setup")
local CSHT={} CSHT[3]="Diamonds" CSHT[2]="Artwork" CSHT[2]="Gold" CSHT[0]="Cash"
CsSet:add_array_item("-Choose Target>", CSHT, function() return stats.get_int("MP"..mpx().."_H3OPT_TARGET") end, function(H3t)
	stats.set_int("MP"..mpx().."_H3OPT_TARGET", H3t) end)

local CSHRA={} CSHRA[0]="Normal Mode" CSHRA[1]="Hard Mode"
CsSet:add_array_item("Randm Approach with>", CSHRA, function()
	if stats.get_int("MP"..mpx().."_H3_HARD_APPROACH")==stats.get_int("MP"..mpx().."_H3OPT_APPROACH") then
		return 1 else return 0 end end, function(H3lvl)
	LstAp=stats.get_int("MP"..mpx().."_H3_LAST_APPROACH") HrdAp=stats.get_int("MP"..mpx().."_H3_HARD_APPROACH")
	if H3lvl==1 then Apr=HrdAp else
		if LstAp ~= 1 and HrdAp ~= 1 then Apr=1 Weapon=1
		elseif LstAp ~= 2 and HrdAp ~= 2 then Apr=2 Weapon=0
		else Apr=3 Weapon=0 end end
	stats.set_int("MP"..mpx().."_H3OPT_APPROACH", Apr)
end)

local CSHAP={} CSHAP[-1]="Unselected" CSHAP[1]="Silent and Sneaky" CSHAP[2]="SilentnSneaky-HARD" CSHAP[3]="TheBigCON"
CSHAP[4]="TheBigCON-HARD" CSHAP[5]="Aggressive" CSHAP[6]="Aggressive-HARD" local weapon=0
CsSet:add_array_item("  Choose Approach>", CSHAP, function() return 2*stats.get_int("MP"..mpx().."_H3OPT_APPROACH")-1 end, function(H3AO)
	if H3AO==1 then CSAP=1 LSTA=3 HRDA=2 Weapon=1 elseif H3AO==2 then CSAP=1 LSTA=3 HRDA=1 Weapon=1 
	elseif H3AO==3 then CSAP=2 LSTA=3 HRDA=1 Weapon=0 elseif H3AO==4 then CSAP=2 LSTA=3 HRDA=2 Weapon=0 
	elseif H3AO==5 then CSAP=3 LSTA=1 HRDA=2 Weapon=0 else CSAP=3 LSTA=1 HRDA=3 Weapon=0 end
	stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", LSTA)
	stats.set_int("MP"..mpx().."_H3_HARD_APPROACH", HRDA)
	stats.set_int("MP"..mpx().."_H3OPT_APPROACH", CSAP)
end)

local CSHHKR={} CSHHKR[0]="Unselected" CSHHKR[1]="Rickie Lukens" CSHHKR[3]="Yohan Blair"
CSHHKR[2]="Christian Feltz" CSHHKR[5]="Paige Harris" CSHHKR[4]="Avi Schwartzman"
CsSet:add_array_item("Choose Hacker>", CSHHKR, function() return stats.get_int("MP"..mpx().."_H3OPT_CREWHACKER") end, function(Hkr)
	stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", Hkr)
end)

local CSHCRO={} CSHCRO[1]="Choose In-Game" CSHCRO[2]="Cheap(Karl,Karim)" CSHCRO[3]="2xChester Mccoy" CSHCRO[4]="Best(Chester,Eddie)"
CsSet:add_array_item("Rest of the Crew>", CSHCRO, function()
	if stats.get_int("MP"..mpx().."_H3OPT_CREWWEAP")==1 and stats.get_int("MP"..mpx().."_H3OPT_CREWDRIVER")==1 then return 2
	elseif stats.get_int("MP"..mpx().."_H3OPT_CREWWEAP")==4 and stats.get_int("MP"..mpx().."_H3OPT_CREWDRIVER")==5 then return 3
	elseif stats.get_int("MP"..mpx().."_H3OPT_CREWWEAP")==4 and stats.get_int("MP"..mpx().."_H3OPT_CREWDRIVER")==3 then return 4
	else return 1 end end, function(CrS) aap=stats.get_int("MP"..mpx().."_H3OPT_APPROACH")
	if CrS==1 then if aap==1 then BT=115 elseif aap==2 then BT=147 elseif aap==3 then BT=787 end stats.set_int("MP"..mpx().."_H3OPT_BITSET1", BT)
	elseif CrS==2 then stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 1) stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
	elseif CrS==3 then stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 4) stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 5)
	else stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 4) stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 3) end
end)

CsSet:add_action("             [[[*Complete Board1*]]]", function() stats.set_int("MP"..mpx().."_H3OPT_BITSET1", -1) end)

local CSHHKR={} CSHHKR[0]="Unselected" CSHHKR[1]="Geometric" CSHHKR[3]="Hunter" CSHHKR[2]="Christian Feltz"
CSHHKR[5]="Oni Half Mask" CSHHKR[4]="Emoji" CSHHKR[5]="Ornate Skull" CSHHKR[6]="Lucky Fruit" CSHHKR[7]="Guerilla"
CSHHKR[8]="Clown" CSHHKR[9]="Animal" CSHHKR[10]="Riot" CSHHKR[11]="Oni" CSHHKR[12]="Hockey"
CsSet:add_array_item("-Choose Mask>", CSHHKR, function() return stats.get_int("MP"..mpx().."_H3OPT_MASKS") end, function(H3Msk)
	stats.set_int("MP"..mpx().."_H3OPT_MASKS", H3Msk)
end)

CSetEx=CsSet:add_submenu("                     CustomizeMore")
local EMP, INFS, BUG, YNG, Grp6, MTC, NOO, FrF, ARM, BrM=0, 0, 0, 0, 0, 0, 0, 0, 0, 0
local emp, infs, bug, yng, mtc, grp, frf, noo, arm, brm=1, 1, 1, 1, 1, 1, 1, 1, 1, 1
local YN={} YN[0]="No" YN[1]="Yes"

APRSP=CSetEx:add_submenu("Approach Specific options")
local function CurAp()
	if stats.get_int("MP"..mpx().."_H3OPT_APPROACH")==1 then
		APRSP:add_action("                   [Silent and Sneaky]", function() end)
		APRSP:add_array_item("EMP device", YN, function() return emp end, function(Em)
			emp=Em if Em==1 then EMP=32 else EMP=0 end end)
		APRSP:add_array_item("Infiltration Suits", YN, function() return infs end, function(Inf)
			infs=Inf if Inf==1 then INFS=8 else INFS=0 end end)
	elseif stats.get_int("MP"..mpx().."_H3OPT_APPROACH")==2 then
		APRSP:add_action("                         [The Big Con]", function() end)
		APRSP:add_action("         __EntryDisguise__", function() end)
		APRSP:add_array_item("Bugstars Gear", YN, function() return bug end, function(BGS)
			bug=BGS if BGS==1 then BUG=768 else BUG=0 end end)
		APRSP:add_array_item("Yung Ancestors Gear", YN, function() return yng end, function(YA)
			yng=YA if YA==1 then YNG=49152 else YNG=0 end end)
		APRSP:add_array_item("Grouppe6 Gear", YN, function() return grp end, function(G6)
			grp=G6 if G6==1 then Grp6=12288 else Grp6=0 end end)
		APRSP:add_array_item("Maintenance Gear", YN, function() return mtc end, function(MNt)
			mtc=MNt if MNt==1 then MTC=3072 else MTC=0 end end)
		APRSP:add_action("              __ExitDisguise__", function() end) 
		APRSP:add_array_item("Fire Fighter Outfit", YN, function() return frf end, function(FR)
			frf=FR if FR==1 then FrF=131072 else FrF=0 end end)
		APRSP:add_array_item("Noose Outfit", YN, function() if NOO~=0 then return 1 else return 0 end end, function(Nse)
			noo=Nse if Nse==1 then NOO=65536 else NOO=0 end end)
	elseif stats.get_int("MP"..mpx().."_H3OPT_APPROACH")==3 then
		APRSP:add_action("                            [Aggressive]", function() end)
		APRSP:add_array_item("Reinforced Armour", YN, function() return arm end, function(Ar)
			arm=Ar if Ar==1 then ARM=1048576 else ARM=0 end end)
		APRSP:add_array_item("Boring Machine", YN, function() if BrM~=0 then return 1 else return 0 end end, function(Br)
			brm=Br if Br==1 then BrM=524288 else BrM=0 end end)
	else APRSP:add_action("    No Approach detected", function() end) APRSP:add_action("Try going back to MainMenu once", function() end)
	end
end

GUN=CSetEx:add_submenu("Choose a Gunman and Weapon")
local KaAb, ChRe, PaMc, ChMc, GuMo={}, {}, {}, {}, {}
local we1, we2, we3, we4, we5=0, 0, 0, 0, 0
local function WEAPON()
	GUN:add_action("            (IfnotSetAlready)Choose one", function() end)
	WEP=stats.get_int("MP"..mpx().."_H3OPT_CREWWEAP") APR=stats.get_int("MP"..mpx().."_H3OPT_APPROACH") Wa=stats.get_int("MP"..mpx().."_H3OPT_WEAPS")
	
	Abo, Mot, Ree, Mcc, Mcr="", "", "", "", "" if WEP==1 then Abo="*" AB=Wa elseif WEP==2 then Mot="*" MO=Wa
	elseif WEP==3 then Ree="*" RE=Wa elseif WEP==4 then Mcc="*" MC=Wa elseif WEP==5 then Mcr="*" MR=Wa end
	if APR==1 then kaab="MicroSMG" kaaB="MachinePistol" elseif APR==2 then kaab="MicroSMG" kaaB="Shotgun"
	elseif APR==3 then kaab="Shotgun" kaaB="Revolver" else kaab="Gun1" kaaB="Gun2" end
	if APR==1 or APR==3 then chre="SMG" chrE="Shotgun" elseif APR==2 then chre="Machine Pistol" chrE="Shotgun"
	else chre="Gun1" chrE="Gun2" end GuMo[0]="Rifle" GuMo[1]="Shotgun"
	if APR==1 then chmc="MicroSMG" chmC="MachinePistol" elseif APR==2 then chmc="MicroSMG" chmC="Shotgun"
	elseif APR==3 then chmc="MkII Shotgun" chmC="MkII Rifle" else chmc="Gun1" chmC="Gun2" end
	if APR==1 then pamc="MicroSMG" pamC="MachinePistol" elseif APR==2 then pamc="MicroSMG" pamC="Shotgun"
	elseif APR==3 then pamc="Shotgun" pamC="Revolver" else pamc="Gun1" pamC="Gun2" end
	KaAb[0]=kaab KaAb[1]=kaaB ChRe[0]=chre ChRe[1]=chrE ChMc[0]=chmc ChMc[1]=chmC PaMc[0]=pamc PaMc[1]=pamC
	
	GUN:add_array_item("Karl Abolaji "..Abo, KaAb, function() if not AB then return we1 else return Wa end end, function(KaW)
		we1=KaW stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 1) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", KaW) end)
	GUN:add_array_item("Charlie Reed"..Ree, ChRe, function() if not RE then return we3 else return Wa end end, function(ChW)
		we3=ChW stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 3) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", ChW) end)
	GUN:add_array_item("Patrick Mcreary"..Mcr, PaMc, function() if not MR then return we5 else return Wa end end, function(PaW)
		we5=PaW stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 5) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", PaW) end)
	GUN:add_array_item("Gustavo Mota"..Mot, GuMo, function() if not MO then return we2 else return Wa end end, function(GuW)
		we2=GuW stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 2) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", GuW) end)
	GUN:add_array_item("Chester Mccoy"..Mcc, ChMc, function() if not MC then return we4 else return Wa end end, function(ChW)
		we4=ChW stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 4) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", ChW) end)
end

CAR=CSetEx:add_submenu("Choose a Driver and Car")
local KaDe, ZaNe, TaMa, EdTo, CcMc={}, {}, {}, {}, {}
local ca1, ca2, ca3, ca4, ca5=3, 3, 3, 3, 3
local function DRIVER()
	CAR:add_action("            (IfnotSetAlready)Choose one", function() end)
	Ca=stats.get_int("MP"..mpx().."_H3OPT_VEHS") drv=stats.get_int("MP"..mpx().."_H3OPT_CREWDRIVER")
	den, mar, toh, nel, mcc="", "", "", "", ""
	if drv==1 then den="*" DE=Ca elseif drv==2 then mar="*" MA=Ca elseif drv==3 then toh="*" TO=Ca elseif drv==4 then nel="*" NE=Ca elseif drv==5 then mcc="*" MR=Ca end
	KaDe[0]="Issi Classic" KaDe[1]="ASBO" KaDe[2]="Kanjo" KaDe[3]="Sentinel Classic"
	ZaNe[0]="Manchez" ZaNe[1]="Stryder" ZaNe[2]="Defiler" ZaNe[3]="Lectro"
	TaMa[0]="Retinue MKII" TaMa[1]="Drift Yosemite" TaMa[2]="Sugoi" TaMa[3]="Jugular"
	EdTo[0]="Sultan Classic" EdTo[1]="Gauntlet Classic" EdTo[2]="Elie" EdTo[3]="Komoda"
	CcMc[0]="Zhaba" CcMc[1]="Vagrant" CcMc[2]="Outlaw" CcMc[3]="Everon"
	
	CAR:add_array_item("Karim Denz"..den, KaDe, function() if not DE then return ca1 else return Ca end end, function(KaC)
		ca1=KaC stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1) stats.set_int("MP"..mpx().."_H3OPT_VEHS", KaC) end)
	CAR:add_array_item("Zach Nelson(Bikes)"..nel, ZaNe, function() if not NE then return ca4 else return Ca end end, function(ZaC)
		ca4=ZaC stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 4) stats.set_int("MP"..mpx().."_H3OPT_VEHS", ZaC) end)
	CAR:add_array_item("Taliana Martinez"..mar, TaMa, function() if not MA then return ca2 else return Ca end end, function(TaC)
		ca2=TaC stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 2) stats.set_int("MP"..mpx().."_H3OPT_VEHS", TaC) end)
	CAR:add_array_item("Eddie Toh"..toh, EdTo, function() if not TO then return ca3 else return Ca end end, function(EdC)
		ca3=EdC stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 3) stats.set_int("MP"..mpx().."_H3OPT_VEHS", EdC) end)
	CAR:add_array_item("Chester Mccoy"..mcc, CcMc, function() if not MR then return ca5 else return Ca end end, function(ChC)
		ca5=ChC stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 5) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", ChC) end)
end

Comm=CSetEx:add_submenu("Common Missions")
local ClVeh, GuDec, PowD, DuSh, PRoute, APSM=0, 0, 0, 0, 0, 0
local prt, dug, powd, dec, clv=1, 1, 1, 1, 1

Comm:add_int_range("Security Pass Level", 1, 0, 2, function() return stats.get_int("MP"..mpx().."_H3OPT_KEYLEVELS") end, function(SPss)
	stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", SPss)
end)
Comm:add_array_item("Patrol Routes", YN, function() return prt end, function(CPrt)
	prt=CPrt if CPrt==1 then PRoute=2 else PRoute=0 end
end)
Comm:add_array_item("Duggan Shipments", YN, function() return dug end, function(DugS)
	dug=DugS if DugS==1 then DuSh=4 stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
	else DuSh=0 stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 0) end
end)
Comm:add_array_item("Power Drills", YN, function() return powd end, function(PwDr)
	powd=PwDr if PwDr==1 then PowD=16 else PowD=0 end
end)
Comm:add_array_item("GunMan Decoy", YN, function() return dec end, function(Dec)
	dec=Dec if ClVeh==1 then GuDec=64 else GuDec=0 end
end)
Comm:add_array_item("Clean Vehicle", YN, function() return clv end, function(ClV)
	clv=ClV if ClV==1 then ClVeh=128 else ClVeh=0 end
end)

CSetEx:add_action("                [[[*Complete Board2*]]]", function()
	if stats.get_int("MP"..mpx().."_H3OPT_APPROACH")==1 then APSM=EMP+INFS
	elseif stats.get_int("MP"..mpx().."_H3OPT_APPROACH")==2 then APSM=BUG+YNG+Grp6+MTC+NOO+FrF
	else APSM=ARM+BrM end
	stats.set_int("MP"..mpx().."_H3OPT_BITSET0", ClVeh+GuDec+PowD+DuSh+PRoute+APSM)
end)

CsSet:add_action("                [[[Complete Board2]]]", function()
	stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3) stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
	stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3) stats.set_int("MP"..mpx().."_H3OPT_WEAPS", Weapon)
	stats.set_int("MP"..mpx().."_H3OPT_BITSET0", -210) --without drill,cleanveh,deco
end)

local CsCT=menu.add_submenu("    Casino Cut")
local H3C1, H3C2, H3C3, H3C4, OH, MaX=0, 0, 0, 0, 0, nil
local perc={ "Detect", 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100 }
local CaSHE={} CaSHE[1]="Selected" CaSHE[2]="All 100%" CaSHE[3]="Others 100%" CaSHE[4]="Others 85%"

local function CUT()
	for i=0,3 do if player.get_player_ped(i)==localplayer then freem=false else freem=true end end
	if globals.get_int(DPCO+1) <= 1000 and globals.get_int(DPCO+1) >= 0 then
		if globals.get_int(DPCO+1)>=15 then if player.get_player_ped(0)==localplayer or freem then P1="You" else P1=player.get_player_name(0) end
		if globals.get_int(DPCO+2)>=15 then if player.get_player_ped(1)==localplayer then P2="You" else P2=player.get_player_name(1) end
		if globals.get_int(DPCO+3)>=15 then if player.get_player_ped(2)==localplayer then P3="You" else P3=player.get_player_name(2) end
		if globals.get_int(DPCO+4)>=15 then if player.get_player_ped(3)==localplayer then P4="You" else P4=player.get_player_name(3) end
		end end end end
		if P1 then CsCT:add_int_range("Player1> "..P1, 5, 15, 150, function() return globals.get_int(DPCO+1) end, function(p1) H3C1=p1 end) end
		if P2 then CsCT:add_int_range("Player2> "..P2, 5, 15, 150, function() return globals.get_int(DPCO+2) end, function(p2) H3C2=p2 end) end 
		if P3 then CsCT:add_int_range("Player3> "..P3, 5, 15, 150, function() return globals.get_int(DPCO+3) end, function(p3) H3C3=p3 end) end
		if P4 then CsCT:add_int_range("Player4> "..P4, 5, 15, 150, function() return globals.get_int(DPCO+4) end, function(p4) H3C4=p4 end) end
		if P2 then CsCT:add_array_item("          <[[Set>>>>>", CaSHE, function() return 1 end, function(CasC)
			if CasC==2 then H3C1, H3C2, H3C3, H3C4=100, 100, 100, 100
			elseif CasC==3 then H3C1, H3C2, H3C3, H3C4=15, 100, 100, 100
			elseif CasC==4 then H3C1, H3C2, H3C3, H3C4=15, 85, 85, 85 end
			MaX=math.max(H3C1, H3C2, H3C3, H3C4)
			if H3C1>=15 then globals.set_int(DPCO+1, H3C1) end
			if H3C2>=15 then globals.set_int(DPCO+2, H3C2) end
			if globals.get_int(DPCO+3) and globals.get_int(DPCO+3)>=15 and H3C3>=15 then globals.set_int(DPCO+3, H3C3) end
			if globals.get_int(DPCO+4) and globals.get_int(DPCO+4)>=15 and H3C4>=15 then globals.set_int(DPCO+4, H3C4) end
		end) end
	end
	CsCT:add_array_item("Get autoTake%(if not <set>)", perc, function() if not MaX then return 1 else return math.floor(MaX/5-1) end end, function(cut)
		if cut>=2 then MaX=(cut+1)*5 else MaX=math.max(globals.get_int(DPCO+4), globals.get_int(DPCO+3), globals.get_int(DPCO+2), globals.get_int(DPCO+1)) end if player.get_player_ped(0)==localplayer then OH=0 else OH=1 end end)
end

local CsHs=menu.add_submenu("        Casino Heist")
local HS0=script("fm_mission_controller") local LPos=nil local POS={} POS[1]="Underground" POS[2]="Locker" local AMTOpt=1
local function IsNPC(ped) if ped==nil or ped:get_pedtype() <= 3 then return false else return true end end
CsHs:add_action("Complete Keypad", function()
	if HS0:is_active() and HS0:get_int(HS0KS)>=0 and HS0:get_int(HS0KS)<=10000 then
		HS0:set_int(HS0KM, 1) HS0:set_int(HS0KS, 6666) sleep(0.2) HS0:set_int(HS0KS, 6666)
		sleep(0.2) HS0:set_int(HS0KS, 6666) sleep(0.2) HS0:set_int(HS0KS, 6666) sleep(0.2)
		HS0:set_int(HS0KS, 6666) sleep(0.2) HS0:set_int(HS0KS, 6666) end
end)
CsHs:add_action("Complete Fingerprint", function()
	if HS0:is_active() and HS0:get_int(HS0FG)==3 or HS0:get_int(HS0FG)==4 then
		HS0:set_int(HS0FG, 5) end
end)
CsHs:add_action("Drill Vault Door", function()
	if HS0:is_active() and HS0:get_int(HS0VT)>=0 or HS0:get_int(HS0VT)<=100 then
		HS0:set_int(HS0VS, HS0:get_int(HS0VT)) end
end)
CsHs:add_array_item("Drop NPCs to ", POS, function() if LPos then return LPos else return 1 end end, function(ps) LPos=ps
	for ped in replayinterface.get_peds() do if IsNPC(ped) then if ped:is_in_vehicle() then
		ped:set_config_flag(62, false) sleep(0.08) ped:set_config_flag(62, true) end
		if not ped:is_in_vehicle() then if ps==1 then ped:set_rotation(vector3(58.04, 0, 0)) ped:set_position(vector3(ped:get_position().y-20))
		else ped:set_position(vector3(2520.59, -287.45, -60.02)) end ped:set_armour(0) ped:set_config_flag(60, false) end end 
	end
end) local peV
CsHs:add_array_item("Ped Vehicles", { "Stop", "Fix" }, function() if peV then return peV else return 1 end end, function(pe)
	peV=pe if pe==2 then for veh in replayinterface.get_vehicles() do if veh:get_acceleration()==0 then veh:set_acceleration(0.34) end end
	else for veh in replayinterface.get_vehicles() do if localplayer:get_current_vehicle()~=veh then veh:set_acceleration(0) end end end
end)
CsHs:add_action("Kill all NPCs", function() menu.kill_all_npcs() end)

CsHs:add_action("                       Modify Loot", function() end)
CsHs:add_int_range("Set Potential Take", 100000, 3290000, 20000000, function()
if localplayer then return globals.get_int(DTO+stats.get_int("MP"..mpx().."_H3OPT_TARGET")) else
return 0 end end, function(PTv) 
	globals.set_int(DTO+stats.get_int("MP"..mpx().."_H3OPT_TARGET"), PTv)
end)
CsHs:add_int_range("Set Real Take", 100000, 150000, 4438000, function() if HS0:is_active() then return HS0:get_int(HS0RT) else return 0 end end, function(RTv) 
	if HS0:is_active() then HS0:set_int(HS0RT, RTv) end
end)

CsHs:add_array_item("(!85%+)AutoMaxTake>", { "Safe", "Max" }, function() return AMTOpt end, function(sf)
	if MaX==nil then return end AMTOpt=sf
	Car=stats.get_int("MP"..mpx().."_H3OPT_CREWDRIVER") Hck=stats.get_int("MP"..mpx().."_H3OPT_CREWHACKER") Gun=stats.get_int("MP"..mpx().."_H3OPT_CREWWEAP")
	if sf==1 then plmx=3300000 else plmx=3660000 end
	if OH then Wp,Dr,Hc=5,5,3 else if Gun==1 then Wp=5 elseif Gun==2 then Wp=9 elseif Gun==3 then Wp=7 elseif Gun==4 then Wp=10  elseif Gun==5 then Wp=8 end
	if Car==1 then Dr=5 elseif Car==2 then Dr=7 elseif Car==3 then Dr=9 elseif Car==4 then Dr=6 elseif Car==5 then Dr=10 end
	if Hck==1 then Hc=3 elseif Hck==2 then Hc=7 elseif Hck==3 then Hc=5 elseif Hck==4 then Hc=10 elseif Hck==5 then Hc=9 end end
	tke=math.floor((plmx*100/MaX)*((((10000/(100-Wp)-100)+(10000/(100-Dr)-100)+(10000/(100-Hc)-100)+(10000/95-100))+100)/100))
	if tke>4438000 then tke=4438000 end HS0:set_int(HS0RT, tke)
end)

local function TP2L(TPx,TPy,TPz,Yaw,Pitch,Roll)
	localplayer:set_rotation(vector3(Yaw,Pitch,Roll)) localplayer:set_position((vector3(TPx, TPy, TPz)))
end

CsHs:add_action("      _____________Teleport_____________", function() end)
CsHs:add_action("TP-Double KeyCard", function() TP2L(2469.234863,-281.168030,-71.994225, -1.049023,0,0) end)
CsHs:add_action("TP-Staff Lobby Entrance", function() TP2L(2547.100098,-269.579987,-60.022987, 3.134611,0,0) end)

CsHs:add_action("    ______Spawn On Suitable Location_____", function() end)
local function MYCREATE_VEHICLE(Hash,cord_x,cord_y,cord_z,pegasus)
	WP, WS, peg=2, 1, 0
	if Hash=="oppressor2" then WP=2 elseif Hash=="apc" or model=="deluxo" then WP=-1
	elseif Hash=="bombushka" then WP=1 elseif Hash=="tampa3" or model=="insurgent3" or model=="halftrack" then WP=3
	elseif Hash=="barrage" then WP=30 end
	globals.set_float(CrVO+7+0, cord_x) globals.set_float(CrVO+7+1, cord_y) globals.set_float(CrVO+7+2, cord_z)
	globals.set_int(CrVO+27+66, joaat(Hash))
	globals.set_int(CrVO+27+28, 1)  -- Weaponised ownerflag
	globals.set_int(CrVO+27+60, 1)
	globals.set_int(CrVO+27+95, 14) -- Ownerflag
	globals.set_int(CrVO+27+94, 2)  -- Personal car ownerflag
	globals.set_int(CrVO+5, 1)      -- SET('i',CarSpawn+0x1168, 1)  --can spawn flag must be odd
	globals.set_int(CrVO+2, 1)      -- SET('i',CarSpawn+0x1180, 1) --spawn toggle gets reset to 0 on car spawn
	globals.set_int(CrVO+3, peg)
	globals.set_int(CrVO+27+74, 1) globals.set_int(CrVO+27+75, 1) globals.set_int(CrVO+27+76, 0) --RGB Neon Amount 1-255 100%-0%
	globals.set_int(CrVO+27+60, 1) --landinggear/vehstate
	globals.set_int(CrVO+27+5, -1) globals.set_int(CrVO+27+6, -1) -- default paintjob primary,secondary 0-120 (-1>>auto)
	globals.set_int(CrVO+27+7, -1)
	globals.set_int(CrVO+27+8, -1)
	globals.set_int(CrVO+27+19, 4)
	globals.set_int(CrVO+27+21, 4)  -- Engine (0-3)
	globals.set_int(CrVO+27+22, 3)
	globals.set_int(CrVO+27+23, 3)  -- Transmission (0-9)
	globals.set_int(CrVO+27+24, 58)
	globals.set_int(CrVO+27+26, 5)  -- Armor (0-18)
	globals.set_int(CrVO+27+27, 1)  -- Turbo (0-1)
	globals.set_int(CrVO+27+65, 2) -- Window tint 0-6
	globals.set_int(CrVO+27+69, -1) -- Wheel type
	globals.set_int(CrVO+27+33, -1) -- Wheel Selection
	globals.set_int(CrVO+27+25, 8)  -- Suspension (0-13)
	globals.set_int(CrVO+27+19, -1)
	globals.set_int(CrVO+27+15, WP) globals.set_int(CrVO+27+20, WS) -- primary,secondary weapon
end

CsHs:add_action("Spawn Unmarked Cruiser", function() MYCREATE_VEHICLE("police4",982.24,-27.73,81.0,0) end)
CsHs:add_action("Spawn Police Maverick", function() MYCREATE_VEHICLE("polmav",966.54,42.75,122.0,0) end)
CsHs:add_action("Spawn Police Mav- side", function() MYCREATE_VEHICLE("polmav",964.94,-131.53,73.5,0) end)

local function null() end
menu.add_bare_item("         ButNot2ThoseWhoWaitTooLate", function() APRSP:clear() GUN:clear() CAR:clear() CsCT:clear() CurAp() WEAPON() DRIVER() CUT() end, null, null, null) --174 254