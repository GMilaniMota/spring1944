local Rocket = Weapon:New{
	avoidFeature       = false,
	explosionSpeed     = 30,
	impulseFactor      = 0,
	soundTrigger       = false,
	turret             = true,
	weaponAcceleration = 2000,
	weaponTimer        = 1,
	weaponType         = "MissileLauncher",

}

-- Rocket Artillery Base Class
local ArtyRocket = Rocket:New{
	cegTag             = "RocketTrail",
	commandfire        = true,
	edgeEffectiveness  = 0.1,
	flightTime         = 10,
	model              = "KatyushaRocket.S3O",
	reloadtime         = 45,
	soundHitDry        = "GEN_Explo_5",
	startVelocity      = 10,
	targetMoveError    = 0.1,
	tolerance          = 2000,
	trajectoryHeight   = 0.5,
	weaponVelocity     = 1400,
	customparams = {
		armor_hit_side     = "top",
		damagetype         = "explosive",
		fearaoe            = 200,
		fearid             = 501,
		howitzer           = 1,
		cegflare           = "dirt_backblast",
		flareonshot        = true,
	},
}

-- AirRocket Base Class
local AirRocket = Rocket:New{
	cegTag             = "BazookaTrail",
	collideFriendly    = false,
	explosionGenerator = "custom:HE_Medium",
	flightTime         = 2,
	leadLimit          = 0,
	model              = "Rocket_HVAR.S3O",
	soundHitDry        = "GEN_Explo_2",
	soundStart         = "GER_Panzerschrek",
	startVelocity      = 600,
	tolerance          = 300,
	weaponVelocity     = 850,
	wobble             = 500,
	customparams = {
		no_range_adjust    = true,
		onlyTargetCategory = "HARDVEH OPENVEH SHIP LARGESHIP",
	},
}

return {
	Rocket = Rocket,
	ArtyRocket = ArtyRocket,
	AirRocket = AirRocket,
}