-- Made by AppleVegas
local PedConfigFlagNames = {
	"CanPunch", -- 18
	"CanFlyThruWindscreen", -- 32
	"DiesByRagdoll", -- 33
	"PutOnMotorcycleHelmet", -- 35
	"NoCollision", -- 52
	"IsShooting", -- 58
	"IsOnGround", -- 60
	"NoCollide", -- 62
	"Dead", -- 71
	"IsSniperScopeActive", -- 72
	"SuperDead", -- 73
	"IsInAir", -- 76
	"IsAiming", -- 78
	"Drunk", -- 100
	"IsNotRagdollAndNotPlayingAnim", -- 104
	"NoPlayerMelee", -- 122
	"NmMessage466", -- 125
	"CanAttackFriendlies", -- 140
	"InjuredLimp", -- 166
	"InjuredLimp2", -- 170
	"DisableShufflingToDriverSeat", -- 184
	"InjuredDown", -- 187
	"Shrink", -- 223
	"MeleeCombat", -- 224
	"DisableStoppingVehEngine", -- 241
	"IsOnStairs", -- 253
	"HasOneLegOnGround", -- 276
	"NoWrithe", -- 281
	"Freeze", -- 292
	"IsStill", -- 301
	"NoPedMelee", -- 314
	"PedSwitchingWeapon", -- 331
	"Alpha", -- 410
	"DisablePropKnockOff", -- 423
	"DisableStartingVehEngine", -- 429
	"FlamingFootprints" -- 421
}
local PedConfigFlagValues = {
	18, -- CanPunch
	32, -- CanFlyThruWindscreen
	33, -- DiesByRagdoll
	35, -- PutOnMotorcycleHelmet
	52, -- NoCollision
	58, -- IsShooting
	60, -- IsOnGround
	62, -- NoCollide
	71, -- Dead
	72, -- IsSniperScopeActive
	73, -- SuperDead
	76, -- IsInAir
	78, -- IsAiming
	100, -- Drunk
	104, -- IsNotRagdollAndNotPlayingAnim
	122, -- NoPlayerMelee
	125, -- NmMessage466
	140, -- CanAttackFriendlies
	166, -- InjuredLimp
	170, -- InjuredLimp2
	184, -- DisableShufflingToDriverSeat
	187, -- InjuredDown
	223, -- Shrink
	224, -- MeleeCombat
	241, -- DisableStoppingVehEngine
	253, -- IsOnStairs
	276, -- HasOneLegOnGround
	281, -- NoWrithe
	292, -- Freeze
	301, -- IsStill
	314, -- NoPedMelee
	331, -- PedSwitchingWeapon
	410, -- Alpha
	423, -- DisablePropKnockOff
	429, -- DisableStartingVehEngine
	421 -- FlamingFootprints
}
VehicleNames = {"adder","airbus","airtug","akula","akuma","alpha","alphaz1","alkonost","ambulance","annihilator2","annihilator","apc","ardent","armytanker","armytrailer2","armytrailer","asbo","asea2","asea","asterope","autarch","avarus","avenger2","avenger","avisa","bagger","baletrailer","baller2","baller3","baller4","baller5","baller6","baller","banshee2","banshee","barracks2","barracks3","barracks","barrage","bati2","bati","benson","besra","bestiagts","bf400","bfinjection","biff","bifta","bison2","bison3","bison","bjxl","blade","blazer2","blazer3","blazer4","blazer5","blazer","blimp2","blimp3","blimp","blista2","blista3","blista","bmx","boattrailer","bobcatxl","bodhi2","bombushka","boxville2","boxville3","boxville4","boxville5","boxville","brawler","brickade","brioso2","brioso","bruiser2","bruiser3","bruiser","brutus2","brutus3","brutus","btype2","btype3","btype","buccaneer2","buccaneer","buffalo2","buffalo3","buffalo","bulldozer","bullet","burrito2","burrito3","burrito4","burrito5","burrito","bus","buzzard2","buzzard","cablecar","caddy2","caddy3","caddy","camper","calico","caracara2","caracara","carbonizzare","carbonrs","cargobob2","cargobob3","cargobob4","cargobob","cargoplane","casco","cavalcade2","cavalcade","cerberus2","cerberus3","cerberus","cheburek","cheetah2","cheetah","chernobog","chimera","chino2","chino","cliffhanger","clique","club","coach","cog552","cog55","cogcabrio","cognoscenti2","cognoscenti","comet2","comet3","comet4","comet5","comet6","contender","coquette2","coquette3","coquette4","coquette","cruiser","crusader","cuban800","cutter","cyclone","cypher","daemon2","daemon","deathbike2","deathbike3","deathbike","defiler","deluxo","deveste","deviant","diablous2","diablous","dilettante2","dilettante","dinghy2","dinghy3","dinghy4","dinghy5","dinghy","dloader","docktrailer","docktug","dodo","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator","double","drafter","dubsta2","dubsta3","dubsta","dukes2","dukes3","dukes","dump","dune2","dune3","dune4","dune5","dune","duster","dynasty","elegy2","elegy","ellie","emerus","emperor2","emperor3","emperor","enduro","entity2","entityxf","esskey","euros","everon","exemplar","f620","faction2","faction3","faction","fagaloa","faggio2","faggio3","faggio","fbi2","fbi","fcr2","fcr","felon2","felon","feltzer2","feltzer3","firetruk","fixter","flashgt","flatbed","fmj","forklift","formula2","formula","fq2","freecrawler","freight","freightcar","freightcar2","freightcont1","freightcont2","freightgrain","freighttrailer","frogger2","frogger","fugitive","furia","furoregt","fusilade","futo","futo2","gargoyle","gauntlet2","gauntlet3","gauntlet4","gauntlet5","gauntlet","gb200","gburrito2","gburrito","glendale2","glendale","gp1","graintrailer","granger","gresley","growler","gt500","guardian","habanero","hakuchou2","hakuchou","halftrack","handler","hauler2","hauler","havok","hellion","hermes","hexer","hotknife","hotring","howard","hunter","huntley","hustler","hydra","imorgon","impaler2","impaler3","impaler4","impaler","imperator2","imperator3","imperator","infernus2","infernus","ingot","innovation","insurgent2","insurgent3","insurgent","intruder","issi2","issi3","issi4","issi5","issi6","issi7","italigtb2","italigtb","italigto","italirsx","jackal","jb7002","jb700","jester4","jester2","jester3","jester","jet","jetmax","journey","jugular","kalahari","kamacho","kanjo","khamelion","khanjali","komoda","kosatka","krieger","kuruma2","kuruma","landstalker2","landstalker","lazer","le7b","lectro","lguard","limo2","locust","longfin","lurcher","luxor2","luxor","lynx","mamba","mammatus","manana2","manana","manchez2","manchez","marquis","marshall","massacro2","massacro","maverick","menacer","mesa2","mesa3","mesa","metrotrain","michelli","microlight","miljet","minitank","minivan2","minivan","mixer2","mixer","mogul","molotok","monroe","monster3","monster4","monster5","monster","moonbeam2","moonbeam","mower","mule2","mule3","mule4","mule","nebula","nemesis","neo","neon","nero2","nero","nightblade","nightshade","nightshark","nimbus","ninef2","ninef","nokota","novak","omnis","openwheel1","openwheel2","oppressor2","oppressor","oracle2","oracle","osiris","outlaw","packer","panto","paradise","paragon2","paragon","pariah","patriot2","patriot","patrolboat","pbus2","pbus","pcj","penetrator","penumbra2","penumbra","peyote2","peyote3","peyote","pfister811","phantom2","phantom3","phantom","phoenix","picador","pigalle","police2","police3","police4","police","policeb","policeold1","policeold2","policet","polmav","pony2","pony","pounder2","pounder","prairie","pranger","predator","premier","previon","primo2","primo","proptrailer","prototipo","pyro","radi","raiden","raketrailer","rallytruck","rancherxl2","rancherxl","rapidgt2","rapidgt3","rapidgt","raptor","ratbike","ratloader2","ratloader","rcbandito","reaper","rebel2","rebel","rebla","regina","remus","rentalbus","retinue2","retinue","revolter","rhapsody","rhino","riata","riot2","riot","ripley","rocoto","rogue","romero","rrocket","rt3000","rubble","ruffian","ruiner2","ruiner3","ruiner","rumpo2","rumpo3","rumpo","ruston","s80","sabregt2","sabregt","sadler2","sadler","sanchez2","sanchez","sanctus","sandking2","sandking","savage","savestra","sc1","scarab2","scarab3","scarab","schafter2","schafter3","schafter4","schafter5","schafter6","schlagen","schwarzer","scorcher","scramjet","scrap","seabreeze","seashark2","seashark3","seashark","seasparrow2","seasparrow3","seasparrow","seminole2","seminole","sentinel2","sentinel3","sentinel","serrano","seven70","shamal","sheava","sheriff2","sheriff","shotaro","skylift","slamtruck","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","slamvan","sovereign","specter2","specter","speeder2","speeder","speedo2","speedo4","speedo","squaddie","squalo","stafford","stalion2","stalion","stanier","starling","stinger","stingergt","stockade3","stockade","stratum","streiter","stretch","strikeforce","stromberg","stryder","stunt","submersible2","submersible","sugoi","sultan3","sultan2","sultan","sultanrs","suntrap","superd","supervolito2","supervolito","surano","surfer2","surfer","surge","swift2","swift","swinger","t20","taco","tailgater2","tailgater","taipan","tampa2","tampa3","tampa","tanker2","tanker","tankercar","taxi","technical2","technical3","technical","tempesta","terbyte","tezeract","thrax","thrust","thruster","tigon","tiptruck2","tiptruck","titan","torero","tornado2","tornado3","tornado4","tornado5","tornado6","tornado","toro2","toro","toros","tourbus","towtruck2","towtruck","toreador","tr2","tr3","tr4","tractor2","tractor3","tractor","trailerlarge","trailerlogs","trailers2","trailers3","trailers4","trailers","trailersmall2","trailersmall","trash2","trash","trflat","tribike2","tribike3","tribike","trophytruck2","trophytruck","tropic2","tropic","tropos","tug","tula","tulip","turismo2","turismor","tvtrailer","tyrant","tyrus","utillitruck2","utillitruck3","utillitruck","vacca","vader","vagner","vagrant","valkyrie2","valkyrie","vamos","vectre","velum2","velum","verlierer2","verus","vetir","veto","veto2","vestra","vigero","vigilante","vindicator","virgo2","virgo3","virgo","viseris","visione","volatol","volatus","voltic2","voltic","voodoo2","voodoo","vortex","vstr","warrener","washington","wastelander","weevil","windsor2","windsor","winky","wolfsbane","xa21","xls2","xls","yosemite2","yosemite3","yosemite","youga2","youga3","youga","z190","zentorno","zhaba","zion2","zion3","zion","zombiea","zombieb","zorrusso","zr350","zr3802","zr3803","zr380","ztype"}
VehicleHashes = {3078201489,1283517198,1560980623,1181327175,1672195559,767087018,2771347558,3929093893,1171614426,295054921,837858166,562680400,159274291,3087536137,2657817814,2818520053,1118611807,2487343317,2485144969,2391954683,3981782132,2179174271,408970549,2176659152,2588363614,2154536131,3895125590,142944341,1878062887,634118882,470404958,666166960,3486135912,633712403,3253274834,1074326203,630371791,3471458123,4081974053,3403504941,4180675781,2053223216,1824333165,1274868363,86520421,1126868326,850991848,3945366167,2072156101,1739845664,4278019151,850565707,3089165662,4246935337,3025077634,3854198872,2704629607,2166734073,3681241380,3987008919,4143991942,1039032026,3703315515,3950024287,1131912276,524108981,1069929536,2859047862,4262088844,4061868990,121658888,444171386,682434785,2307837162,2815302597,3989239879,1429622905,1549126457,2600885406,2252616474,668439077,2403970600,2038858402,2139203625,3463132580,3692679425,117401876,3281516360,3612755468,736902334,237764926,3990165190,1886712733,2598821281,3387490166,2551651283,893081117,1132262048,2948279460,3581397346,745926877,788747387,3334677549,3757070668,3525819835,1147287684,1876516712,3101054893,2945871676,1254014755,2072687711,11251904,1621617168,1394036463,2025593404,4244420235,368211810,941800958,3505073125,2006918058,679453769,1909700336,3493417227,3306466016,223240013,2983812512,3602674979,6774487,2933279331,349605904,390201602,2728360112,2196012677,2222034228,704435172,906642318,330661258,3690124666,2264796000,3249425686,2272483501,1561920505,661493923,2568944644,683047626,1011753235,784565758,2566281822,108773431,448402357,321739290,3650256867,3288047904,1392481335,1755697647,2890830793,2006142190,2482017624,2920466844,4267640610,822018448,1483171323,1591739866,1279262537,1790834270,4055125828,1682114128,3164157193,276773164,509498602,867467158,3314393930,1033245328,1770332643,2154757102,3410276810,3393804037,3379262425,3308022675,3606777648,2919906639,3001042683,426742808,736672010,80636076,2623969160,686471183,3900892662,3057713523,1177543287,3968823444,2134119907,723973206,2164484578,534258863,1897744184,3467805257,3982671785,2633113103,970356638,310284501,3728579874,196747873,3027423925,1323778901,2411965148,3053254478,3609690755,1753414259,2174267100,3003014393,2035069708,2038480341,2538945576,4289813342,3703357000,2504420315,2255212070,2175389151,1617472902,55628203,3005788552,2452219115,2647026068,1127131465,3537231886,627535535,4205676014,3903372712,2299640309,2728226064,1938952078,3458454463,3035832600,1353720154,1426219628,1491375716,2334210311,340154634,3157435195,4240635011,1030400667,184361638,3186376089,920453016,240201337,642617954,3517691494,1949211328,744705981,1909141499,960812448,3205927392,499169875,2016857647,2787736776,741090084,349315417,722226637,1934384720,2172320429,2494797253,1909189272,296357396,2549763894,3381377750,75131841,1234311532,1019737494,2519238556,2751205197,1304459735,2215179066,2186977100,884422927,4039289119,1265391242,4262731174,444583674,387748548,1518533038,2310691317,3932816511,15219735,301427732,37348240,1115909093,3287439187,4252008158,486987393,600450546,970385471,3162245632,1009171724,2370166601,2550461639,3001042683,1637620610,3539435063,444994115,2889029532,418536135,3005245074,4135840458,2071877360,2370534026,2434067162,886934177,3117103977,931280609,628003514,1537277726,1239571361,1854776567,3812247419,2246633323,3963499524,3145241962,3670438162,394110044,1051415893,2712905841,3188613414,4080061290,2997294755,1058115860,861409633,4174679674,4086055493,92612664,4173521127,409049982,544021352,2859440138,3460613305,1336872304,3630826055,410882957,2922118804,3456868130,1269098716,3013282534,3062131285,640818791,469291905,4180339789,3353694737,1861786828,2068293287,3080673438,621481054,482197771,2634021974,2548391185,1717532765,2170765704,1086534307,2771538552,3251507587,1233534620,3663206819,4152024626,2634305738,2044532910,3546958660,2230595153,914654722,868868440,1046206681,2531412055,165154707,3040635986,3168702960,3984502180,475220373,3510150843,3545667823,1565978651,3861591579,1721676810,840387324,3579220348,3449006043,1896491931,525509695,1783355638,3244501995,2242229361,1945374990,904750859,3412338231,3660088182,2674840994,2445973230,1093792632,1034187331,2688780135,2351681756,433954513,2999939664,2833484545,1032823388,1036591958,2465530446,3517794615,1492612435,1181339704,2069146067,884483972,3783366066,1348744438,1987142870,408825843,569305213,3863274624,1488164764,1416466158,3847255899,867799010,3874056184,3486509883,4018222598,345756458,2287941233,3385765638,2536829930,3663644634,3917501776,2490551588,1107404867,1830407356,2465164804,2645431192,177270108,2157618379,2199527893,1507916787,1078682497,2667966721,1912215274,2321795001,2046537925,4260343491,2758042359,2515846680,456714581,353883353,943752001,4175309224,1653666139,2112052861,2844316578,741586030,3806844075,2411098011,1416471345,2254540506,3144368207,356391690,2123327359,2908775872,2643899483,2765724541,390902130,2191146052,1933662059,1645267888,1737773231,2049897956,2360515092,3620039993,1873600305,3705788919,3627815886,4008920556,234062309,2249373259,3087195462,83136452,4280472072,1377217886,3196165219,2031587082,1841130506,3884762073,841808271,782665360,2762269779,2601952180,3089277354,3448987385,2136773105,3319621991,627094268,916547552,3842363289,2589662668,3401388520,941494461,777714999,4067225593,2518351607,1475773103,1162065741,719660200,3970348707,223258115,2609945748,734217681,3695398481,2841686334,788045382,1491277511,989381445,3105951696,4212341271,903794909,1352136073,1542143200,3715219435,3147997943,3039514899,2809443750,1489967196,3406724313,1922255844,3787471536,3548084598,4108429845,3656405053,2594165727,3902291871,3678636260,3983945033,3264692260,1229411063,1593933419,3568198617,2484160806,1221512915,873639469,1104234922,1349725314,1337041428,2537130571,3080461301,819197656,1922257928,2611638396,3889340782,1044954915,3249056020,833469436,1119641113,2233918197,373261600,1742022738,729783779,743478836,1074745671,1886268224,437538602,231083307,728614474,219613597,3484649228,4192631813,400514754,321186144,3893323758,1923400478,2817386317,2594093022,1545842587,2196019706,4080511798,1747439474,1723137093,1741861769,2333339779,1692272545,886810209,301304410,2172210288,3228633070,771711535,987469656,4003946083,872704284,970598228,3999278268,4012021193,1123216662,2623428164,710198397,384071873,2983726598,699456151,2400073108,1075432268,3955379698,500482303,1663218586,1951180813,3050505892,3286105550,3160260734,3223586949,3084515313,972671128,1956216962,3564062519,586013744,3338918751,1180875963,1356124575,2198148358,272929391,2306538597,1031562256,1044193113,1836027715,1489874736,2936769864,3347205726,48339065,1981688531,1504306544,1531094468,1762279763,2261744861,2497353967,2736567667,464687292,908897389,1070967343,3126015148,1941029835,3852654278,2971866336,1455990255,2078290630,1784254509,2091594960,2218488798,1445631933,1641462412,1502869817,2016027501,2715434129,2236089197,3194418602,3417488910,2413121211,712162987,3039269212,1917016601,2942498482,3061159916,3894672200,1127861609,3631668194,101905590,1448677353,290013743,1887331236,2194326579,1043222410,1456744817,3312836369,408192225,2524324030,3918533058,2067820283,887537515,2132890591,516990260,338562499,4154065143,1939284556,740289177,1543134283,2694714877,4245851645,2754593701,1077420264,2621610858,1102544804,298565713,2014313426,3437611258,2802050217,1341619767,3469130167,3052358707,2941886209,3395457658,16646064,3796912450,3903371924,3296789504,447548909,2449479409,989294410,2672523198,523724515,2006667053,3685342204,1456336509,579912970,1777363799,2382949506,1644055914,2364918497,1581459400,4084658662,3676349299,917809321,3862958888,1203490606,1693751655,67753863,1871995513,1026149675,1802742206,65402552,838982985,2891838741,1284356689,3101863448,1862507111,3172678083,3285698347,3724934023,3612858749,2436313176,3188846534,2816263004,540101442,758895617}


local Tsk=1 			--On Admin Detection; 1-DoARoundabout, 2-JoinPublic, 3-EmptySession
local ChSs=nil			--ChangeSession Hotkey, nil to disable
local EmSs=19 --Pause|Break key	--EmptySession Hotkey, nil to disable
local enable = false  --ExplodeLoop hotkey default(on/off>true/false)
local TL=105			--TrollLoop hotkey, Numpad9

local SsTy=1575012		--v1.60 Session Type
local SsTr=1574589		--v1.60 Session Trigger
local CrVh=2725269		--Create Vehicle Offset

local admins={ "Spacer-galore","Fortune_Cukie","Laurie_Williams","RollD20","SecretWizzle54","Wawaweewa_I_Like","BackBoyoDrill","NoAuthorityHere","ScentedString","CapnZebraZorse","godlyGoodestBoi","whiskylifter","pigeon_nominate","SlightlyEvilHoss","ChangryMonkey","StompoGrande","x_Shannandoo_x","Long-boi-load","NootN0ot","applecloning","BeoMonstarh","BlobbyFett22","ExoSnowBoarder","ExtremeThanks15","BailMail99","ForrestTrump69","KingOfGolf","KrustyShackles","PassiveSalon","PearBiscuits34","SlowMoKing","Smooth_Landing","SuperTrevor123","Tamehippo","Thrillhouse12","LazingLion","KorruptUserDayta","LivelyCommanderS","FishingFissures","uwu-bend","VickDMF","AlpacaBarista","The_Real_Harambe","Flares4Lyfe","BinnyAndTheJets","VinnyPetrol","LazerGameBounce","FluteOfMilton","PipPipJongles","YUyu-lampon","DeadOnAir","Dumptruck42168","Poppernopple","KrunchyCh1cken","BlessedChu","Surgeio","WindmillDuncan","Wanted_Sign42","Paulverines","ZombieTom66","st1nky_p1nky","OilyLordAinsley","FruitPuncher15","PisswasserMax","BanSparklinWater","BrucieJuiceyIV","RapidRaichu","kingmario11","DigitalFox9","CheeesesteakPhil","FoxesAreCool69","SweetPlumbus","NotSweetPlumbus","IM-_-Wassup","WickedFalcon4054","aquabull","Ghostofwar1","DAWNBILLA","Aur3lian","JulianApost4te","DarkStar7171","xCuteBunny","random_123","SheddingYeti","random123","flyingcobra16","CriticalRegret","ScentedPotter","Huginn5","Sonknuck-","HammerDaddy69","johnet123","bipolarcarp","jakw0lf","Kakorot02","CrazyCatPilots","G_ashman","Rossthetic","StrongBelwas1","vulconn","TonyMSD1","AMoreno14","PayneInUrAbs","shibuz_gamer123","M1thras","Th3_Morr1gan","Z3ro_Chill","Titan261","Coffee_Collie","YellingRat","BananaGod951","RDR_Dev","FecundWolf","trajan5","thewho146","Bangers_RSG","Bash_RSG","Bubblez_RSG","ramendingo","ChefRSG","Chunk_RSG","HotTub_RSG","JPEGMAFIA_RSG","Klang_RSG","Lean1_RSG","Ton_RSG","RSGWolfman","TheUntamedVoid","TylerTGTAB","Wilted_spinach","DannSw","RSGINTJoe","RSGGuestV","RSGGuest50","RSGGuest40","Logic_rsg","RSGGuest12","RSGGuest7","ScottM_RSG","Rockin5","MonkeyViking","Anghard07","playrockstar6","PlayRockstar5","PlayRockstar1","Player8_RSG","Player7_RSG","MaxPayneDev16","MaxPayneDev15","MaxPayneDev14","MaxPayneDev13","MaxPayneDev12","MaxPayneDev11","MaxPayneDev10","MaxPayneDev9","MaxPayneDev8","MaxPayneDev7","MaxPayneDev6","MaxPayneDev5","MaxPayneDev4","MaxPayneDev3","MaxPayneDev2","MaxPayneDev1","MaxPayne3Dev12","MaxPayne3Dev11","MaxPayne3Dev9","GTAdev4","GTAdev3"}
	
-- On Admin Detection
local nme=0
local function ondetect()
	if Tsk==2 then ChangeSession()
	elseif Tsk==3 then EmptySession()
	else if nme~=adm then nme=adm
	menu.send_key_press(157)
end end end
local function ChangeSession()
	globals.set_int(SsTy, 0)
	globals.set_int(SsTr, 1)
	sleep(0.01)
	globals.set_int(SsTr, 0)
	nme=0
end
if Hkey1 then menu.remove_hotkey(Hkey1) end
if ChSs then Hkey1=menu.register_hotkey(ChSs, ChangeSession) end
local function EmptySession()
	menu.empty_session() nme=0
end
if Hkey2 then menu.remove_hotkey(Hkey1) end
if EmSs then Hkey2=menu.register_hotkey(EmSs, EmptySession) end

-- Function definitions
local function null() end
local function Text(submenu, text)
	if (submenu ~= nil) then
		submenu:add_action(text, null)
	else
		menu.add_action(text, null)
	end
end

local function Distance(vec1, vec2)
	return math.sqrt(((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2))
end

-- Player Info
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
local function PlyVeh(veh)
	for i = 0, 31 do
		ply = player.get_player_ped(i)
		if ply then if ply:get_current_vehicle()==veh then
		return true else return false end end
	end
end
local function IsModder(ply)
	if not IsPlayer(ply) then return false end
	if ply:get_max_health() < 100 then return true end
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
	if ply:get_infinite_clip()then return true end --Infinit clip
	if ply:get_no_ragdoll() then return true end --No ragdoll
	if ply:get_seatbelt() and ply:is_in_vehicle() then return true end
	if ply:get_current_weapon() and ply:get_current_weapon():get_current_ammo() > 0 and ply:get_infinite_ammo() then return true end --Infinite ammo
	return false
end
local function GetPlayerCount()
	return player.get_number_of_players()
end
local function GetVehicleNameByHash(hash)
	for i = 1, #VehicleHashes do
		if VehicleHashes[i] == hash then return VehicleNames[i] end
	end
	return "🚗"
end
-- Action functions
local function TeleportToPlayer(ply, seconds)
	if not ply or ply == nil then return end 
	local pos = ply:get_position()
	if seconds then
		if localplayer:is_in_vehicle() then
			print("can not teleport while in vehicle")
			return
		end
 
		local oldpos = localplayer:get_position()
		localplayer:set_position(pos)
		sleep(seconds)
		localplayer:set_freeze_momentum(true) 
		localplayer:set_config_flag(292,true)
		localplayer:set_position(oldpos)
		localplayer:set_freeze_momentum(false) 
		localplayer:set_config_flag(292,false)
		return
	end
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(pos)
	else
		localplayer:get_current_vehicle():set_position(pos)
	end
end

local function TeleportClosestVehicleToPlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local veh = localplayer:get_nearest_vehicle()
	if not veh or localplayer:get_nearest_vehicle()==localplayer:get_current_vehicle() then return end
	veh:set_position(ply:get_position()+vector3(2*disX, 2*disY, disZ))
end
 
local function TeleportPedsToPlayer(ply, dead)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			if not ped:is_in_vehicle() then
				ped:set_position(ply:get_position()+vector3(2*disX, 2*disY, disZ))
			end
		end
	end
end
 
local function ExplodePlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local currentvehicle = nil 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not PlyVeh(veh) then
			acc=veh:get_acceleration()
			veh:set_acceleration(0)
			veh:set_rotation(vector3(0,0,180))
			veh:set_health(-1)
			veh:set_position(ply:get_position()+vector3(disX, disY, disZ))
			veh:set_acceleration(acc)
		end
		end
	end
end
 
local function LaunchPlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local currentvehicle = nil 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not PlyVeh(veh) then
			acc=veh:get_acceleration()
			veh:set_acceleration(0)
			veh:set_rotation(vector3(0,0,0))
			veh:set_gravity(-100)
			veh:set_position(ply:get_position()+vector3(2.5*disX, 2.5*disY, disZ-5))
			veh:set_acceleration(acc)
		end
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_gravity(9.8)
		end
	end
end
 
local function SlamPlayer(ply)
	if not ply or ply == nil then return end
	pos2=ply:get_position()
	sleep(0.1)
	pos1=ply:get_position()
	disX=(pos1.x-pos2.x) disY=(pos1.y-pos2.y) disZ=(pos1.z-pos2.z)
	local currentvehicle = nil 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
	local i = 0
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not PlyVeh(veh) then
			acc=veh:get_acceleration()
			veh:set_acceleration(0)
			veh:set_rotation(vector3(0,0,0))
			veh:set_gravity(10000)
			veh:set_position(ply:get_position()+vector3(5*disX, 5*disY, disZ + 100))
			veh:set_acceleration(acc)
		end
		end
	end
	sleep(1)
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
		if not ply:get_current_vehicle() or ply:get_current_vehicle() ~= veh then
			veh:set_gravity(9.8)
		end
		end
	end
end
 
-- Player option 
local selectedplayer = -1
 
local function f_p_o(ply_id, ply, ply_name) -- Format Player Option Text
	local text = ""
	if ply == localplayer then
		text = text.."YOU"
	else
		text = text..""..ply_name..""
	end
	if IsModder(ply) then
		text = text.." | MOD"
	end
	-- Is In GodMode, if not then Player Health & Armor
	if ply:get_godmode() then
		text = text.." | GOD"
	else
		text = text.." "..string.format("%4.0f",(ply:get_health()/ply:get_max_health())*100).."%/"..string.format("%2.0f",ply:get_armour()*2).."%"
	end

	if ply:is_in_vehicle() then
		local veh = ply:get_current_vehicle()
		if veh ~= nil then
			local veh_hash = veh:get_model_hash()
			if veh_hash ~= nil then
				local veh_name = GetVehicleNameByHash(veh_hash)
				if veh_name ~= nil then
					text = text.." | "..veh_name
				else
					text = text.." | 🚗"
				end
			else
				text = text.." | 🚗"
			end
			if veh:get_godmode() then
				text = text.."*"
			end
		else
			text = text.." | 🚗"
		end
	else 
		text = text.." | 🚶"
	end

	-- Player Wanted Level
	text = text.." | "..ply:get_wanted_level().."✰"

	-- Player's Distance From You
	text = text.." | "..math.floor(Distance(ply:get_position(), localplayer:get_position())).." m"
	
	return text
end
 
local function add_player_option(submenu, ply_id, ply, ply_name)
	local text = f_p_o(ply_id, ply, ply_name)
	local d = ply_id
 
	if (submenu ~= nil) then
		submenu:add_bare_item(text, function() return f_p_o(ply_id, ply, ply_name).."|"..(selectedplayer == ply_id and "✓" or "□")  end, function() selectedplayer = d end, null, null)
	else
		menu.add_bare_item(text, function() return f_p_o(ply_id, ply, ply_name).."|"..(selectedplayer == ply_id and "✓" or "□") end, function() selectedplayer = d end, null, null)
	end
end
 
local function add_info_option(submenu, text, funcget, forceplayer)
	local func = function() 
		local ply = player.get_player_ped(forceplayer and forceplayer or selectedplayer)
		if not ply then return text..": **Invalid**" end
		return text..": "..funcget(ply)
	end
	if (submenu ~= nil) then
		submenu:add_bare_item(text..": ", func, null, null, null)
	else
		menu.add_bare_item(text..": ", func, null, null, null)
	end
end

-- TrollLoop
local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
local function switch()
	if selectedplayer==nil then return end
	if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 8192)
		globals.set_int(CrVh+27+6, selectedplayer)
		sleep(1.0)
		menu.send_key_press(155)
	else
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	end
end
if Exploop then menu.remove_hotkey(Exploop) end
local Exploop=nil
if enable then
	Exploop = menu.register_hotkey(TL, switch)
end
local function LooP(e)
	if e then
		Exploop = menu.register_hotkey(TL, switch)
	else
		menu.remove_hotkey(Exploop)
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
		globals.set_int(CrVh+27+6, 0)
	end
end
-- menu.add_toggle("TrollLoop(NUM9)", function()
-- 	return enable
-- end, function()
-- 	enable = not enable 
-- 	LooP(enable)
-- end)

-- Building Player List
local playerlist = menu.add_submenu("--- PLAYER LIST ---")
local adm=""
local function BuildListOld()
	Text(playerlist, "--- "..GetPlayerCount().." Players ---")

	-- test
	local function IsInArray(arr, val)
		for i = 1, #arr do
			if arr[i] == val then return true end
		end 
		return false 
	end
	 
	local PlayersDistances = {}
	local SortedPlayers = {}
	 
	for i = 0, 31 do
		local ply = player.get_player_ped(i)
		if ply then 
			PlayersDistances[i] = {ply, Distance(ply:get_position(), localplayer:get_position())}
			i = i + 1
		end
	end
	if i == nil then return end
	for c = 1, i do
		local smallest = {nil, nil}
		for plyd = 1, #PlayersDistances do
			if not IsInArray(SortedPlayers, PlayersDistances[plyd][1]) then 
				if smallest[2] == nil or PlayersDistances[plyd][2] <= smallest[2] then
					smallest = PlayersDistances[plyd]
				end
			end
		end
		SortedPlayers[c] = smallest[1]
	end
	 
	for ply = 1, #SortedPlayers do
		add_player_option(playerlist, ply, SortedPlayers[ply], player.get_player_name(ply))
		admin=player.get_player_name(ply)
		for x=1, #admins do
			if admin==admins[x] then
				adm="[ Admin>"..admin.." ]"
				ondetect()
			end
		end
	end
	-- test

	Text(playerlist, "    ---End---"..adm)
	playerlist:add_array_item("On Admin Detection>", {"Do a roundabout", "Change Session", "Empty Session"}, function() return Tsk end,
	function(d) Tsk=d ondetect() end)
 	add_info_option(playerlist, "Selected Player>", function() return player.get_player_name(selectedplayer) end)
	
	-- Troll Options
	local LTr
	local function LTro()
		if LTr == nil then
			return 1
		else
			return LTr
		end
	end
	local TrOp = {}
	TrOp[1] = "Explosion"
	TrOp[2] = "Anti-Gravity"
	TrOp[3] = "Slamming"
	playerlist:add_array_item("Troll by>", TrOp, function() return LTro() end, function(Trll)
		LTr=Trll
		if Trll == 1 then
			ExplodePlayer(player.get_player_ped(selectedplayer))
		elseif Trll == 2 then
			LaunchPlayer(player.get_player_ped(selectedplayer))
		else
			SlamPlayer(player.get_player_ped(selectedplayer))
		end
	end)
	
	--Teleport Options
	playerlist:add_int_range("Peek for(seconds)", 2, 1, 10, function() return 2 end, function(n) TeleportToPlayer(player.get_player_ped(selectedplayer), n) end)
	
	local LGf
	local function LsGft()
		if LGf == nil then
			return 2
		else
			return LGf
		end
	end
	local OlPos
	local Used
 	local TPOp = {}
	TPOp[1] = "Yourself"
	TPOp[2] = "Closest Vehicle"
	TPOp[3] = "Peds"
	playerlist:add_array_item("Send to player>", TPOp, function() return LsGft() end, function(LsTP)
		LGf=LsTP
		if LsTP == 1 then
			if Used==1 or Used==nil then
				OlPos=localplayer:get_position()
				Used=0
			end
			TeleportToPlayer(player.get_player_ped(selectedplayer))
		elseif LsTP == 2 then
			TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer))
		elseif LsTP == 3 then 
			TeleportPedsToPlayer(player.get_player_ped(selectedplayer))
		end
	end)
	playerlist:add_action("Teleport back", function()
		if OlPos~=nil then
			if not localplayer:is_in_vehicle() then
				localplayer:set_position(OlPos)
			else
				localplayer:get_current_vehicle():set_position(Olpos)
			end
			if localplayer:get_position()==OlPos then
				Used=1
			end
		end
	end)


local moreinfo=playerlist:add_submenu("More info on player")
	local function ply() return player.get_player_ped(selectedplayer) end
	local TR={} TR[1]="Yes" TR[0]="No"
	moreinfo:add_float_range("MaxHealth", 0, 0, 0, function()
		if ply() then return ply():get_max_health() end end, function() end)
	moreinfo:add_float_range("Health", 0, 0, 0, function()
		if ply() then return ply():get_health() end end, function() end)
	moreinfo:add_float_range("Armour", 0, 0, 0, function()
		if ply() then return ply():get_armour() end end, function() end)
	moreinfo:add_float_range("Run Speed", 0, 0, 0, function()
		if ply() then return ply():get_run_speed() end end, function() end)
	moreinfo:add_float_range("Swim Speed", 0, 0, 0, function()
		if ply() then return ply():get_swim_speed() end end, function() end)
	moreinfo:add_int_range("Wanted level", 0, 0, 0, function()
		if ply() then return ply():get_wanted_level() end end, function() end)
	moreinfo:add_array_item("Can be targeted>", TR, function()
		if ply() and ply():get_can_be_targeted() then return 1 else return 0 end end, function() end)
	moreinfo:add_array_item("No ragdoll>", TR, function()
		if ply() and ply():get_no_ragdoll() then return 1 else return 0 end end, function() end)
		
	moreinfo:add_action("            Vehicle Info(close range only)", function() end)
	moreinfo:add_array_item("Seatbelt>", TR, function()
		if ply() and ply():get_seatbelt() then return 1 else return 0 end end, function() end)
	moreinfo:add_float_range("Gravity", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_gravity() end end, function() end)
	moreinfo:add_float_range("Accelaration", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_acceleration() end end, function() end)
	moreinfo:add_float_range("Max Speed", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_max_speed() end end, function() end)
	moreinfo:add_float_range("Mass", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_mass() end end, function() end)
	moreinfo:add_int_range("Bomb Count>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_bomb_count() end end, function() end)
	moreinfo:add_int_range("CounterMeasure Count>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_countermeasure_count() end end, function() end)
	moreinfo:add_float_range("Boost amount>", 0, 0, 0, function()
		if ply() and ply():is_in_vehicle() then return ply():get_current_vehicle():get_boost() end end, function() end)
	moreinfo:add_array_item("Boost is active>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_boost_active() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Can be targeted>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_can_be_targeted() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Visible Damage>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_can_be_visibly_damaged() then return 1 else return 0 end end end, function() end)
	moreinfo:add_array_item("Window Damage>", TR, function()
		if ply() and ply():is_in_vehicle() then if ply():get_current_vehicle():get_window_collisions_disabled() then return 0 else return 1 end end end, function() end)
		
	moreinfo:add_action("                     Weapon Info", function() end)
		
	moreinfo:add_array_item("Infinite Ammo>", TR, function()
		if ply() and ply():get_infinite_ammo() then return 1 else return 0 end end, function() end)
	moreinfo:add_array_item("Infinite Clip>", TR, function()
		if ply() and ply():get_infinite_clip() then return 1 else return 0 end end, function() end)
	moreinfo:add_int_range("Current Ammo", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_current_ammo() end end, function() end)
	moreinfo:add_float_range("Reload time multiplier", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_reload_time_multiplier() end end, function() end)
	moreinfo:add_float_range("Time between shots", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_time_between_shots() end end, function() end)
	moreinfo:add_float_range("Range", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_range() end end, function() end)
	moreinfo:add_float_range("Lock-On range", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_lock_on_range() end end, function() end)
	moreinfo:add_float_range("Ped Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_ped_force() end end, function() end)
	moreinfo:add_float_range("Vehicle Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_vehicle_force() end end, function() end)
	moreinfo:add_float_range("Heli Hit Force", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_heli_force() end end, function() end)
	moreinfo:add_int_range("Fire Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_fire_type() end end, function() end)
	moreinfo:add_int_range("Explosion Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_explosion_type() end end, function() end)
	moreinfo:add_int_range("Damage Type", 0, 0, 0, function()
		if ply() and ply():get_current_weapon() then return ply():get_current_weapon():get_damage_type() end end, function() end)


local playerflags=playerlist:add_submenu("Player Flags")
	local function ply() return player.get_player_ped(selectedplayer) end
	local function hasConfigFlag(flag)
		_player = ply()
		if _player == nil or flag == nil then return false end
		return _player:get_config_flag(flag)
	end
	local function setConfigFlag(flag, v)
		_player = ply()
		if _player ~= nil and flag ~= nil then _player:set_config_flag(flag, v) end
	end
	local function add_flag_toggle(name, flag)
		if name == nil or flag == nil then return end
		playerflags:add_toggle(name, function() return hasConfigFlag(flag) end, function(v) setConfigFlag(flag, v) end)
	end
	for i = 1, #PedConfigFlagNames do
		add_flag_toggle(""..PedConfigFlagNames[i], PedConfigFlagValues[i])
	end

end

-- List Updater
menu.add_bare_item("Reload Player List", function() playerlist:clear() BuildListOld() end, null, null, null)



