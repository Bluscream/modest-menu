Event = {
    OnPlayerChanged = "OnPlayerChanged", --> function(Ped|nil oldPlayer, Ped|nil newPlayer)
    OnVehicleChanged = "OnVehicleChanged", --> function(Vehicle|nil oldVehicle, Vehicle|nil newVehicle)
    OnWeaponChanged = "OnWeaponChanged" --> function(Weapon|nil oldWeapon, Weapon|nil newWeapon)
}

PedType = {
    Any = -1,
    Player = 1,
    Male = 4 ,
    Female = 5 ,
    Cop = 6,
    Human = 26,
    SWAT = 27 ,
    Animal = 28,
    Army = 29
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

VehicleConfigFlag = {
    PressingHorn = 1,
    Shooting = 2,
    SirenActive = 4,
    VehicleDead = 8,
    Aiming = 16,
    Driver = 32,
    HasAimData = 64,
    BurnOut = 128,
    ExitingVehicle = 256,
    PlayerDead = 512
}