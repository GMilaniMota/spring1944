local ITAM1542 = LightTank:New{
	name				= "Carro Mediuo M15/42",
	buildCostMetal		= 1942,
	maxDamage			= 1550,
	trackOffset			= 5,
	trackWidth			= 18,

	weapons = {
		[1] = {
			name				= "CannoneDa47mml40HEAT",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[2] = {
			name				= "CannoneDa47mml40AP",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[3] = {
			name				= "CannoneDa47mml40HE",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[4] = { -- coax MG
			name				= "BredaM38",
			maxAngleDif			= 210,
		},
		[5] = { -- hull MG 1
			name				= "BredaM38",
		},
		[6] = { -- hull MG 2
			name				= "BredaM38",
			slaveTo				= 4,
		},
		[7] = {
			name				= ".50calproof",
		},
	},
	customParams = {
		armor_front			= 50,
		armor_rear			= 41,
		armor_side			= 42,
		armor_top			= 15,
		maxammo				= 25,
		maxvelocitykmh		= 40,
		turretturnspeed		= 18,
		weapontoggle		= "priorityAPHEATHE",

	},
}

return lowerkeys({
	["ITAM1542"] = ITAM1542,
})
