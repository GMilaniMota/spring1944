local RUS_KomsMTB = BoatMother:New{
	name					= "Komsomolets (Pr. 123) Class",
	description				= "Motor Torpedo Boat",
	acceleration			= 0.1,
	brakeRate				= 0.05,
	buildCostMetal			= 1350,
	collisionVolumeOffsets	= [[0.0 -9.0 0.0]],
	collisionVolumeScales	= [[24.0 24.0 110.0]],
	maxDamage				= 2090,
	maxReverseVelocity		= 2.4,
	maxVelocity				= 4.8,
	transportCapacity		= 2, -- 2 x 1fpu turrets
	turnRate				= 350,	
	weapons = {	
		[1] = {
			name				= "RUS533mmTorpedo",
			onlyTargetCategory	= "LARGESHIP", -- TODO: make sure (only) LCT and Gabi (LCGM? LCSL3? MAL?) are LARGESHIP
			maxAngleDif			= 40,
		},
		[2] = {
			name				= "RUS533mmTorpedo",
			onlyTargetCategory	= "LARGESHIP",
			maxAngleDif			= 40,
		},
	},
	customparams = {
	    maxammo				= 2,
		weaponcost			= 40,
		weaponswithammo		= 2,
		children = {
			"RUSKomsMTB_Turret_DShK", 
			"RUSKomsMTB_Turret_DShK", 
		},
		deathanim = {
			["z"] = {angle = 15, speed = 10},
		},
		-- TODO: implement 'cruise mode' too
	},
}

local RUS_KomsMTB_Turret_DShK = BoatChild:New{
	name					= "Twin DShK Turret",
	description				= "Heavy Machinegun Turret",
	weapons = {	
		[1] = {
			name				= "dshk",
			onlyTargetCategory	= "INFANTRY SOFTVEH AIR OPENVEH TURRET",
			mainDir		= [[0 0 -1]],
			maxAngleDif			= 270,
		},
		[2] = {
			name				= "dshk",
			onlyTargetCategory	= "INFANTRY SOFTVEH AIR OPENVEH TURRET",
			mainDir		= [[0 0 -1]],
			maxAngleDif			= 270,
			slaveTo				= 1,
		},
	},
	customparams = {
		turretturnspeed			= 30,
		elevationspeed			= 45,
		facing					= 2,
	},
}

return lowerkeys({
	["RUSKomsMTB"] = RUS_KomsMTB,
	["RUSKomsMTB_Turret_DShK"] = RUS_KomsMTB_Turret_DShK,
})
