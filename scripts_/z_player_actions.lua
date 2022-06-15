--settings--
 
	--PLAYERINFO OPTIONS------------------------------------------------------------------------------
	--Set true if you want the PlayerInfo Button or false if you dont want it(Default: true)
	local playerInfoButton = true 
		--set false if you dont want info about the current vehicle of the Player(Default: true)
		local playerVehInfo = true
		--set false if you dont want more info about the Player(Default: true)
		local playerInfo = true
			--set true if you want the health/armour of the Player in percent or false if you want it to be the actual health/armour(Default: false)
			local playerInfoHpPercent = false
		--set false if you dont want to see the distance to the Player(Default: true)
		local playerDistace = true
		--set false if you dont want to see why the player is dispayed as a modder(Default: true)
		local playerModder = true 
		--set false if you dont want to see the current wanted level of the player(Default true)
		local playerWantedLvl = true
 
 
	--GENERAL PlayerList SETTINGS------------------------------------------------------------------------
	--Set true if you want the PlayerHealth to be displayed in percent (Default: false)
	local hpPercent = false
	--Set false if you dont want to see the player health(Default: true)
	local playerHealthBool = true
 
local vehicleList =
{"ADDER"					,3078201489	,"Super"
,"AIRBUS"					,1283517198	,"Service"
,"AIRTUG"					,1560980623	,"Service"	
,"AKULA"					,1181327175	,"Helicopter"
,"AKUMA"					,1672195559	,"Motorcycle"
,"ALPHA"					,767087018	,"Sport"
,"ALPHAZ1"					,2771347558	,"Plane"
,"AMBULANCE"				,1171614426	,"Emergency"
,"ANNIHILATOR"				,837858166	,"Helicopter"	
,"APC"						,562680400	,"Military"
,"ARDENT"					,159274291	,"SportsClassic"
,"ARMYTANKER"				,3087536137	,"Trailer"
,"ARMYTRAILER"				,2818520053	,"Trailer"
,"ARMYTRAILER2"				,2657817814	,"Trailer"
,"ASBO"						,1118611807	,"Compact"
,"ASEA"						,2485144969	,"Sedan"
,"ASEA SNOWY"				,2487343317	,"Sedan"
,"ASTEROPE"					,2391954683	,"Sedan"
,"ASTRON"					,629969764	,"SUV"
,"ATARCH"					,3981782132	,"Super"
,"AVARUS"					,2179174271	,"Motorcycle"
,"AVENGER"					,2176659152	,"Plane"
,"AVENGER2"					,408970549	,"Plane"
,"BAGGER"					,2154536131	,"Motorcycle"
,"BALETRAILER"				,3895125590	,"Trailer"
,"BALLER"					,3486135912 ,"SUV"
,"BALLER RANGEROVER EVOQUE"	,142944341	,"SUV"
,"BALLER LE LWB"			,634118882	,"SUV"
,"BALLER LE ARMORED"		,470404958	,"SUV"
,"BALLER LE LWB ARMORED"	,666166960	,"SUV"
,"BALLER ST"				,359875117	,"SUV"
,"BANSHEE"					,3253274834	,"Sport"
,"BANSHEE 900R"				,633712403	,"Super"
,"BARRACKS BACKCOVER"		,3471458123	,"Emergency"
,"BARRACKS2"				,1074326203	,"Emergency"
,"BARRACKS3"				,630371791	,"Emergency"
,"BARRAGE"					,4081974053	,"Military"
,"BATI 801"					,4180675781	,"Motorcycle"
,"BATI 801 LIVERY"			,3403504941	,"Motorcycle"
,"BENSON"					,2053223216	,"Truck"
,"BESRA"					,1824333165	,"Plane"
,"BESTIAGTS"				,1274868363	,"Sport"
,"BF400"					,86520421	,"Motorcycle"
,"BFINJECTION"				,1126868326	,"Offroad"
,"BIFF"						,850991848	,"Truck"
,"BIFTA"					,3945366167	,"Offroad"
,"BISON"					,4278019151	,"Pickup"
,"BISON COWBOY CONSTRUCTION",2072156101	,"Pickup"
,"BISON LANDSCAPEING"		,1739845664	,"Pickup"
,"BEEJAY XL"				,850565707	,"SUV"
,"BLADE"					,3089165662	,"Muscle"	
,"BLAZER"					,2166734073	,"Offroad"
,"BLAZER LIFEGUARD"			,4246935337	,"Offroad"
,"BLAZER TREVOR HOTROD"		,3025077634	,"Offroad"
,"BLAZER STREET"			,3854198872	,"Offroad"
,"BLAZER AQUA"				,2704629607	,"Offroad"
,"BLIMP"					,4143991942	,"Helicopter"
,"BLIMP XERO"				,3681241380	,"Helicopter"	
,"BLIMP3"					,3987008919	,"Plane"
,"BLISTA"					,3950024287	,"Compact"
,"BLISTA COMPACT"			,1039032026	,"Sport"
,"BLISTA GO GO MONKEY"		,3703315515	,"Sport"
,"BMX"						,1131912276	,"Bicycle"
,"BOATTRAILER"				,524108981	,"Trailer"
,"BOBCATXL"					,1069929536	,"Pickup"
,"BODHI TREVOR"				,2859047862	,"Offroad"
,"BOMBUSHKA"				,4262088844	,"Plane"
,"BOXVILLE WATER&POWER" 	,2307837162	,"Truck"
,"BOXVILLE POSTAL"			,4061868990	,"Truck"
,"BOXVILLE HUMANE"			,121658888	,"Truck"
,"BOXVILLE POST OP"			,444171386	,"Truck"
,"BOXVILLE ARMORED"			,682434785	,"Truck"
,"BR8"						,1492612435	,"Open Wheel"
,"BRAWLER"					,2815302597	,"Offroad"
,"BRICKADE"					,3989239879	,"Service"
,"BRIOSO"					,1549126457	,"Compact"
,"BRUISER"					,668439077	,"Offroad"
,"BRUISER2"					,2600885406	,"Offroad"
,"BRUISER3"					,2252616474	,"Offroad"
,"BRUTUS"					,2139203625	,"Offroad"
,"BRUTUS2"					,2403970600	,"Offroad"
,"BRUTUS3"					,2038858402	,"Offroad"
,"BTYPE"					,117401876	,"SportsClassic"
,"BTYPE FRAENKEN"			,3463132580	,"Muscle"
,"BTYPE ROSEVELT"			,3692679425	,"SportsClassic"
,"BUCCANEER"				,3612755468	,"Muscle"
,"BUCCANEER CUSTOM"			,3281516360	,"Muscle"
,"BUFFALO"					,3990165190	,"Sport"
,"BUFFALO S"				,736902334	,"Sport"
,"BUFFALO SPUNK"			,237764926	,"Sport"
,"BUFFALO STX"				,3675036420	,"Muscle"
,"BULLDOZER"				,1886712733	,"Service"
,"BULLET"					,2598821281	,"Super"
,"BURRITO"					,2948279460	,"Van"
,"BURRITO BUGSTARS"			,3387490166	,"Van"
,"BURRITO" 					,2551651283	,"Van"
,"BURRITO COWBOY CONSTRUCT"	,893081117	,"Van"
,"BURRITO SNOWY"			,1132262048	,"Van"
,"BUS"						,3581397346	,"Service"
,"BUZZARD GUNNED"			,788747387	,"Helicopter"
,"BUZZARD"					,745926877	,"Helicopter"
,"CABLECAR"					,3334677549	,"Service"
,"CADDY PROLAPS"			,1147287684	,"Service"
,"CADDY OLD"				,3757070668	,"Service"
,"CADDY3"					,3525819835	,"Utility"
,"CAMPER"					,1876516712	,"Van"
,"CARACARA"					,1254014755	,"Offroad"
,"CARACARA2"				,2945871676	,"Offroad"
,"CARBONIZZARE"				,2072687711	,"Sport"
,"CARBONRS"					,11251904	,"Motorcycle"
,"CARGOBOB"					,4244420235	,"Helicopter"
,"CARGOBOB MEDICAL"			,1621617168	,"Helicopter"
,"CARGOBOB TREVOR"			,1394036463	,"Helicopter"
,"CARGOBOB4 YACHT"			,2025593404	,"Helicopter"
,"CARGOPLANE"				,368211810	,"Plane"
,"CASCO"					,941800958	,"SportsClassic"
,"CAVALCADE 2005"			,2006918058	,"SUV"
,"CAVALCADE 2013"			,3505073125	,"SUV"
,"CERBERUS"					,3493417227	,"Commercial"
,"CERBERUS2"				,679453769	,"Commercial"
,"CERBERUS3"				,1909700336	,"Commercial"
,"CHAMPION"					,3379732821	,"SUPER"
,"CHEBUREK"					,3306466016	,"SportsClassic"
,"CHEETAH"					,2983812512	,"Super"
,"CHEETAH2"					,223240013	,"SportsClassic"
,"CHERNOBOG"				,3602674979	,"Military"
,"CHIMERA"					,6774487	,"Motorcycle"
,"CHINO"					,349605904	,"Muscle"
,"CHINO CUSTOM"				,2933279331	,"Muscle"
,"CINQUEMILA"				,2767531027	,"SEDAN"
,"CLIFFHANGER"				,390201602	,"Motorcycle"
,"CLIQUE"					,2728360112	,"Muscle"
,"COACH"					,2222034228	,"Service"
,"COG55"					,906642318	,"Sedan"
,"COG55 ARMORED"			,704435172	,"Sedan"
,"COGCABRIO"				,330661258	,"Coupe"
,"COGNOSCENTI"				,2264796000	,"Sedan"
,"COGNOSCENTI ARMORED"		,3690124666	,"Sedan"
,"COMET"					,3249425686	,"Sport"
,"COMET RETRO CUSTOM"		,2272483501	,"Sport"
,"COMET4"					,1561920505	,"Sport"	
,"COMET5"					,661493923	,"Sport"
,"COMET S2"					,2568944644	,"Sport"
,"COMET S2 CABRIO"			,1141395928	,"Sport"
,"CONTENDER"				,683047626	,"Pickup"
,"COQUETTE"					,108773431	,"Sport"
,"COQUETTE2"				,1011753235	,"SportsClassic"
,"COQUETTE3"				,784565758	,"SportsClassic"
,"COQUETTE D10"				,2566281822	,"Sport"
,"CRUISER"					,448402357	,"Bicycle"
,"CRUSADER"					,321739290	,"Emergency"
,"CUBAN800"					,3650256867	,"Plane"
,"CUTTER"					,3288047904	,"Truck"
,"CYCLONE"					,1392481335	,"Super"
,"CYPHER"					,1755697647	,"Sport"
,"DAEMON"					,2006142190	,"Motorcycle"
,"DAEMON2"					,2890830793	,"Motorcycle"
,"DEATHBIKE"				,4267640610	,"Motorcycle"
,"DEATHBIKE2"				,2482017624	,"Motorcycle"
,"DEATHBIKE3"				,2920466844	,"Motorcycle"
,"DEFILER"					,822018448	,"Motorcycle"
,"DEITY"					,1532181089	,"SEDANy"
,"DELUXO"					,1483171323	,"SportsClassic"
,"DEVESTE"					,1591739866	,"Super"
,"DEVIANT"					,1279262537	,"Muscle"
,"DIABLOUS"					,4055125828	,"Motorcycle"
,"DIABLOUS2"				,1790834270	,"Motorcycle"
,"DILETTANTE"				,3164157193	,"Compact"
,"DILETTANTE2"				,1682114128	,"Compact"
,"DINGHY"					,1033245328	,"Boat"
,"DINGHY2"					,276773164	,"Boat"
,"DINGHY3"					,509498602	,"Boat"
,"DINGHY4"					,867467158	,"Boat"
,"DLOADER"					,1770332643	,"Offroad"
,"DOCKTRAILER"				,2154757102	,"Trailer"
,"DOCKTUG"					,3410276810	,"Truck"
,"DODO"						,3393804037	,"Plane"
,"DOMINATOR"				,80636076	,"Muscle"
,"DOMINATOR ASP"			,426742808	,"Muscle"
,"DOMINATOR APOCALYPSE"		,3606777648	,"Muscle"
,"DOMINATOR2"				,3379262425	,"Muscle"
,"DOMINATOR FUTURE SHOCK"	,2919906639	,"Muscle"
,"DOMINATOR GTT"			,736672010	,"Muscle"
,"DOMINATOR GTX"			,3308022675	,"Muscle"
,"DOMINATOR NIGHTMARE"		,3001042683	,"Muscle"
,"DOUBLE"					,2623969160	,"Motorcycle"
,"DR1"						,1181339704	,"Open Wheel"
,"DRAFTER"					,686471183	,"Sport"
,"DUBSTA"					,1177543287	,"SUV"
,"DUBSTA BLACKED OUT"		,3900892662	,"SUV"
,"DUBSTA 6x6"				,3057713523	,"Offroad"
,"DUKES"					,723973206	,"Muscle"
,"DUKE O Death"				,3968823444	,"Muscle"
,"DUMP"						,2164484578	,"Truck"
,"DUNE"						,2633113103	,"Offroad"
,"DUNE2"					,534258863	,"Offroad"
,"DUNE3"					,1897744184	,"Offroad"
,"DUNE5"					,3982671785	,"Offroad"
,"DUSTER"					,970356638	,"Plane"
,"DYNASTY"					,310284501	,"SportsClassic"
,"ELEGY"					,196747873	,"Sport"
,"ELEGY2"					,3728579874	,"Sport"
,"ELLIE"					,3027423925	,"Muscle"
,"EMERUS"					,1323778901	,"Super"
,"EMPEROR"					,3609690755	,"Sedan"
,"EMPEROR2"					,2411965148	,"Sedan"
,"EMPEROR3"					,3053254478	,"Sedan"
,"ENDURO"					,1753414259	,"Motorcycle"
,"ENTITY XXR"				,2174267100	,"Super"
,"ENTITYXF"					,3003014393	,"Super"
,"ESSKEY"					,2035069708	,"Motorcycle"
,"EUROS"					,2038480341	,"Sport"
,"EVERON"					,2538945576	,"Offroad"
,"EXEMPLAR"					,4289813342	,"Coupe"
,"F620"						,3703357000	,"Coupe"
,"FACTION"					,2175389151	,"Coupe"
,"FACTION2"					,2504420315	,"Coupe"
,"FACTION3"					,2255212070	,"Muscle"
,"FAGALOA"					,1617472902	,"SportsClassic"
,"FAGGIO"					,2452219115	,"Motorcycle"
,"FAGGIO2"					,55628203	,"Motorcycle"
,"FAGGIO3"					,3005788552	,"Motorcycle"
,"FAGGION"					,2134395284	,"Motorcycle"
,"FBI"						,1127131465	,"Emergency"
,"FBI2"						,2647026068	,"Emergency"
,"FCR"						,627535535	,"Motorcycle"
,"FCR2"						,3537231886	,"Motorcycle"
,"FELON"					,3903372712	,"Coupe"
,"FELON2"					,4205676014	,"Coupe"
,"FELTZER2"					,2299640309	,"Sport"
,"FELTZER3"					,2728226064	,"SportsClassic"
,"FIRE TRUCK"				,1938952078	,"Emergency"
,"FIXTER"					,3458454463	,"Bicycle"
,"FLASHGT"					,3035832600	,"Sport"
,"FLATBED"					,1353720154	,"Truck"
,"FMJ"						,1426219628	,"Super"
,"FORKLIFT"					,1491375716	,"Service"
,"FQ2"						,3157435195	,"SUV"
,"FREECRAWLER"				,4240635011	,"Offroad597"
,"FREIGHT"					,1030400667	,"Train"
,"FREIGHTCAR"				,184361638	,"Train"
,"FREIGHTCONT1"				,920453016	,"Train"
,"FREIGHTCONT2"				,240201337	,"Train"
,"FREIGHTGRAIN"				,642617954	,"Train"
,"FREIGHTTRAILER"			,3517691494	,"Trailer"
,"FROGGER"					,744705981	,"Helicopter"
,"FROGGER TREVOR"			,1949211328	,"Helicopter"
,"FUGITIVE"					,1909141499	,"Sedan"
,"FUROREGT"					,3205927392	,"Sport"
,"FURIA"					,960812448	,"Super"
,"FUSILADE"					,499169875	,"Sport"
,"FUTO"						,2016857647	,"Sport"
,"FUTO GTX"					,2787736776	,"Sport"
,"GARGOYLE"					,741090084	,"Motorcycle"
,"GAUNTLET"					,2494797253	,"Muscle"
,"GAUNTLET2"				,349315417	,"Muscle"
,"GAUNTLET3"				,722226637	,"Muscle"
,"GAUNTLET4"				,1934384720	,"Muscle"
,"GB200"					,1909189272	,"Sport"
,"GBURRITO"					,2549763894	,"Van"
,"GBURRITO2"				,296357396	,"Van"
,"GLENDALE"					,75131841	,"Sedan"
,"GP1"						,1234311532	,"Super"
,"GRAINTRAILER"				,1019737494	,"Trailer"
,"GRANGER"					,2519238556	,"SUV"
,"GRESLEY"					,2751205197	,"SUV"
,"GROWLER"					,1304459735	,"Sport"
,"GT500"					,2215179066	,"SportsClassic"
,"GUARDIAN"					,2186977100	,"Offroad"
,"HABANERO"					,884422927	,"SUV"
,"HAKUCHOU"					,1265391242	,"Motorcycle"
,"HAKUCHOU2"				,4039289119	,"Motorcycle"
,"HALFTRACK"				,4262731174	,"Military"
,"HANDLER"					,444583674	,"Truck"
,"HAULER"					,1518533038	,"Truck"
,"HAULER2"					,387748548	,"Commercial"
,"HAVOK"					,2310691317	,"Helicopter"
,"HELLION"					,3932816511	,"Offroad"
,"HERMES"					,15219735	,"Muscle"
,"HEXER"					,301427732	,"Motorcycle"
,"HOTKNIFE"					,37348240	,"Muscle"
,"HOTRING SABRE"			,1115909093	,"Sport"
,"HOWARD"					,3287439187	,"Plane"
,"HUNTER"					,4252008158	,"Helicopter"
,"HUNTLEY"					,486987393	,"SUV"
,"HUSTLER"					,600450546	,"Muscle"
,"HYDRA"					,970385471	,"Plane"
,"IGNUS"					,2850852987	,"Super"
,"IMPALER"					,2198276962	,"Muscle"
,"IMPALER2"					,1009171724	,"Muscle"
,"IMPALER3"					,2370166601	,"Muscle"
,"IMPALER4"					,2550461639	,"Muscle"
,"IMPERATOR"				,444994115	,"Muscle"
,"IMPERATOR2"				,1637620610	,"Muscle"
,"IMPERATOR3"				,3539435063	,"Muscle"
,"INFERNUS"					,418536135	,"Super"
,"NFERNUS2"					,2889029532	,"Sport"
,"INGOT"					,3005245074	,"Sedan"
,"INNOVATION"				,4135840458	,"Motorcycle"
,"INSURGENT"				,2434067162	,"Offroad"
,"INSURGENT2"				,2071877360	,"Offroad"
,"INSURGENT3"				,2370534026	,"Offroad"
,"INTRUDER"					,886934177	,"Sedan"
,"IMORGON"					,3162245632	,"Sport"
,"ISSI2"					,3117103977	,"Compact"
,"ISSI3"					,931280609	,"Compact"
,"ISSI4"					,628003514	,"Compact"
,"ISSI5"					,1537277726	,"Compact"
,"ISSI6"					,1239571361	,"Compact"
,"ISSI SPORT"				,1854776567	,"Sport"
,"ITALI GTB"				,2246633323	,"Super"
,"ITALI GTB CUSTOM"			,3812247419	,"Super"
,"ITALI GTO"				,3963499524	,"Sport"
,"ITALI RSX"				,3145241962	,"Sport"
,"JACKAL"					,3670438162	,"Coupe"
,"JB700"					,1051415893	,"SportsClassic"
,"JB7002"					,394110044	,"SportsClassic"
,"JESTER"					,2997294755	,"Sport"
,"JESTER2"					,3188613414	,"Sport"
,"JESTER3"					,4080061290	,"SportsClassic"
,"JESTER RR"				,2712905841	,"Sport"
,"JET"						,1058115860	,"Plane"
,"JETMAX"					,861409633	,"Boat"
,"JOURNEY"					,4174679674	,"Van"
,"JUBILEE"					,461465043	,"SUV"
,"JUGULAR"					,4086055493	,"Sport"
,"KALAHARI"					,92612664	,"Offroad"
,"KANJO"					,409049982	,"Compact"
,"KAMACHO"					,4173521127	,"Offroad"
,"KHAMELION"				,544021352	,"Sport"
,"KHANJALI"					,2859440138	,"Military"
,"KOMODA"					,3460613305	,"Sport"
,"KRIEGER"					,3630826055	,"Super"
,"KURUMA"					,2922118804	,"Sport"
,"KURUMA2"					,410882957	,"Sport"
,"LANDSTALKER"				,1269098716	,"SUV"
,"LAZER"					,3013282534	,"Plane"
,"LE7B"						,3062131285	,"Super"
,"LECTRO"					,640818791	,"Motorcycle"
,"LGUARD"					,469291905	,"Emergency"
,"LIMO2"					,4180339789	,"Sedan"
,"LOCUST"					,3353694737	,"Sport"
,"LURCHER"					,2068293287	,"SportsClassic"
,"LUXOR"					,621481054	,"Plane"
,"LUXOR GOLD"				,3080673438	,"Plane"
,"LYNX"						,482197771	,"Sport"
,"MAMBA"					,2634021974	,"Sport"
,"MAMMATUS"					,2548391185	,"Plane"
,"MANANA"					,2170765704	,"SportsClassic"
,"MANCHEZ"					,2771538552	,"Motorcycle"
,"MARQUIS"					,3251507587	,"Boat"
,"MARSHALL"					,1233534620	,"Offroad"
,"MASSACRO"					,4152024626	,"Sport"
,"MASSACRO2"				,3663206819	,"Sport"
,"MAVERICK"					,2634305738	,"Helicopter"
,"MENACER"					,2044532910	,"Offroad"
,"MESA"						,914654722	,"SUV"
,"MESA2"					,3546958660	,"SUV"
,"MESA3"					,2230595153	,"Offroad"
,"METROTRAIN"				,868868440	,"Train"
,"MICHELLI"					,1046206681	,"SportsClassic"
,"MICROLIGHT"				,2531412055	,"Plane"
,"MILJET"					,165154707	,"Plane"
,"MINITANK"					,3040635986	,"Military"
,"MINIVAN"					,3984502180	,"Van"
,"MINIVAN2"					,3168702960	,"Muscle"
,"MIXER"					,3510150843	,"Truck"
,"MIXER2"					,475220373	,"Truck"
,"MOGUL"					,3545667823	,"Plane"
,"MOLOTOK"					,1565978651	,"Plane"
,"MONROE"					,3861591579	,"SportsClassic"
,"MONSTER"					,3449006043	,"Offroad"
,"MONSTER3"					,1721676810	,"Offroad"
,"MONSTER4"					,840387324	,"Offroad"
,"MONSTER5"					,3579220348	,"Offroad"
,"MOONBEAM"					,525509695	,"Van"
,"MOONBEAM2"				,1896491931	,"Van"
,"MOWER"					,1783355638	,"Service"	
,"MULE"						,904750859	,"Truck"
,"MULE2"					,3244501995	,"Truck"
,"MULE3"					,2242229361	,"Truck"
,"MULE4"					,1945374990	,"Commercial"
,"NEBULA"					,3412338231	,"SportsClassic"
,"NEMESIS"					,3660088182	,"Motorcycle"
,"NEO"						,2674840994	,"Sport"
,"NEON"						,2445973230	,"Sport"
,"NERO"						,1034187331	,"Super"
,"NERO CUSTOM"				,1093792632	,"Super"
,"NIGHTBLADE"				,2688780135	,"Motorcycle"
,"NIGHTSHADE"				,2351681756	,"Muscle"
,"NIGHTSHARK"				,433954513	,"Offroad"
,"NIMBUS"					,2999939664	,"Plane"
,"NINEF"					,1032823388	,"Sport"
,"NINEF2"					,2833484545	,"Sport"
,"NOKOTA"					,1036591958	,"Plane"
,"NOVAK"					,2465530446	,"SUV"
,"OMNIS"					,3517794615	,"Sport"
,"OUTLAW"					,408825843	,"Offroad"
,"OPPRESSOR"				,884483972	,"Motorcycle"
,"OPPRESSOR MKII"			,2069146067	,"Motorcycle"
,"ORACLE"					,1348744438	,"Sedan"
,"ORACLE2"					,3783366066	,"Sedan"
,"OSIRIS"					,1987142870	,"Super"
,"PACKER"					,569305213	,"Truck"
,"PANTO"					,3863274624	,"Compact"
,"PARADISE"					,1488164764	,"Van"
,"PARAGON"					,3847255899	,"Sport"
,"PARAGON2"					,1416466158	,"Sport"
,"PARIAH"					,867799010	,"Sport"
,"PATRIOT"					,3486509883	,"SUV"
,"PATRIOT2"					,3874056184	,"SUV"
,"PATRIOT MIL-SPEC"			;3624880708	,"OFFROAD"
,"PBUS"						,2287941233	,"Emergency"
,"PBUS2"					,345756458	,"Service"
,"PCJ"						,3385765638	,"Motorcycle"
,"PENETRATOR"				,2536829930	,"Super"
,"PENUMBRA"					,3917501776	,"Sport"
,"PEYOTE"					,1830407356	,"SportsClassic"
,"PEYOTE2"					,2490551588	,"Muscle"
,"PFISTER811"				,2465164804	,"Super"
,"PHANTOM"					,2157618379	,"Truck"
,"PHANTOM2"					,2645431192	,"Truck"
,"PHANTOM3"					,177270108	,"Commercial"
,"PHOENIX"					,2199527893	,"Muscle"
,"PICADOR"					,1507916787	,"Muscle"
,"PIGALLE"					,1078682497	,"SportsClassic"
,"POLICE"					,2046537925	,"Emergency"	
,"POLICE2"					,2667966721	,"Emergency"
,"POLICE3"					,1912215274	,"Emergency"
,"POLICE4"					,2321795001	,"Emergency"
,"POLICEB"					,4260343491	,"Emergency"
,"POLICEOLD1"				,2758042359	,"Emergency"
,"POLICEOLD2"				,2515846680	,"Emergency"
,"POLICET"					,456714581	,"Emergency"
,"POLMAV"					,353883353	,"Helicopter"
,"PONY"						,4175309224	,"Van"
,"PONY2"					,943752001	,"Van"
,"POUNDER"					,2112052861	,"Truck"
,"POUNDER2"					,1653666139	,"Commercial"
,"PR4"						,340154634	,"OpenWheel"
,"PRAIRIE"					,2844316578	,"Compact"
,"PRANGER"					,741586030	,"Emergency"
,"PREDATOR"					,3806844075	,"Boat"
,"PREMIER"					,2411098011	,"Sedan"
,"PREVION"					,1416471345	,"Coupe"
,"PRIMO"					,3144368207	,"Sedan"
,"PRIMO2"					,2254540506	,"Sedan"
,"PROPTRAILER"				,356391690	,"Trailer"	
,"PROTOTIPO"				,2123327359	,"Super"
,"PYRO"						,2908775872	,"Plane"
,"R88"						,2334210311	,"OpenWheel"
,"RADI"						,2643899483	,"SUV"
,"RAIDEN"					,2765724541	,"Sport"
,"RAKETRAILER"				,390902130	,"Trailer"	
,"RALLYTRUCK"				,2191146052	,"Truck"
,"RANCHERXL"				,1645267888	,"Offroad"
,"RANCHERXL2"				,1933662059	,"Offroad"
,"RAMP BUGGY CUSTOM"		,3467805257	,"Offroad"
,"RAPIDGT"					,2360515092	,"Sport"
,"RAPIDGT2"					,1737773231	,"Sport"
,"RAPIDGT3"					,2049897956	,"SportsClassic"
,"RAPTOR"					,3620039993	,"Sport"
,"RATBIKE"					,1873600305	,"Motorcycle"
,"RATLOADER"				,3627815886	,"Pickup"
,"RATLOADER2"				,3705788919	,"Pickup"
,"RCBANDITO"				,4008920556	,"Offroad"
,"REAPER"					,234062309	,"Super"
,"REBEL"					,3087195462	,"Offroad"
,"REBEL2"					,2249373259	,"Offroad"
,"REBLA"					,83136452	,"SUV"
,"REGINA"					,4280472072	,"Sedan"
,"RENTALBUS"				,3196165219	,"Service"
,"RETINUE"					,1841130506	,"SportsClassic"
,"RETINUE2"					,2031587082	,"SportsClassic"
,"REVOLTER"					,3884762073	,"Sport"
,"RHAPSODY"					,841808271	,"Compact"
,"RHINO"					,782665360	,"Emergency"
,"RIATA"					,2762269779	,"Offroad"
,"RIOT"						,3089277354	,"Emergency"	
,"RIOT2"					,2601952180	,"Emergency"
,"RIPLEY"					,3448987385	,"Service"		
,"ROCOTO"					,2136773105	,"SUV"
,"ROGUE"					,3319621991	,"Plane"
,"ROMERO"					,627094268	,"Sedan"
,"RROCKET"					,916547552	,"Motorcycle"
,"RUBBLE"					,2589662668	,"Truck"
,"RUFFIAN"					,3401388520	,"Motorcycle"
,"RUINER"					,4067225593	,"Muscle"
,"RUINER2"					,941494461	,"Sport"
,"RUINER3"					,777714999	,"Sport"		
,"RUMPO"					,1162065741	,"Van"
,"RUMPO2"					,2518351607	,"Van"
,"RUMPO3"					,1475773103	,"Van"
,"RUSTON"					,719660200	,"Sport"
,"S80"						,3970348707	,"Super"
,"SABREGT"					,2609945748	,"Muscle"
,"SABRE TURBO CUSTOM"		,223258115	,"Muscle"
,"SADLER"					,3695398481	,"Pickup"
,"SADLER2"					,734217681	,"Pickup"
,"SANCHEZ"					,788045382	,"Motorcycle"
,"SANCHEZ2"					,2841686334	,"Motorcycle"
,"SANCTUS"					,1491277511	,"Motorcycle"
,"SANDKING"					,3105951696	,"Offroad"
,"SANDKING2"				,989381445	,"Offroad"
,"SAVAGE"					,4212341271	,"Helicopter"
,"SAVESTRA"					,903794909	,"SportsClassic"
,"SC1"						,1352136073	,"Super"
,"SCARAB"					,3147997943	,"Military"
,"SCARAB2"					,1542143200	,"Military"
,"SCARAB3"					,3715219435	,"Military"
,"SCHAFTER2"				,3039514899	,"Sedan"
,"SCHAFTER3"				,2809443750	,"Sedan"
,"SCHAFTER4"				,1489967196	,"Sedan"
,"SCHAFTER5"				,3406724313	,"Sedan"
,"SCHAFTER6"				,1922255844	,"Sedan"
,"SCHLAGEN"					,3787471536	,"Sport"
,"SCHWARZER"				,3548084598	,"Sport"
,"SCORCHER"					,4108429845	,"Bicycle"
,"SCRAMJET"					,3656405053	,"Super"
,"SCRAP"					,2594165727	,"Truck"
,"SEABREEZE"				,3902291871	,"Plane"
,"SEASHARK"					,3264692260	,"Boat"
,"SEASHARK2"				,3678636260	,"Boat"
,"SEASHARK3"				,3983945033	,"Boat"	
,"SEASPARROW"				,3568198617	,"Helicopter"
,"SEMINOLE"					,1221512915	,"SUV"
,"SENTINEL XS"					,1349725314	,"Coupe"
,"SENTINEL CABRIO"			,873639469	,"Coupe"
,"SENTINEL3"				,1104234922	,"Sport"
,"SERRANO"					,1337041428	,"SUV"
,"SEVEN70"					,2537130571	,"Sport"
,"SHAMAL"					,3080461301	,"Plane"
,"SHEAVA"					,819197656	,"Super"
,"SHERIFF"					,2611638396	,"Emergency"
,"SHERIFF2"					,1922257928	,"Emergency"
,"SHOTARO"					,3889340782	,"Motorcycle"
,"SKYLIFT"					,1044954915	,"Helicopter"	
,"SLAMVAN"					,729783779	,"Muscle"
,"SLAMVAN2"					,833469436	,"Muscle"	
,"SLAMVAN3"					,1119641113	,"Muscle"
,"SLAMVAN4"					,2233918197	,"Muscle"
,"SLAMVAN5"					,373261600	,"Muscle"
,"SLAMVAN6"					,1742022738	,"Muscle"
,"SOVEREIGN"				,743478836	,"Motorcycle"
,"SPECTER"					,1886268224	,"Sport"
,"SPECTER CUSTOM"			,1074745671	,"Sport"
,"SPEEDER"					,231083307	,"Boat"
,"SPEEDER2"					,437538602	,"Boat"
,"SPEEDO"					,3484649228	,"Van"
,"SPEEDO2"					,728614474	,"Van"
,"SPEEDO4"					,219613597	,"Van"	
,"SQUALO"					,400514754	,"Boat"
,"STAFFORD"					,321186144	,"Sedan"
,"STALION"					,1923400478	,"Muscle"
,"STALION2"					,3893323758	,"Muscle"
,"STANIER"					,2817386317	,"Sedan"
,"STARLING"					,2594093022	,"Plane"
,"STINGER"					,1545842587	,"SportsClassic"
,"STINGERGT"				,2196019706	,"SportsClassic"
,"STOCKADE"					,1747439474	,"Truck"
,"STOCKADE3"				,4080511798	,"Truck"
,"STRATUM"					,1723137093	,"Sedan"
,"STREITER"					,1741861769	,"Sport"
,"STRETCH"					,2333339779	,"Sedan"
,"STRIKEFORCE"				,1692272545	,"Plane"
,"STROMBERG"				,886810209	,"SportsClassic"
,"STRYDER"					,301304410	,"Motorcycle"
,"STUNT"					,2172210288	,"Plane"
,"SUBMERSIBLE"				,771711535	,"Boat"
,"SUBMERSIBLE2"				,3228633070	,"Boat"
,"SUGOI"					,987469656	,"Sport"
,"SULTAN"					,970598228	,"Sport"
,"SULTAN CLASSIC"			,872704284	,"Sport"
,"SULTAN RS"				,3999278268	,"Super"
,"SULTAN RS CLASSIC"		,4003946083	,"Sport"
,"SUNTRAP"					,4012021193	,"Boat"
,"SUPERD"					,1123216662	,"Sedan"
,"SUPERVOLITO"				,710198397	,"Helicopter"
,"SUPERVOLITO2"				,2623428164	,"Helicopter"
,"SURANO"					,384071873	,"Sport"
,"SURFER"					,699456151	,"Van"
,"SURFER2"					,2983726598	,"Van"
,"SURGE"					,2400073108	,"Sedan"
,"SWIFT"					,3955379698	,"Helicopter"
,"SWIFT2"					,1075432268	,"Helicopter"
,"SWINGER"					,500482303	,"SportsClassic"
,"T20"						,1663218586	,"Super"
,"TACO"						,1951180813	,"Van"
,"TAILGATER"				,3286105550	,"Sedan"
,"TAILGATER S"				,3050505892	,"Sedan"
,"TAIPAN"					,3160260734	,"Super"
,"TAMPA"					,972671128	,"Muscle"
,"TAMPA2"					,3223586949	,"Muscle"
,"TAMPA3"					,3084515313	,"Muscle"
,"TANKER"					,3564062519	,"Trailer"	
,"TANKER2"					,1956216962	,"Trailer"	
,"TANKERCAR"				,586013744	,"Trair"
,"TAXI"						,3338918751	,"Sedan"
,"TECHNICAL"				,2198148358	,"Offroad"
,"TECHNICAL2"				,1180875963	,"Offroad"
,"TECHNICAL3"				,1356124575	,"Offroad"
,"TEMPESTA"					,272929391	,"Super"
,"TERBYTE"					,2306538597	,"Commercial"
,"TEZERACT"					,1031562256	,"Super"
,"THRAX"					,1044193113	,"Super"
,"THRUST"					,1836027715	,"Motorcycle"
,"THRUSTER"					,1489874736	,"Military3"
,"TIGON"					,2936769864	,"Super"
,"TIPTRUCK"					,48339065	,"Truck"
,"TIPTRUCK2"				,3347205726	,"Truck"
,"TITAN"					,1981688531	,"Plane"
,"TORERO"					,1504306544	,"SportsClassic"
,"TORNADO"					,464687292	,"SportsClassic"
,"TORNADO2"					,1531094468	,"SportsClassic"
,"TORNADO3"					,1762279763	,"SportsClassic"
,"TORNADO4"					,2261744861	,"SportsClassic"
,"TORNADO5"					,2497353967	,"Muscle"
,"TORNADO6"					,2736567667	,"Muscle"
,"TORO"						,1070967343	,"Boat"
,"TORO2"					,908897389	,"Boat"
,"TOROS"					,3126015148	,"SUV"
,"TOURBUS"					,1941029835	,"Service"	
,"TOWTRUCK"					,2971866336	,"Truck"
,"TOWTRUCK2"				,3852654278	,"Truck"
,"TR2"						,2078290630	,"Trailer"
,"TR3"						,1784254509	,"Trailer"
,"TR4"						,2091594960	,"Trailer"
,"TRACTOR"					,1641462412	,"Service"
,"TRACTOR2"					,2218488798	,"Service"
,"TRACTOR3"					,1445631933	,"Service"
,"TRAILERLARGE"				,1502869817	,"Utility"
,"TRAILERLOGS"				,2016027501	,"Trailer"
,"TRAILERS"					,3417488910	,"Trailer"
,"TRAILERS2"				,2715434129	,"Trailer"
,"TRAILERS3"				,2236089197	,"Trailer"
,"TRAILERS4"				,3194418602	,"Utility"	
,"TRAILERSMALL"				,712162987	,"Trailer"	
,"TRAILERSMALL2"			,2413121211	,"Military"
,"TRASH"					,1917016601	,"Service"	
,"TRASH2"					,3039269212	,"Service"	
,"TRAILER FLAT"				,2942498482	,"Trailer"	
,"TRIBIKE"					,1127861609	,"Bicycle"
,"TRIBIKE2"					,3061159916	,"Bicycle"
,"TRIBIKE3"					,3894672200	,"Bicycle"
,"TROPHYTRUCK"				,101905590	,"Offroad"
,"TROPHYTRUCK2"				,3631668194	,"Offroad"
,"TROPIC"					,290013743	,"Boat"
,"TROPIC2"					,1448677353	,"Boat"
,"TROPOS"					,1887331236	,"Sport"
,"TUG"						,2194326579	,"Boat"
,"TULA"						,1043222410	,"Plane"
,"TULIP"					,1456744817	,"Muscle"
,"TURISMO2"					,3312836369	,"Super"
,"TURISMO R"				,408192225	,"Super"
,"TV TRAILER"				,2524324030	,"Trailer"	
,"TYRANT"					,3918533058	,"Super"
,"TYRUS"					,2067820283	,"Super"
,"UTILLITRUCK"				,516990260	,"Service"	
,"UTILLITRUCK2"				,887537515	,"Service"
,"UTILLITRUCK3"				,2132890591	,"Service"	
,"VACCA"					,338562499	,"Super"
,"VADER"					,4154065143	,"Motorcycle"
,"VAGNER"					,1939284556	,"Super"
,"VAGRANT"					,740289177	,"Offroad"
,"VALKYRIE"					,2694714877	,"Helicopter"
,"VALKYRIE2"				,1543134283	,"Helicopter"
,"VAMOS"					,4245851645	,"Muscle"
,"VECTRE"					,2754593701	,"Sport"
,"VELUM"					,2621610858	,"Plane"
,"VELUM2"					,1077420264	,"Plane"
,"VERLIERER2"				,1102544804	,"Sport"
,"VESTRA"					,1341619767	,"Plane"
,"VIGERO"					,3469130167	,"Muscle"
,"VIGILANTE"				,3052358707	,"Military"
,"VINDICATOR"				,2941886209	,"Motorcycle"
,"VIRGO"					,3796912450	,"Muscle"
,"VIRGO2"					,3395457658	,"Muscle"
,"VIRGO3"					,16646064   ,"Muscle"
,"VISERIS"					,3903371924	,"SportsClassic"
,"VISIONE"					,3296789504	,"Super"
,"VOLATOL"					,447548909	,"Plane"
,"VOLATUS"					,2449479409	,"Helicopter"
,"VOLTIC"					,2672523198	,"Super"
,"VOLTIC2"					,989294410	,"Super"
,"VOODOO"					,2006667053	,"Muscle"
,"VOODOO2"					,523724515	,"Muscle"
,"VORTEX"					,3685342204	,"Motorcycle"
,"V-STR"					,1456336509	,"Sport"
,"WARRENER"					,1373123368	,"Sedan"
,"WASHINGTON"				,1777363799	,"Sedan"
,"WASTELANDER"				,2382949506	,"Super"
,"WINDSOR"					,1581459400	,"Coupe"
,"WINDSOR2"					,2364918497	,"Coupe"
,"WOLFSBANE"				,3676349299	,"Motorcycle"
,"XA21"						,917809321	,"Super"
,"XLS"						,1203490606	,"SUV"
,"XLS2"						,3862958888	,"SUV"
,"YOSEMITE"					,1871995513	,"Muscle"
,"YOSEMITE2"				,1693751655	,"Muscle"
,"YOUGA"					,65402552	,"Van"
,"YOUGA2"					,1026149675	,"Van"
,"Z190"						,838982985	,"SportsClassic"
,"ZENTORNO"					,2891838741	,"Super"
,"ZENO"						,655665811	,"Super"
,"ZHABA"					,1284356689	,"Offroad"
,"ZION"						,3172678083	,"Coupe"
,"ZION2"					,3101863448	,"Coupe"
,"ZION3"					,1862507111	,"SportsClassic"
,"ZOMBIEA"					,3285698347	,"Motorcycle"
,"ZOMBIEB"					,3724934023	,"Motorcycle"
,"ZORRUSSO"					,3612858749	,"Super"
,"ZR350"					,2436313176	,"Sport"
,"ZR380"					,540101442	,"Sport"
,"ZR3802"					,3188846534	,"Sport"
,"ZR3803"					,2816263004	,"Sport"
,"ZTYPE"					,758895617	,"SportsClassic"}
 
local firstVeh = true
local firstPly = true
local firstWpn = true
 
local VehicleHashName = ""
local vehicleClass = "" 
 
-- Function definitions
 
local function onodot(valu)
	local l = 0 
	local n = math.floor(valu * 10)
	for i = 0, n do
		l = i/10
	end
	return l
end
 
local function Text(text)
	menu.add_action(text, function() end)
end
 
local function sqrt(i)
	return i^0.5
end
 
local function DistanceToSqr(vec1, vec2)
	return ((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2)
end
 
local function Distance(vec1, vec2)
	return sqrt(DistanceToSqr(vec1, vec2))
end
 
local function floor(num)
	return num//1
end
 
-- Player / Ped functions
 
local function IsPlayer(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end
 
local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end
 
local function IsModder(ply)
	local plyVeh = nil
 
	if not IsPlayer(ply) then return false end
	
	if ply:get_max_health() < 100 then return true end
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
	if ply:get_infinite_clip()then return true end
	if ply:get_no_ragdoll() then return true end
	if ply:get_seatbelt() and ply:is_in_vehicle() then return true end
	if ply:is_in_vehicle() and ply:get_current_vehicle():get_godmode()then return true end
	if ply:get_current_weapon() and ply:get_current_weapon():get_current_ammo() > 0 then if ply:get_infinite_ammo() then return true end end
	if ply:get_health() < 0 then return true end
	if ply:get_godmode() and ply:is_in_vehicle() then return true end
 
	return false
end
 
local function GetPlayerCount()
	return player.get_number_of_players()
end
 
-- Action functions
 
local function TeleportToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(pos)
	else
		localplayer:get_current_vehicle():set_position(pos)
	end
end
 
local function TeleportVehiclesToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_position(pos)
		end
	end
end
 
local function TeleportClosestVehicleToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local veh = localplayer:get_nearest_vehicle()
	if not veh then return end
 
	veh:set_position(pos)
end
 
local function TeleportPedsToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			ped:set_position(pos)
		end
	end
end
 
local function ExplodePlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_rotation(vector3(0,0,180))
			veh:set_health(-1)
			veh:set_position(pos)
		end
	end
end
 
local function playerHealth(ply)
	local healthPercent = ""
	local health = ""
	healthPercent = (ply:get_health()/ply:get_max_health())*100
	if not hpPercent then
		if healthPercent == 100 then
			health = " FULL "
		elseif healthPercent >= 75 then
			health = "++++"
		elseif healthPercent >= 50 then
			health = "+++- "
		elseif healthPercent >= 25 then
			health = "++--  "
		elseif healthPercent > 0 then
			health = "+--- "
		elseif healthPercent == 0 then
			health = "DEAD"
		elseif healthPercent < 0 then
			health = " MOD "
		end
	else
		if healthPercent == 100 then
			health = " "..onodot(healthPercent).."% "
		elseif healthPercent < 100 and healthPercent >= 10 then
			health = "   "..onodot(healthPercent).."% "
		else
			health = "    "..onodot(healthPercent).."% "
		end
		return health
	end
 
	return health
end
 
local function getCurrentVeh(hash)
	for i=2, #vehicleList do
		if vehicleList[i] == hash then
			VehicleHashName = vehicleList[i-1]
			vehicleClass = vehicleList[i+1]
		end
		i = i+2
	end
	return "Not added yet"
end
 
local function plyFirst()
	if firstPly then Text("--PLAYER--") firstPly = false end
end
 
local function vehFirst()
	if firstVeh then Text("--VEHICLE--") firstVeh = false end
end
 
local function wpnFirst()
	if firstWpn then Text("--WEAPON--") firstWpn = false end
end
 
local function PlayerInfo(ply, plyName)
	if not ply or ply == nil then return end 
	
	firstPly = true
	firstVeh = true
	firstWpn = true
 
		Text("---PlayerInfo---")
		Text(" ")
		if playerInfo then
		Text(plyName)
		
		if playerInfoHpPercent then
			if onodot((ply:get_health()/ply:get_max_health())*100) == 100.0 then Text("100%") else Text(onodot((ply:get_health()/ply:get_max_health())*100).."%") end
			if ply:get_armour() > 0 then Text(onodot((ply:get_armour()/50)*100)) end
		else
			Text(ply:get_health().."hp / "..ply:get_max_health().."hp")
			if ply:get_armour() > 0 then Text(math.floor(ply:get_armour()).." / 50") end
		end
		if ply:get_wanted_level() > 0 and playerWantedLvl then
			local wantedTxt  = " "
			for i=1,ply:get_wanted_level() do
				wantedTxt = wantedTxt.."✰"
			end
			Text(wantedTxt)
		end
		if ply ~= localplayer and playerDistace then Text(floor(Distance(ply:get_position(), localplayer:get_position())).." m") end
		if ply:get_godmode() then if not ply:get_can_be_targeted() then Text("Inside building or modder") end end
		Text(" ")
	end	
 
	if ply:is_in_vehicle()then
		getCurrentVeh(ply:get_current_vehicle():get_model_hash())
		Text("--Player is in a Vehicle")
 
		if playerVehInfo then
			if VehicleHashName == ""  then
				Text("-"..ply:get_current_vehicle():get_model_hash())
			else
				Text("-"..VehicleHashName)
				Text("-"..vehicleClass)
				VehicleHashName = ""
				vehicleClass = ""
			end
		end
		Text(" ")
	end
 
	if IsModder(ply) and playerModder then
		
		Text("---MODDER---")
 
		if ply:get_max_health() < 100 then plyFirst() Text("-More than max health") end
		if ply:get_godmode() and ply:is_in_vehicle() then plyFirst() Text("-Godmode") elseif ply:get_godmode() and ply:get_can_be_targeted() then plyFirst() Text("-Godmode") end
		if ply:get_run_speed() > 1.0 then plyFirst() Text("-Faster RunSpeed("..onodot(ply:get_run_speed())..")") end
		if ply:get_swim_speed() > 1.0 then plyFirst() Text("-Faster SwimSpeed("..onodot(ply:get_swim_speed())..")") end
		if ply:get_no_ragdoll() then plyFirst() Text("-No Ragdoll") end
		if not ply:get_can_be_targeted() and ply:is_in_vehicle() then plyFirst() Text("-Cant be targeted") end
		Text(" ")
		
		
		if ply:get_infinite_clip() then wpnFirst() Text("-Infinite Clip") end
		if ply:get_current_weapon() and ply:get_current_weapon():get_current_ammo() > 0 then if ply:get_infinite_ammo() then wpnFirst() Text("-Infinite Ammo") Text(ply:get_current_weapon():get_weapon_hash()) end end
		
 
		if ply:is_in_vehicle() then
			if ply:get_current_vehicle():get_godmode() then vehFirst() Text("-Vehicle Godmode") end
			if ply:get_seatbelt() then vehFirst() Text("-Seatbelt") end
			Text(" ")
		end
	end
	Text("Reload script to remove current PlayerInfo")
end
 
-- Player option 
local selectedplayer = -1
 
local function add_player_option(ply_id, ply, ply_name)
	local text = ""
 
	if playerHealthBool then
		text = text.."I "..playerHealth(ply)
	end
 
        --Modder
	if IsModder(ply) then
		text = text.."I M "
	else
		text = text.."I     "
	end
 
	-- GodMode
	if ply:get_godmode() then
		text = text.."I G "
	else
		text = text.."I    "
	end
 
	-- Is In Vehicle
	if ply:is_in_vehicle() then
		getCurrentVeh(ply:get_current_vehicle():get_model_hash())
		if vehicleClass == "Motorcycle" then
			text = text.."I ��️ "
		elseif vehicleClass == "Plane" then
			text = text.."I ✈️ "
		elseif vehicleClass == "Helicopter" then
			text = text.."I �� "
		else
			text = text.."I �� "
		end
		VehicleHashName = ""
		vehicleClass = ""
	else
		text=text.."I  �� "
	end
 
	local distanceTxtBool = false
	if distanceTxtBool then
 
		local spaceTxt = " m "
		if floor(Distance(ply:get_position(), localplayer:get_position())) < 10 then
			spaceTxt = " m       "
		elseif floor(Distance(ply:get_position(), localplayer:get_position())) < 100 then
			spaceTxt = " m     "
		elseif floor(Distance(ply:get_position(), localplayer:get_position())) < 1000 then
			spaceTxt = " m   "
		elseif floor(Distance(ply:get_position(), localplayer:get_position())) < 10000 then
			spaceTxt = " m "
		end
 
		-- Player's Distance From You
		text = text.."I "..floor(Distance(ply:get_position(), localplayer:get_position()))..spaceTxt
	end	
	-- Player Name
	if ply == localplayer then
		text = text.."I -YOU-"
	else
		text = text.."I "..ply_name
	end
 
	local d = ply_id
 
	menu.add_toggle(text, function()
		if selectedplayer == d then
			return true
		else
			return false
		end
	end, function(val)
		selectedplayer = d
	end)
end
 
Text("-----------Player List, "..GetPlayerCount().." Players-----------")
 
menu.add_toggle("Is Selected Player Valid", function()
	if selectedplayer == -1 then return false end
	if not player.get_player_ped(selectedplayer) then return false end
	return true 
end, function() end)
 
menu.add_float_range("Distance To Selected Player", 1, 0, 0, function()
	if selectedplayer == -1 then return 0 end
 
	local ply = player.get_player_ped(selectedplayer)
 
	if not IsPlayer(ply) then return 0 end
 
	return floor(Distance(ply:get_position(), localplayer:get_position()))
end, function() end)
 
Text(" ")
 
menu.add_action("Teleport To Player", function() TeleportToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Teleport Closest Vehicle To Player", function() TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Teleport Vehicles To Player", function() TeleportVehiclesToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Teleport Peds To Player", function() TeleportPedsToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Explode Player", function() ExplodePlayer(player.get_player_ped(selectedplayer)) end)
 
-- Building Player List
 
Text(" ")
 
for i = 0, 31 do
	local ply = player.get_player_ped(i)
	if ply then 
		add_player_option(i, ply, player.get_player_name(i))
	end
end
-- Info Panel
 
Text("  ")
if playerInfoButton then menu.add_action("PlayerInfo", function() PlayerInfo(player.get_player_ped(selectedplayer), player.get_player_name(selectedplayer)) end) end
Text("  ")