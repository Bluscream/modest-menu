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
local VehicleHashNames = {
	"adder", -- 3078201489
    "airbus", -- 1283517198
    "airtug", -- 1560980623
    "akula", -- 1181327175
    "akuma", -- 1672195559
    "alpha", -- 767087018
    "alphaz1", -- 2771347558
    "alkonost", -- 3929093893
    "ambulance", -- 1171614426
    "annihilator2", -- 295054921
    "annihilator", -- 837858166
    "apc", -- 562680400
    "ardent", -- 159274291
    "armytanker", -- 3087536137
    "armytrailer2", -- 2657817814
    "armytrailer", -- 2818520053
    "asbo", -- 1118611807
    "asea2", -- 2487343317
    "asea", -- 2485144969
    "asterope", -- 2391954683
    "autarch", -- 3981782132
    "avarus", -- 2179174271
    "avenger2", -- 408970549
    "avenger", -- 2176659152
    "avisa", -- 2588363614
    "bagger", -- 2154536131
    "baletrailer", -- 3895125590
    "baller2", -- 142944341
    "baller3", -- 1878062887
    "baller4", -- 634118882
    "baller5", -- 470404958
    "baller6", -- 666166960
    "baller", -- 3486135912
    "banshee2", -- 633712403
    "banshee", -- 3253274834
    "barracks2", -- 1074326203
    "barracks3", -- 630371791
    "barracks", -- 3471458123
    "barrage", -- 4081974053
    "bati2", -- 3403504941
    "bati", -- 4180675781
    "benson", -- 2053223216
    "besra", -- 1824333165
    "bestiagts", -- 1274868363
    "bf400", -- 86520421
    "bfinjection", -- 1126868326
    "biff", -- 850991848
    "bifta", -- 3945366167
    "bison2", -- 2072156101
    "bison3", -- 1739845664
    "bison", -- 4278019151
    "bjxl", -- 850565707
    "blade", -- 3089165662
    "blazer2", -- 4246935337
    "blazer3", -- 3025077634
    "blazer4", -- 3854198872
    "blazer5", -- 2704629607
    "blazer", -- 2166734073
    "blimp2", -- 3681241380
    "blimp3", -- 3987008919
    "blimp", -- 4143991942
    "blista2", -- 1039032026
    "blista3", -- 3703315515
    "blista", -- 3950024287
    "bmx", -- 1131912276
    "boattrailer", -- 524108981
    "bobcatxl", -- 1069929536
    "bodhi2", -- 2859047862
    "bombushka", -- 4262088844
    "boxville2", -- 4061868990
    "boxville3", -- 121658888
    "boxville4", -- 444171386
    "boxville5", -- 682434785
    "boxville", -- 2307837162
    "brawler", -- 2815302597
    "brickade", -- 3989239879
    "brioso2", -- 1429622905
    "brioso", -- 1549126457
    "bruiser2", -- 2600885406
    "bruiser3", -- 2252616474
    "bruiser", -- 668439077
    "brutus2", -- 2403970600
    "brutus3", -- 2038858402
    "brutus", -- 2139203625
    "btype2", -- 3463132580
    "btype3", -- 3692679425
    "btype", -- 117401876
    "buccaneer2", -- 3281516360
    "buccaneer", -- 3612755468
    "buffalo2", -- 736902334
    "buffalo3", -- 237764926
    "buffalo", -- 3990165190
    "bulldozer", -- 1886712733
    "bullet", -- 2598821281
    "burrito2", -- 3387490166
    "burrito3", -- 2551651283
    "burrito4", -- 893081117
    "burrito5", -- 1132262048
    "burrito", -- 2948279460
    "bus", -- 3581397346
    "buzzard2", -- 745926877
    "buzzard", -- 788747387
    "cablecar", -- 3334677549
    "caddy2", -- 3757070668
    "caddy3", -- 3525819835
    "caddy", -- 1147287684
    "camper", -- 1876516712
    "calico", -- 3101054893
    "caracara2", -- 2945871676
    "caracara", -- 1254014755
    "carbonizzare", -- 2072687711
    "carbonrs", -- 11251904
    "cargobob2", -- 1621617168
    "cargobob3", -- 1394036463
    "cargobob4", -- 2025593404
    "cargobob", -- 4244420235
    "cargoplane", -- 368211810
    "casco", -- 941800958
    "cavalcade2", -- 3505073125
    "cavalcade", -- 2006918058
    "cerberus2", -- 679453769
    "cerberus3", -- 1909700336
    "cerberus", -- 3493417227
    "cheburek", -- 3306466016
    "cheetah2", -- 223240013
    "cheetah", -- 2983812512
    "chernobog", -- 3602674979
    "chimera", -- 6774487
    "chino2", -- 2933279331
    "chino", -- 349605904
    "cliffhanger", -- 390201602
    "clique", -- 2728360112
    "club", -- 2196012677
    "coach", -- 2222034228
    "cog552", -- 704435172
    "cog55", -- 906642318
    "cogcabrio", -- 330661258
    "cognoscenti2", -- 3690124666
    "cognoscenti", -- 2264796000
    "comet2", -- 3249425686
    "comet3", -- 2272483501
    "comet4", -- 1561920505
    "comet5", -- 661493923
    "comet6", -- 2568944644
    "contender", -- 683047626
    "coquette2", -- 1011753235
    "coquette3", -- 784565758
    "coquette4", -- 2566281822
    "coquette", -- 108773431
    "cruiser", -- 448402357
    "crusader", -- 321739290
    "cuban800", -- 3650256867
    "cutter", -- 3288047904
    "cyclone", -- 1392481335
    "cypher", -- 1755697647
    "daemon2", -- 2890830793
    "daemon", -- 2006142190
    "deathbike2", -- 2482017624
    "deathbike3", -- 2920466844
    "deathbike", -- 4267640610
    "defiler", -- 822018448
    "deluxo", -- 1483171323
    "deveste", -- 1591739866
    "deviant", -- 1279262537
    "diablous2", -- 1790834270
    "diablous", -- 4055125828
    "dilettante2", -- 1682114128
    "dilettante", -- 3164157193
    "dinghy2", -- 276773164
    "dinghy3", -- 509498602
    "dinghy4", -- 867467158
    "dinghy5", -- 3314393930
    "dinghy", -- 1033245328
    "dloader", -- 1770332643
    "docktrailer", -- 2154757102
    "docktug", -- 3410276810
    "dodo", -- 3393804037
    "dominator2", -- 3379262425
    "dominator3", -- 3308022675
    "dominator4", -- 3606777648
    "dominator5", -- 2919906639
    "dominator6", -- 3001042683
    "dominator7", -- 426742808
    "dominator8", -- 736672010
    "dominator", -- 80636076
    "double", -- 2623969160
    "drafter", -- 686471183
    "dubsta2", -- 3900892662
    "dubsta3", -- 3057713523
    "dubsta", -- 1177543287
    "dukes2", -- 3968823444
    "dukes3", -- 2134119907
    "dukes", -- 723973206
    "dump", -- 2164484578
    "dune2", -- 534258863
    "dune3", -- 1897744184
    "dune4", -- 3467805257
    "dune5", -- 3982671785
    "dune", -- 2633113103
    "duster", -- 970356638
    "dynasty", -- 310284501
    "elegy2", -- 3728579874
    "elegy", -- 196747873
    "ellie", -- 3027423925
    "emerus", -- 1323778901
    "emperor2", -- 2411965148
    "emperor3", -- 3053254478
    "emperor", -- 3609690755
    "enduro", -- 1753414259
    "entity2", -- 2174267100
    "entityxf", -- 3003014393
    "esskey", -- 2035069708
    "euros", -- 2038480341
    "everon", -- 2538945576
    "exemplar", -- 4289813342
    "f620", -- 3703357000
    "faction2", -- 2504420315
    "faction3", -- 2255212070
    "faction", -- 2175389151
    "fagaloa", -- 1617472902
    "faggio2", -- 55628203
    "faggio3", -- 3005788552
    "faggio", -- 2452219115
    "fbi2", -- 2647026068
    "fbi", -- 1127131465
    "fcr2", -- 3537231886
    "fcr", -- 627535535
    "felon2", -- 4205676014
    "felon", -- 3903372712
    "feltzer2", -- 2299640309
    "feltzer3", -- 2728226064
    "firetruk", -- 1938952078
    "fixter", -- 3458454463
    "flashgt", -- 3035832600
    "flatbed", -- 1353720154
    "fmj", -- 1426219628
    "forklift", -- 1491375716
    "formula2", -- 2334210311
    "formula", -- 340154634
    "fq2", -- 3157435195
    "freecrawler", -- 4240635011
    "freight", -- 1030400667
    "freightcar", -- 184361638
    "freightcar2", -- 3186376089
    "freightcont1", -- 920453016
    "freightcont2", -- 240201337
    "freightgrain", -- 642617954
    "freighttrailer", -- 3517691494
    "frogger2", -- 1949211328
    "frogger", -- 744705981
    "fugitive", -- 1909141499
    "furia", -- 960812448
    "furoregt", -- 3205927392
    "fusilade", -- 499169875
    "futo", -- 2016857647
    "futo2", -- 2787736776
    "gargoyle", -- 741090084
    "gauntlet2", -- 349315417
    "gauntlet3", -- 722226637
    "gauntlet4", -- 1934384720
    "gauntlet5", -- 2172320429
    "gauntlet", -- 2494797253
    "gb200", -- 1909189272
    "gburrito2", -- 296357396
    "gburrito", -- 2549763894
    "glendale2", -- 3381377750
    "glendale", -- 75131841
    "gp1", -- 1234311532
    "graintrailer", -- 1019737494
    "granger", -- 2519238556
    "gresley", -- 2751205197
    "growler", -- 1304459735
    "gt500", -- 2215179066
    "guardian", -- 2186977100
    "habanero", -- 884422927
    "hakuchou2", -- 4039289119
    "hakuchou", -- 1265391242
    "halftrack", -- 4262731174
    "handler", -- 444583674
    "hauler2", -- 387748548
    "hauler", -- 1518533038
    "havok", -- 2310691317
    "hellion", -- 3932816511
    "hermes", -- 15219735
    "hexer", -- 301427732
    "hotknife", -- 37348240
    "hotring", -- 1115909093
    "howard", -- 3287439187
    "hunter", -- 4252008158
    "huntley", -- 486987393
    "hustler", -- 600450546
    "hydra", -- 970385471
    "imorgon", -- 3162245632
    "impaler2", -- 1009171724
    "impaler3", -- 2370166601
    "impaler4", -- 2550461639
    "impaler", -- 3001042683
    "imperator2", -- 1637620610
    "imperator3", -- 3539435063
    "imperator", -- 444994115
    "infernus2", -- 2889029532
    "infernus", -- 418536135
    "ingot", -- 3005245074
    "innovation", -- 4135840458
    "insurgent2", -- 2071877360
    "insurgent3", -- 2370534026
    "insurgent", -- 2434067162
    "intruder", -- 886934177
    "issi2", -- 3117103977
    "issi3", -- 931280609
    "issi4", -- 628003514
    "issi5", -- 1537277726
    "issi6", -- 1239571361
    "issi7", -- 1854776567
    "italigtb2", -- 3812247419
    "italigtb", -- 2246633323
    "italigto", -- 3963499524
    "italirsx", -- 3145241962
    "jackal", -- 3670438162
    "jb7002", -- 394110044
    "jb700", -- 1051415893
    "jester4", -- 2712905841
    "jester2", -- 3188613414
    "jester3", -- 4080061290
    "jester", -- 2997294755
    "jet", -- 1058115860
    "jetmax", -- 861409633
    "journey", -- 4174679674
    "jugular", -- 4086055493
    "kalahari", -- 92612664
    "kamacho", -- 4173521127
    "kanjo", -- 409049982
    "khamelion", -- 544021352
    "khanjali", -- 2859440138
    "komoda", -- 3460613305
    "kosatka", -- 1336872304
    "krieger", -- 3630826055
    "kuruma2", -- 410882957
    "kuruma", -- 2922118804
    "landstalker2", -- 3456868130
    "landstalker", -- 1269098716
    "lazer", -- 3013282534
    "le7b", -- 3062131285
    "lectro", -- 640818791
    "lguard", -- 469291905
    "limo2", -- 4180339789
    "locust", -- 3353694737
    "longfin", -- 1861786828
    "lurcher", -- 2068293287
    "luxor2", -- 3080673438
    "luxor", -- 621481054
    "lynx", -- 482197771
    "mamba", -- 2634021974
    "mammatus", -- 2548391185
    "manana2", -- 1717532765
    "manana", -- 2170765704
    "manchez2", -- 1086534307
    "manchez", -- 2771538552
    "marquis", -- 3251507587
    "marshall", -- 1233534620
    "massacro2", -- 3663206819
    "massacro", -- 4152024626
    "maverick", -- 2634305738
    "menacer", -- 2044532910
    "mesa2", -- 3546958660
    "mesa3", -- 2230595153
    "mesa", -- 914654722
    "metrotrain", -- 868868440
    "michelli", -- 1046206681
    "microlight", -- 2531412055
    "miljet", -- 165154707
    "minitank", -- 3040635986
    "minivan2", -- 3168702960
    "minivan", -- 3984502180
    "mixer2", -- 475220373
    "mixer", -- 3510150843
    "mogul", -- 3545667823
    "molotok", -- 1565978651
    "monroe", -- 3861591579
    "monster3", -- 1721676810
    "monster4", -- 840387324
    "monster5", -- 3579220348
    "monster", -- 3449006043
    "moonbeam2", -- 1896491931
    "moonbeam", -- 525509695
    "mower", -- 1783355638
    "mule2", -- 3244501995
    "mule3", -- 2242229361
    "mule4", -- 1945374990
    "mule", -- 904750859
    "nebula", -- 3412338231
    "nemesis", -- 3660088182
    "neo", -- 2674840994
    "neon", -- 2445973230
    "nero2", -- 1093792632
    "nero", -- 1034187331
    "nightblade", -- 2688780135
    "nightshade", -- 2351681756
    "nightshark", -- 433954513
    "nimbus", -- 2999939664
    "ninef2", -- 2833484545
    "ninef", -- 1032823388
    "nokota", -- 1036591958
    "novak", -- 2465530446
    "omnis", -- 3517794615
    "openwheel1", -- 1492612435
    "openwheel2", -- 1181339704
    "oppressor2", -- 2069146067
    "oppressor", -- 884483972
    "oracle2", -- 3783366066
    "oracle", -- 1348744438
    "osiris", -- 1987142870
    "outlaw", -- 408825843
    "packer", -- 569305213
    "panto", -- 3863274624
    "paradise", -- 1488164764
    "paragon2", -- 1416466158
    "paragon", -- 3847255899
    "pariah", -- 867799010
    "patriot2", -- 3874056184
    "patriot", -- 3486509883
    "patrolboat", -- 4018222598
    "pbus2", -- 345756458
    "pbus", -- 2287941233
    "pcj", -- 3385765638
    "penetrator", -- 2536829930
    "penumbra2", -- 3663644634
    "penumbra", -- 3917501776
    "peyote2", -- 2490551588
    "peyote3", -- 1107404867
    "peyote", -- 1830407356
    "pfister811", -- 2465164804
    "phantom2", -- 2645431192
    "phantom3", -- 177270108
    "phantom", -- 2157618379
    "phoenix", -- 2199527893
    "picador", -- 1507916787
    "pigalle", -- 1078682497
    "police2", -- 2667966721
    "police3", -- 1912215274
    "police4", -- 2321795001
    "police", -- 2046537925
    "policeb", -- 4260343491
    "policeold1", -- 2758042359
    "policeold2", -- 2515846680
    "policet", -- 456714581
    "polmav", -- 353883353
    "pony2", -- 943752001
    "pony", -- 4175309224
    "pounder2", -- 1653666139
    "pounder", -- 2112052861
    "prairie", -- 2844316578
    "pranger", -- 741586030
    "predator", -- 3806844075
    "premier", -- 2411098011
    "previon", -- 1416471345
    "primo2", -- 2254540506
    "primo", -- 3144368207
    "proptrailer", -- 356391690
    "prototipo", -- 2123327359
    "pyro", -- 2908775872
    "radi", -- 2643899483
    "raiden", -- 2765724541
    "raketrailer", -- 390902130
    "rallytruck", -- 2191146052
    "rancherxl2", -- 1933662059
    "rancherxl", -- 1645267888
    "rapidgt2", -- 1737773231
    "rapidgt3", -- 2049897956
    "rapidgt", -- 2360515092
    "raptor", -- 3620039993
    "ratbike", -- 1873600305
    "ratloader2", -- 3705788919
    "ratloader", -- 3627815886
    "rcbandito", -- 4008920556
    "reaper", -- 234062309
    "rebel2", -- 2249373259
    "rebel", -- 3087195462
    "rebla", -- 83136452
    "regina", -- 4280472072
    "remus", -- 1377217886
    "rentalbus", -- 3196165219
    "retinue2", -- 2031587082
    "retinue", -- 1841130506
    "revolter", -- 3884762073
    "rhapsody", -- 841808271
    "rhino", -- 782665360
    "riata", -- 2762269779
    "riot2", -- 2601952180
    "riot", -- 3089277354
    "ripley", -- 3448987385
    "rocoto", -- 2136773105
    "rogue", -- 3319621991
    "romero", -- 627094268
    "rrocket", -- 916547552
    "rt3000", -- 3842363289
    "rubble", -- 2589662668
    "ruffian", -- 3401388520
    "ruiner2", -- 941494461
    "ruiner3", -- 777714999
    "ruiner", -- 4067225593
    "rumpo2", -- 2518351607
    "rumpo3", -- 1475773103
    "rumpo", -- 1162065741
    "ruston", -- 719660200
    "s80", -- 3970348707
    "sabregt2", -- 223258115
    "sabregt", -- 2609945748
    "sadler2", -- 734217681
    "sadler", -- 3695398481
    "sanchez2", -- 2841686334
    "sanchez", -- 788045382
    "sanctus", -- 1491277511
    "sandking2", -- 989381445
    "sandking", -- 3105951696
    "savage", -- 4212341271
    "savestra", -- 903794909
    "sc1", -- 1352136073
    "scarab2", -- 1542143200
    "scarab3", -- 3715219435
    "scarab", -- 3147997943
    "schafter2", -- 3039514899
    "schafter3", -- 2809443750
    "schafter4", -- 1489967196
    "schafter5", -- 3406724313
    "schafter6", -- 1922255844
    "schlagen", -- 3787471536
    "schwarzer", -- 3548084598
    "scorcher", -- 4108429845
    "scramjet", -- 3656405053
    "scrap", -- 2594165727
    "seabreeze", -- 3902291871
    "seashark2", -- 3678636260
    "seashark3", -- 3983945033
    "seashark", -- 3264692260
    "seasparrow2", -- 1229411063
    "seasparrow3", -- 1593933419
    "seasparrow", -- 3568198617
    "seminole2", -- 2484160806
    "seminole", -- 1221512915
    "sentinel2", -- 873639469
    "sentinel3", -- 1104234922
    "sentinel", -- 1349725314
    "serrano", -- 1337041428
    "seven70", -- 2537130571
    "shamal", -- 3080461301
    "sheava", -- 819197656
    "sheriff2", -- 1922257928
    "sheriff", -- 2611638396
    "shotaro", -- 3889340782
    "skylift", -- 1044954915
    "slamtruck", -- 3249056020
    "slamvan2", -- 833469436
    "slamvan3", -- 1119641113
    "slamvan4", -- 2233918197
    "slamvan5", -- 373261600
    "slamvan6", -- 1742022738
    "slamvan", -- 729783779
    "sovereign", -- 743478836
    "specter2", -- 1074745671
    "specter", -- 1886268224
    "speeder2", -- 437538602
    "speeder", -- 231083307
    "speedo2", -- 728614474
    "speedo4", -- 219613597
    "speedo", -- 3484649228
    "squaddie", -- 4192631813
    "squalo", -- 400514754
    "stafford", -- 321186144
    "stalion2", -- 3893323758
    "stalion", -- 1923400478
    "stanier", -- 2817386317
    "starling", -- 2594093022
    "stinger", -- 1545842587
    "stingergt", -- 2196019706
    "stockade3", -- 4080511798
    "stockade", -- 1747439474
    "stratum", -- 1723137093
    "streiter", -- 1741861769
    "stretch", -- 2333339779
    "strikeforce", -- 1692272545
    "stromberg", -- 886810209
    "stryder", -- 301304410
    "stunt", -- 2172210288
    "submersible2", -- 3228633070
    "submersible", -- 771711535
    "sugoi", -- 987469656
    "sultan3", -- 4003946083
    "sultan2", -- 872704284
    "sultan", -- 970598228
    "sultanrs", -- 3999278268
    "suntrap", -- 4012021193
    "superd", -- 1123216662
    "supervolito2", -- 2623428164
    "supervolito", -- 710198397
    "surano", -- 384071873
    "surfer2", -- 2983726598
    "surfer", -- 699456151
    "surge", -- 2400073108
    "swift2", -- 1075432268
    "swift", -- 3955379698
    "swinger", -- 500482303
    "t20", -- 1663218586
    "taco", -- 1951180813
    "tailgater2", -- 3050505892
    "tailgater", -- 3286105550
    "taipan", -- 3160260734
    "tampa2", -- 3223586949
    "tampa3", -- 3084515313
    "tampa", -- 972671128
    "tanker2", -- 1956216962
    "tanker", -- 3564062519
    "tankercar", -- 586013744
    "taxi", -- 3338918751
    "technical2", -- 1180875963
    "technical3", -- 1356124575
    "technical", -- 2198148358
    "tempesta", -- 272929391
    "terbyte", -- 2306538597
    "tezeract", -- 1031562256
    "thrax", -- 1044193113
    "thrust", -- 1836027715
    "thruster", -- 1489874736
    "tigon", -- 2936769864
    "tiptruck2", -- 3347205726
    "tiptruck", -- 48339065
    "titan", -- 1981688531
    "torero", -- 1504306544
    "tornado2", -- 1531094468
    "tornado3", -- 1762279763
    "tornado4", -- 2261744861
    "tornado5", -- 2497353967
    "tornado6", -- 2736567667
    "tornado", -- 464687292
    "toro2", -- 908897389
    "toro", -- 1070967343
    "toros", -- 3126015148
    "tourbus", -- 1941029835
    "towtruck2", -- 3852654278
    "towtruck", -- 2971866336
    "toreador", -- 1455990255
    "tr2", -- 2078290630
    "tr3", -- 1784254509
    "tr4", -- 2091594960
    "tractor2", -- 2218488798
    "tractor3", -- 1445631933
    "tractor", -- 1641462412
    "trailerlarge", -- 1502869817
    "trailerlogs", -- 2016027501
    "trailers2", -- 2715434129
    "trailers3", -- 2236089197
    "trailers4", -- 3194418602
    "trailers", -- 3417488910
    "trailersmall2", -- 2413121211
    "trailersmall", -- 712162987
    "trash2", -- 3039269212
    "trash", -- 1917016601
    "trflat", -- 2942498482
    "tribike2", -- 3061159916
    "tribike3", -- 3894672200
    "tribike", -- 1127861609
    "trophytruck2", -- 3631668194
    "trophytruck", -- 101905590
    "tropic2", -- 1448677353
    "tropic", -- 290013743
    "tropos", -- 1887331236
    "tug", -- 2194326579
    "tula", -- 1043222410
    "tulip", -- 1456744817
    "turismo2", -- 3312836369
    "turismor", -- 408192225
    "tvtrailer", -- 2524324030
    "tyrant", -- 3918533058
    "tyrus", -- 2067820283
    "utillitruck2", -- 887537515
    "utillitruck3", -- 2132890591
    "utillitruck", -- 516990260
    "vacca", -- 338562499
    "vader", -- 4154065143
    "vagner", -- 1939284556
    "vagrant", -- 740289177
    "valkyrie2", -- 1543134283
    "valkyrie", -- 2694714877
    "vamos", -- 4245851645
    "vectre", -- 2754593701
    "velum2", -- 1077420264
    "velum", -- 2621610858
    "verlierer2", -- 1102544804
    "verus", -- 298565713
    "vetir", -- 2014313426
    "veto", -- 3437611258
    "veto2", -- 2802050217
    "vestra", -- 1341619767
    "vigero", -- 3469130167
    "vigilante", -- 3052358707
    "vindicator", -- 2941886209
    "virgo2", -- 3395457658
    "virgo3", -- 16646064
    "virgo", -- 3796912450
    "viseris", -- 3903371924
    "visione", -- 3296789504
    "volatol", -- 447548909
    "volatus", -- 2449479409
    "voltic2", -- 989294410
    "voltic", -- 2672523198
    "voodoo2", -- 523724515
    "voodoo", -- 2006667053
    "vortex", -- 3685342204
    "vstr", -- 1456336509
    "warrener", -- 579912970
    "washington", -- 1777363799
    "wastelander", -- 2382949506
    "weevil", -- 1644055914
    "windsor2", -- 2364918497
    "windsor", -- 1581459400
    "winky", -- 4084658662
    "wolfsbane", -- 3676349299
    "xa21", -- 917809321
    "xls2", -- 3862958888
    "xls", -- 1203490606
    "yosemite2", -- 1693751655
    "yosemite3", -- 67753863
    "yosemite", -- 1871995513
    "youga2", -- 1026149675
    "youga3", -- 1802742206
    "youga", -- 65402552
    "z190", -- 838982985
    "zentorno", -- 2891838741
    "zhaba", -- 1284356689
    "zion2", -- 3101863448
    "zion3", -- 1862507111
    "zion", -- 3172678083
    "zombiea", -- 3285698347
    "zombieb", -- 3724934023
    "zorrusso", -- 3612858749
    "zr350", -- 2436313176
    "zr3802", -- 3188846534
    "zr3803", -- 2816263004
    "zr380", -- 540101442
    "ztype" -- 758895617
}
local VehicleHashValues = {
	3078201489, -- adder
    1283517198, -- airbus
    1560980623, -- airtug
    1181327175, -- akula
    1672195559, -- akuma
    767087018, -- alpha
    2771347558, -- alphaz1
    3929093893, -- alkonost
    1171614426, -- ambulance
    295054921, -- annihilator2
    837858166, -- annihilator
    562680400, -- apc
    159274291, -- ardent
    3087536137, -- armytanker
    2657817814, -- armytrailer2
    2818520053, -- armytrailer
    1118611807, -- asbo
    2487343317, -- asea2
    2485144969, -- asea
    2391954683, -- asterope
    3981782132, -- autarch
    2179174271, -- avarus
    408970549, -- avenger2
    2176659152, -- avenger
    2588363614, -- avisa
    2154536131, -- bagger
    3895125590, -- baletrailer
    142944341, -- baller2
    1878062887, -- baller3
    634118882, -- baller4
    470404958, -- baller5
    666166960, -- baller6
    3486135912, -- baller
    633712403, -- banshee2
    3253274834, -- banshee
    1074326203, -- barracks2
    630371791, -- barracks3
    3471458123, -- barracks
    4081974053, -- barrage
    3403504941, -- bati2
    4180675781, -- bati
    2053223216, -- benson
    1824333165, -- besra
    1274868363, -- bestiagts
    86520421, -- bf400
    1126868326, -- bfinjection
    850991848, -- biff
    3945366167, -- bifta
    2072156101, -- bison2
    1739845664, -- bison3
    4278019151, -- bison
    850565707, -- bjxl
    3089165662, -- blade
    4246935337, -- blazer2
    3025077634, -- blazer3
    3854198872, -- blazer4
    2704629607, -- blazer5
    2166734073, -- blazer
    3681241380, -- blimp2
    3987008919, -- blimp3
    4143991942, -- blimp
    1039032026, -- blista2
    3703315515, -- blista3
    3950024287, -- blista
    1131912276, -- bmx
    524108981, -- boattrailer
    1069929536, -- bobcatxl
    2859047862, -- bodhi2
    4262088844, -- bombushka
    4061868990, -- boxville2
    121658888, -- boxville3
    444171386, -- boxville4
    682434785, -- boxville5
    2307837162, -- boxville
    2815302597, -- brawler
    3989239879, -- brickade
    1429622905, -- brioso2
    1549126457, -- brioso
    2600885406, -- bruiser2
    2252616474, -- bruiser3
    668439077, -- bruiser
    2403970600, -- brutus2
    2038858402, -- brutus3
    2139203625, -- brutus
    3463132580, -- btype2
    3692679425, -- btype3
    117401876, -- btype
    3281516360, -- buccaneer2
    3612755468, -- buccaneer
    736902334, -- buffalo2
    237764926, -- buffalo3
    3990165190, -- buffalo
    1886712733, -- bulldozer
    2598821281, -- bullet
    3387490166, -- burrito2
    2551651283, -- burrito3
    893081117, -- burrito4
    1132262048, -- burrito5
    2948279460, -- burrito
    3581397346, -- bus
    745926877, -- buzzard2
    788747387, -- buzzard
    3334677549, -- cablecar
    3757070668, -- caddy2
    3525819835, -- caddy3
    1147287684, -- caddy
    1876516712, -- camper
    3101054893, -- calico
    2945871676, -- caracara2
    1254014755, -- caracara
    2072687711, -- carbonizzare
    11251904, -- carbonrs
    1621617168, -- cargobob2
    1394036463, -- cargobob3
    2025593404, -- cargobob4
    4244420235, -- cargobob
    368211810, -- cargoplane
    941800958, -- casco
    3505073125, -- cavalcade2
    2006918058, -- cavalcade
    679453769, -- cerberus2
    1909700336, -- cerberus3
    3493417227, -- cerberus
    3306466016, -- cheburek
    223240013, -- cheetah2
    2983812512, -- cheetah
    3602674979, -- chernobog
    6774487, -- chimera
    2933279331, -- chino2
    349605904, -- chino
    390201602, -- cliffhanger
    2728360112, -- clique
    2196012677, -- club
    2222034228, -- coach
    704435172, -- cog552
    906642318, -- cog55
    330661258, -- cogcabrio
    3690124666, -- cognoscenti2
    2264796000, -- cognoscenti
    3249425686, -- comet2
    2272483501, -- comet3
    1561920505, -- comet4
    661493923, -- comet5
    2568944644, -- comet6
    683047626, -- contender
    1011753235, -- coquette2
    784565758, -- coquette3
    2566281822, -- coquette4
    108773431, -- coquette
    448402357, -- cruiser
    321739290, -- crusader
    3650256867, -- cuban800
    3288047904, -- cutter
    1392481335, -- cyclone
    1755697647, -- cypher
    2890830793, -- daemon2
    2006142190, -- daemon
    2482017624, -- deathbike2
    2920466844, -- deathbike3
    4267640610, -- deathbike
    822018448, -- defiler
    1483171323, -- deluxo
    1591739866, -- deveste
    1279262537, -- deviant
    1790834270, -- diablous2
    4055125828, -- diablous
    1682114128, -- dilettante2
    3164157193, -- dilettante
    276773164, -- dinghy2
    509498602, -- dinghy3
    867467158, -- dinghy4
    3314393930, -- dinghy5
    1033245328, -- dinghy
    1770332643, -- dloader
    2154757102, -- docktrailer
    3410276810, -- docktug
    3393804037, -- dodo
    3379262425, -- dominator2
    3308022675, -- dominator3
    3606777648, -- dominator4
    2919906639, -- dominator5
    3001042683, -- dominator6
    426742808, -- dominator7
    736672010, -- dominator8
    80636076, -- dominator
    2623969160, -- double
    686471183, -- drafter
    3900892662, -- dubsta2
    3057713523, -- dubsta3
    1177543287, -- dubsta
    3968823444, -- dukes2
    2134119907, -- dukes3
    723973206, -- dukes
    2164484578, -- dump
    534258863, -- dune2
    1897744184, -- dune3
    3467805257, -- dune4
    3982671785, -- dune5
    2633113103, -- dune
    970356638, -- duster
    310284501, -- dynasty
    3728579874, -- elegy2
    196747873, -- elegy
    3027423925, -- ellie
    1323778901, -- emerus
    2411965148, -- emperor2
    3053254478, -- emperor3
    3609690755, -- emperor
    1753414259, -- enduro
    2174267100, -- entity2
    3003014393, -- entityxf
    2035069708, -- esskey
    2038480341, -- euros
    2538945576, -- everon
    4289813342, -- exemplar
    3703357000, -- f620
    2504420315, -- faction2
    2255212070, -- faction3
    2175389151, -- faction
    1617472902, -- fagaloa
    55628203, -- faggio2
    3005788552, -- faggio3
    2452219115, -- faggio
    2647026068, -- fbi2
    1127131465, -- fbi
    3537231886, -- fcr2
    627535535, -- fcr
    4205676014, -- felon2
    3903372712, -- felon
    2299640309, -- feltzer2
    2728226064, -- feltzer3
    1938952078, -- firetruk
    3458454463, -- fixter
    3035832600, -- flashgt
    1353720154, -- flatbed
    1426219628, -- fmj
    1491375716, -- forklift
    2334210311, -- formula2
    340154634, -- formula
    3157435195, -- fq2
    4240635011, -- freecrawler
    1030400667, -- freight
    184361638, -- freightcar
    3186376089, -- freightcar2
    920453016, -- freightcont1
    240201337, -- freightcont2
    642617954, -- freightgrain
    3517691494, -- freighttrailer
    1949211328, -- frogger2
    744705981, -- frogger
    1909141499, -- fugitive
    960812448, -- furia
    3205927392, -- furoregt
    499169875, -- fusilade
    2016857647, -- futo
    2787736776, -- futo2
    741090084, -- gargoyle
    349315417, -- gauntlet2
    722226637, -- gauntlet3
    1934384720, -- gauntlet4
    2172320429, -- gauntlet5
    2494797253, -- gauntlet
    1909189272, -- gb200
    296357396, -- gburrito2
    2549763894, -- gburrito
    3381377750, -- glendale2
    75131841, -- glendale
    1234311532, -- gp1
    1019737494, -- graintrailer
    2519238556, -- granger
    2751205197, -- gresley
    1304459735, -- growler
    2215179066, -- gt500
    2186977100, -- guardian
    884422927, -- habanero
    4039289119, -- hakuchou2
    1265391242, -- hakuchou
    4262731174, -- halftrack
    444583674, -- handler
    387748548, -- hauler2
    1518533038, -- hauler
    2310691317, -- havok
    3932816511, -- hellion
    15219735, -- hermes
    301427732, -- hexer
    37348240, -- hotknife
    1115909093, -- hotring
    3287439187, -- howard
    4252008158, -- hunter
    486987393, -- huntley
    600450546, -- hustler
    970385471, -- hydra
    3162245632, -- imorgon
    1009171724, -- impaler2
    2370166601, -- impaler3
    2550461639, -- impaler4
    3001042683, -- impaler
    1637620610, -- imperator2
    3539435063, -- imperator3
    444994115, -- imperator
    2889029532, -- infernus2
    418536135, -- infernus
    3005245074, -- ingot
    4135840458, -- innovation
    2071877360, -- insurgent2
    2370534026, -- insurgent3
    2434067162, -- insurgent
    886934177, -- intruder
    3117103977, -- issi2
    931280609, -- issi3
    628003514, -- issi4
    1537277726, -- issi5
    1239571361, -- issi6
    1854776567, -- issi7
    3812247419, -- italigtb2
    2246633323, -- italigtb
    3963499524, -- italigto
    3145241962, -- italirsx
    3670438162, -- jackal
    394110044, -- jb7002
    1051415893, -- jb700
    2712905841, -- jester4
    3188613414, -- jester2
    4080061290, -- jester3
    2997294755, -- jester
    1058115860, -- jet
    861409633, -- jetmax
    4174679674, -- journey
    4086055493, -- jugular
    92612664, -- kalahari
    4173521127, -- kamacho
    409049982, -- kanjo
    544021352, -- khamelion
    2859440138, -- khanjali
    3460613305, -- komoda
    1336872304, -- kosatka
    3630826055, -- krieger
    410882957, -- kuruma2
    2922118804, -- kuruma
    3456868130, -- landstalker2
    1269098716, -- landstalker
    3013282534, -- lazer
    3062131285, -- le7b
    640818791, -- lectro
    469291905, -- lguard
    4180339789, -- limo2
    3353694737, -- locust
    1861786828, -- longfin
    2068293287, -- lurcher
    3080673438, -- luxor2
    621481054, -- luxor
    482197771, -- lynx
    2634021974, -- mamba
    2548391185, -- mammatus
    1717532765, -- manana2
    2170765704, -- manana
    1086534307, -- manchez2
    2771538552, -- manchez
    3251507587, -- marquis
    1233534620, -- marshall
    3663206819, -- massacro2
    4152024626, -- massacro
    2634305738, -- maverick
    2044532910, -- menacer
    3546958660, -- mesa2
    2230595153, -- mesa3
    914654722, -- mesa
    868868440, -- metrotrain
    1046206681, -- michelli
    2531412055, -- microlight
    165154707, -- miljet
    3040635986, -- minitank
    3168702960, -- minivan2
    3984502180, -- minivan
    475220373, -- mixer2
    3510150843, -- mixer
    3545667823, -- mogul
    1565978651, -- molotok
    3861591579, -- monroe
    1721676810, -- monster3
    840387324, -- monster4
    3579220348, -- monster5
    3449006043, -- monster
    1896491931, -- moonbeam2
    525509695, -- moonbeam
    1783355638, -- mower
    3244501995, -- mule2
    2242229361, -- mule3
    1945374990, -- mule4
    904750859, -- mule
    3412338231, -- nebula
    3660088182, -- nemesis
    2674840994, -- neo
    2445973230, -- neon
    1093792632, -- nero2
    1034187331, -- nero
    2688780135, -- nightblade
    2351681756, -- nightshade
    433954513, -- nightshark
    2999939664, -- nimbus
    2833484545, -- ninef2
    1032823388, -- ninef
    1036591958, -- nokota
    2465530446, -- novak
    3517794615, -- omnis
    1492612435, -- openwheel1
    1181339704, -- openwheel2
    2069146067, -- oppressor2
    884483972, -- oppressor
    3783366066, -- oracle2
    1348744438, -- oracle
    1987142870, -- osiris
    408825843, -- outlaw
    569305213, -- packer
    3863274624, -- panto
    1488164764, -- paradise
    1416466158, -- paragon2
    3847255899, -- paragon
    867799010, -- pariah
    3874056184, -- patriot2
    3486509883, -- patriot
    4018222598, -- patrolboat
    345756458, -- pbus2
    2287941233, -- pbus
    3385765638, -- pcj
    2536829930, -- penetrator
    3663644634, -- penumbra2
    3917501776, -- penumbra
    2490551588, -- peyote2
    1107404867, -- peyote3
    1830407356, -- peyote
    2465164804, -- pfister811
    2645431192, -- phantom2
    177270108, -- phantom3
    2157618379, -- phantom
    2199527893, -- phoenix
    1507916787, -- picador
    1078682497, -- pigalle
    2667966721, -- police2
    1912215274, -- police3
    2321795001, -- police4
    2046537925, -- police
    4260343491, -- policeb
    2758042359, -- policeold1
    2515846680, -- policeold2
    456714581, -- policet
    353883353, -- polmav
    943752001, -- pony2
    4175309224, -- pony
    1653666139, -- pounder2
    2112052861, -- pounder
    2844316578, -- prairie
    741586030, -- pranger
    3806844075, -- predator
    2411098011, -- premier
    1416471345, -- previon
    2254540506, -- primo2
    3144368207, -- primo
    356391690, -- proptrailer
    2123327359, -- prototipo
    2908775872, -- pyro
    2643899483, -- radi
    2765724541, -- raiden
    390902130, -- raketrailer
    2191146052, -- rallytruck
    1933662059, -- rancherxl2
    1645267888, -- rancherxl
    1737773231, -- rapidgt2
    2049897956, -- rapidgt3
    2360515092, -- rapidgt
    3620039993, -- raptor
    1873600305, -- ratbike
    3705788919, -- ratloader2
    3627815886, -- ratloader
    4008920556, -- rcbandito
    234062309, -- reaper
    2249373259, -- rebel2
    3087195462, -- rebel
    83136452, -- rebla
    4280472072, -- regina
    1377217886, -- remus
    3196165219, -- rentalbus
    2031587082, -- retinue2
    1841130506, -- retinue
    3884762073, -- revolter
    841808271, -- rhapsody
    782665360, -- rhino
    2762269779, -- riata
    2601952180, -- riot2
    3089277354, -- riot
    3448987385, -- ripley
    2136773105, -- rocoto
    3319621991, -- rogue
    627094268, -- romero
    916547552, -- rrocket
    3842363289, -- rt3000
    2589662668, -- rubble
    3401388520, -- ruffian
    941494461, -- ruiner2
    777714999, -- ruiner3
    4067225593, -- ruiner
    2518351607, -- rumpo2
    1475773103, -- rumpo3
    1162065741, -- rumpo
    719660200, -- ruston
    3970348707, -- s80
    223258115, -- sabregt2
    2609945748, -- sabregt
    734217681, -- sadler2
    3695398481, -- sadler
    2841686334, -- sanchez2
    788045382, -- sanchez
    1491277511, -- sanctus
    989381445, -- sandking2
    3105951696, -- sandking
    4212341271, -- savage
    903794909, -- savestra
    1352136073, -- sc1
    1542143200, -- scarab2
    3715219435, -- scarab3
    3147997943, -- scarab
    3039514899, -- schafter2
    2809443750, -- schafter3
    1489967196, -- schafter4
    3406724313, -- schafter5
    1922255844, -- schafter6
    3787471536, -- schlagen
    3548084598, -- schwarzer
    4108429845, -- scorcher
    3656405053, -- scramjet
    2594165727, -- scrap
    3902291871, -- seabreeze
    3678636260, -- seashark2
    3983945033, -- seashark3
    3264692260, -- seashark
    1229411063, -- seasparrow2
    1593933419, -- seasparrow3
    3568198617, -- seasparrow
    2484160806, -- seminole2
    1221512915, -- seminole
    873639469, -- sentinel2
    1104234922, -- sentinel3
    1349725314, -- sentinel
    1337041428, -- serrano
    2537130571, -- seven70
    3080461301, -- shamal
    819197656, -- sheava
    1922257928, -- sheriff2
    2611638396, -- sheriff
    3889340782, -- shotaro
    1044954915, -- skylift
    3249056020, -- slamtruck
    833469436, -- slamvan2
    1119641113, -- slamvan3
    2233918197, -- slamvan4
    373261600, -- slamvan5
    1742022738, -- slamvan6
    729783779, -- slamvan
    743478836, -- sovereign
    1074745671, -- specter2
    1886268224, -- specter
    437538602, -- speeder2
    231083307, -- speeder
    728614474, -- speedo2
    219613597, -- speedo4
    3484649228, -- speedo
    4192631813, -- squaddie
    400514754, -- squalo
    321186144, -- stafford
    3893323758, -- stalion2
    1923400478, -- stalion
    2817386317, -- stanier
    2594093022, -- starling
    1545842587, -- stinger
    2196019706, -- stingergt
    4080511798, -- stockade3
    1747439474, -- stockade
    1723137093, -- stratum
    1741861769, -- streiter
    2333339779, -- stretch
    1692272545, -- strikeforce
    886810209, -- stromberg
    301304410, -- stryder
    2172210288, -- stunt
    3228633070, -- submersible2
    771711535, -- submersible
    987469656, -- sugoi
    4003946083, -- sultan3
    872704284, -- sultan2
    970598228, -- sultan
    3999278268, -- sultanrs
    4012021193, -- suntrap
    1123216662, -- superd
    2623428164, -- supervolito2
    710198397, -- supervolito
    384071873, -- surano
    2983726598, -- surfer2
    699456151, -- surfer
    2400073108, -- surge
    1075432268, -- swift2
    3955379698, -- swift
    500482303, -- swinger
    1663218586, -- t20
    1951180813, -- taco
    3050505892, -- tailgater2
    3286105550, -- tailgater
    3160260734, -- taipan
    3223586949, -- tampa2
    3084515313, -- tampa3
    972671128, -- tampa
    1956216962, -- tanker2
    3564062519, -- tanker
    586013744, -- tankercar
    3338918751, -- taxi
    1180875963, -- technical2
    1356124575, -- technical3
    2198148358, -- technical
    272929391, -- tempesta
    2306538597, -- terbyte
    1031562256, -- tezeract
    1044193113, -- thrax
    1836027715, -- thrust
    1489874736, -- thruster
    2936769864, -- tigon
    3347205726, -- tiptruck2
    48339065, -- tiptruck
    1981688531, -- titan
    1504306544, -- torero
    1531094468, -- tornado2
    1762279763, -- tornado3
    2261744861, -- tornado4
    2497353967, -- tornado5
    2736567667, -- tornado6
    464687292, -- tornado
    908897389, -- toro2
    1070967343, -- toro
    3126015148, -- toros
    1941029835, -- tourbus
    3852654278, -- towtruck2
    2971866336, -- towtruck
    1455990255, -- toreador
    2078290630, -- tr2
    1784254509, -- tr3
    2091594960, -- tr4
    2218488798, -- tractor2
    1445631933, -- tractor3
    1641462412, -- tractor
    1502869817, -- trailerlarge
    2016027501, -- trailerlogs
    2715434129, -- trailers2
    2236089197, -- trailers3
    3194418602, -- trailers4
    3417488910, -- trailers
    2413121211, -- trailersmall2
    712162987, -- trailersmall
    3039269212, -- trash2
    1917016601, -- trash
    2942498482, -- trflat
    3061159916, -- tribike2
    3894672200, -- tribike3
    1127861609, -- tribike
    3631668194, -- trophytruck2
    101905590, -- trophytruck
    1448677353, -- tropic2
    290013743, -- tropic
    1887331236, -- tropos
    2194326579, -- tug
    1043222410, -- tula
    1456744817, -- tulip
    3312836369, -- turismo2
    408192225, -- turismor
    2524324030, -- tvtrailer
    3918533058, -- tyrant
    2067820283, -- tyrus
    887537515, -- utillitruck2
    2132890591, -- utillitruck3
    516990260, -- utillitruck
    338562499, -- vacca
    4154065143, -- vader
    1939284556, -- vagner
    740289177, -- vagrant
    1543134283, -- valkyrie2
    2694714877, -- valkyrie
    4245851645, -- vamos
    2754593701, -- vectre
    1077420264, -- velum2
    2621610858, -- velum
    1102544804, -- verlierer2
    298565713, -- verus
    2014313426, -- vetir
    3437611258, -- veto
    2802050217, -- veto2
    1341619767, -- vestra
    3469130167, -- vigero
    3052358707, -- vigilante
    2941886209, -- vindicator
    3395457658, -- virgo2
    16646064, -- virgo3
    3796912450, -- virgo
    3903371924, -- viseris
    3296789504, -- visione
    447548909, -- volatol
    2449479409, -- volatus
    989294410, -- voltic2
    2672523198, -- voltic
    523724515, -- voodoo2
    2006667053, -- voodoo
    3685342204, -- vortex
    1456336509, -- vstr
    579912970, -- warrener
    1777363799, -- washington
    2382949506, -- wastelander
    1644055914, -- weevil
    2364918497, -- windsor2
    1581459400, -- windsor
    4084658662, -- winky
    3676349299, -- wolfsbane
    917809321, -- xa21
    3862958888, -- xls2
    1203490606, -- xls
    1693751655, -- yosemite2
    67753863, -- yosemite3
    1871995513, -- yosemite
    1026149675, -- youga2
    1802742206, -- youga3
    65402552, -- youga
    838982985, -- z190
    2891838741, -- zentorno
    1284356689, -- zhaba
    3101863448, -- zion2
    1862507111, -- zion3
    3172678083, -- zion
    3285698347, -- zombiea
    3724934023, -- zombieb
    3612858749, -- zorrusso
    2436313176, -- zr350
    3188846534, -- zr3802
    2816263004, -- zr3803
    540101442, -- zr380
    758895617 -- ztype
}
-- Function definitions
 
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
	local str = num//1 .. ""
	-- if str:sub(-2) == ".0" then
		-- str = str:sub(1,-3)
	-- end

	return str
end

-- local function pairs(t)
-- 	local i = 0
-- 	return function() i = i + 1; return t[i] end
-- end
 
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
	if not IsPlayer(ply) then return false end
	
	if ply:get_max_health() > 100 then return true end -- <
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
 
	return false
end
 
local function GetPlayerIndex(pl)
	local index = 1
	for ply in replayinterface.get_peds() do
		if IsPlayer(ply) then
			if pl == ply then
				return index
			end
			index = index + 1
		end
	end
	return 0
end
 
local function GetPlayerByArrayIndex(num)
	local index = 1
	for ply in replayinterface.get_peds() do
		if IsPlayer(ply) then
			if index == num then
				return ply
			end
			index = index + 1
		end
	end
	return nil
end
 
local function GetPlayerCount()
	local playercount = 0
	for ped in replayinterface.get_peds() do
		if IsPlayer(ped) then 
			playercount = playercount + 1
		end
	end
	return playercount
end

local function GetVehicleNameByHash(hash)
	for i = 1, #VehicleHashValues do
		if VehicleHashValues[i] == hash then return VehicleHashNames[i] end
	end
	return "Unknown"
end
 
-- Action functions
 
local function TeleportToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
 
	if not localplayer:is_in_vehicle() then
		-- localplayer:set_position(pos)
	else
		-- localplayer:get_current_vehicle():set_position(pos)
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
 
-- Player option 
local selectedplayer = -1
 
local function add_player_option(ply)
	local index = GetPlayerIndex(ply)
	
	local text = index..":"
 
	-- Player ID
	if ply == localplayer then
		text = text.." YOU"
	else
        local pyd = ply:get_player_id()
        if pyd ~= nil and player.get_player_name(pyd) ~= nil then
            text = text.." "..player.get_player_name()
        else
            text = text.." Player "..pyd
        end
    end
 
	if IsModder(ply) then
		text = text.."*"
	end
 
	text = text.." -"
 
	text = text.." "..floor(ply:get_health())

	-- Is In GodMode, if not then Player Health
	text = text.."HP"
	if ply:get_godmode() then
		text = text.."+"
	end
 
	-- Is In Vehicle
	if ply:is_in_vehicle() then
		local veh = ply:get_current_vehicle()
		if veh ~= nil then
			local hash = veh:get_model_hash()
			if hash ~= nil then
				text = text.." | "..GetVehicleNameByHash(hash)
			end
		end
	end
 
	-- Player Wanted Level
	text = text.." | "..ply:get_wanted_level().."*"
 
	-- Player's Distance From You
	text = text.." | "..floor(Distance(ply:get_position(), localplayer:get_position())).."m"
 
	local d = index
 
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

local function hasConfigFlag(flag)
	player = GetPlayerByArrayIndex(selectedplayer)
	if player == nil or flag == nil then return false end
	return player:get_config_flag(flag)
end
local function setConfigFlag(flag, v)
	player = GetPlayerByArrayIndex(selectedplayer)
	if player ~= nil and flag ~= nil then player:set_config_flag(flag, v) end
end
local function add_flag_toggle(name, flag)
	if name == nil or flag == nil then return end
	menu.add_toggle(name, function() return hasConfigFlag(flag) end, function(v) setConfigFlag(flag, v) end)
end
 
-- Building Player List

Text("= Player List ("..GetPlayerCount()..") =") -- by AppleVegas

local function IsInArray(arr, val)
	for i = 1, #arr do
		if arr[i] == val then return true end
	end 
	return false 
end
 
local PlayersDistances = {}
local SortedPlayers = {}
 
local i = 1
for ply in replayinterface.get_peds() do
	if IsPlayer(ply) then 
		PlayersDistances[i] = {ply, DistanceToSqr(ply:get_position(), localplayer:get_position())}
		i = i + 1
	end
end
 
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
	add_player_option(SortedPlayers[ply])
end

Text("= Player Options =")
menu.add_action("[P] Teleport me to player", function() TeleportToPlayer(GetPlayerByArrayIndex(selectedplayer)) end)
menu.add_action("[P] Teleport Vehicles to player", function() TeleportVehiclesToPlayer(GetPlayerByArrayIndex(selectedplayer)) end)
menu.add_action("[P] Teleport Peds to player", function() TeleportPedsToPlayer(GetPlayerByArrayIndex(selectedplayer)) end)
menu.add_action("[P] Explode player", function() ExplodePlayer(GetPlayerByArrayIndex(selectedplayer)) end)

for i = 1, #PedConfigFlagNames do
	add_flag_toggle("[F] "..PedConfigFlagNames[i], PedConfigFlagValues[i])
end

-- add_flag_toggle("[P] Tiny", PedConfigFlag.Shrink)
-- add_flag_toggle("[P] Freeze", PedConfigFlag.Freeze)
-- add_flag_toggle("[P] Keep engine running", PedConfigFlag.DisableStoppingVehEngine)
-- add_flag_toggle("[P] Don't start engine", PedConfigFlag.DisableStartingVehEngine)
-- add_flag_toggle("[P] Don't go to driver seat", PedConfigFlag.DisableShufflingToDriverSeat)
-- add_flag_toggle("[P] Can attack friendlies", PedConfigFlag.CanAttackFriendlies)
-- add_flag_toggle("[P] Die from ragdoll", PedConfigFlag.DiesByRagdoll)
 
-- Info Panel

Text("")
 
menu.add_toggle("Is Selected Player Valid", function()
	if selectedplayer == -1 then return false end
	if not IsPlayer(GetPlayerByArrayIndex(selectedplayer)) then return false end
	return true 
end, function() end)
 
menu.add_float_range("Distance To Selected Player", 1, 0, 0, function()
	if selectedplayer == -1 then return 0 end
 
	local ply = GetPlayerByArrayIndex(selectedplayer)
 
	if not IsPlayer(ply) then return 0 end
 
	return floor(Distance(ply:get_position(), localplayer:get_position()))
end, function() end)
 
-- Text("")