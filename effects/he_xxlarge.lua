-- he_xxlarge_wreck_light_single
-- he_xxlarge_wreck_dark_single
-- he_xxlarge_wreck_light
-- he_xxlarge_wreck_dark
-- he_xxlarge

return {
  ["he_xxlarge_wreck_light_single"] = {
    smoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 8,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.75,
        alwaysvisible      = false,
        colormap           = [[0.05 0.05 0.05 0.25  0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 0,
        emitvector         = [[dir]],
        gravity            = [[-0.02 r0.04, -0.02 r0.04, -0.02 r0.04]],
        numparticles       = 1,
        particlelife       = 96,
        particlelifespread = 48,
        particlesize       = 1,
        particlesizespread = 1,
        particlespeed      = [[d4 i0.5]],
        particlespeedspread = 1,
        pos                = [[-2 r4, -2 r4, -2 r4]],
        sizegrowth         = [[12 d-1 r1]],
        sizemod            = 0.5,
        texture            = [[smokesmall]],
      },
    },
  },

  ["he_xxlarge_wreck_dark_single"] = {
    smoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 8,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.75,
        alwaysvisible      = false,
        colormap           = [[0.025 0.025 0.025 0.5  0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 0,
        emitvector         = [[dir]],
        gravity            = [[-0.02 r0.04, -0.02 r0.04, -0.02 r0.04]],
        numparticles       = 1,
        particlelife       = 96,
        particlelifespread = 48,
        particlesize       = 1,
        particlesizespread = 1,
        particlespeed      = [[d4 i0.5]],
        particlespeedspread = 1,
        pos                = [[-2 r4, -2 r4, -2 r4]],
        sizegrowth         = [[12 d-1 r1]],
        sizemod            = 0.5,
        texture            = [[smokesmall]],
      },
    },
  },

  ["he_xxlarge_wreck_light"] = {
    single = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 12,
      ground             = true,
      water              = true,
      properties = {
        damage             = [[i1]],
        delay              = [[i1]],
        dir                = [[dir]],
        explosiongenerator = [[custom:HE_XXLarge_Wreck_Light_Single]],
        pos                = [[0, 0, 0]],
      },
    },
  },

  ["he_xxlarge_wreck_dark"] = {
    single = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 12,
      ground             = true,
      water              = true,
      properties = {
        damage             = [[i1]],
        delay              = [[i1]],
        dir                = [[dir]],
        explosiongenerator = [[custom:HE_XXLarge_Wreck_Dark_Single]],
        pos                = [[0, 0, 0]],
      },
    },
  },

  ["he_xxlarge"] = {
    usedefaultexplosions = false,
    debris = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = 1,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0 0 0 1  0 0 0 1]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 48,
        particlelife       = 96,
        particlelifespread = 64,
        particlesize       = 2,
        particlesizespread = 16,
        particlespeed      = 12,
        particlespeedspread = 12,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1,
        texture            = [[debris2]],
      },
    },
    dirt = {
      class              = [[CDirtProjectile]],
      count              = 32,
      ground             = true,
      properties = {
        alpha              = 255,
        alphafalloff       = 8,
        color              = [[0.4 r0.1, 0.3 r0.1, 0.2 r0.1]],
        pos                = [[-3 r6, r3, -3 r6]],
        size               = [[16 r32]],
        sizeexpansion      = 0,
        slowdown           = 0.95,
        speed              = [[-8 r16, r16, -8 r16]],
        texture            = [[randdots]],
      },
    },
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.75,
        alwaysvisible      = false,
        colormap           = [[1 1 1 0.25  0.025 0.025 0.025 0.25  0 0 0 0]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 48,
        particlelife       = 16,
        particlelifespread = 8,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = 1,
        particlespeedspread = 12,
        pos                = [[0, 0, 0]],
        sizegrowth         = [[16 r16]],
        sizemod            = 0.5,
        texture            = [[fireball]],
      },
    },
    groundflash = {
      circlealpha        = 0,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 128,
      ttl                = 12,
      color = {
        [1]  = 1,
        [2]  = 0.75,
        [3]  = 0.5,
      },
    },
    pikes = {
      air                = true,
      class              = [[CExploSpikeProjectile]],
      count              = 16,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.08,
        alwaysvisible      = true,
        color              = [[1,0.75,0.5]],
        dir                = [[-12 r24, -12 r24, -12 r24]],
        length             = 1,
        lengthgrowth       = 1,
        width              = 8,
      },
    },
    smoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.75,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0  0.025 0.025 0.025 0.25  0.025 0.025 0.025 0.25  0.025 0.025 0.025 0.25  0 0 0 0]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 32,
        particlelife       = 64,
        particlelifespread = 32,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = 1,
        particlespeedspread = 16,
        pos                = [[0, 0, 0]],
        sizegrowth         = [[24 r24]],
        sizemod            = 0.5,
        texture            = [[smokesmall]],
      },
    },
    sparks = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = 1,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1 0.75 0.5 0.01   1 0.75 0.5 0.01   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 128,
        particlelife       = 96,
        particlelifespread = 64,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 12,
        particlespeedspread = 36,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[plasma]],
      },
    },
    sphere = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 0.05,
        color              = [[1,1,1]],
        expansionspeed     = 12,
        ttl                = 12,
      },
    },
    water = {
      class              = [[CBitmapMuzzleFlame]],
      count              = 24,
      water              = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[24 r24]],
        sidetexture        = [[splashside]],
        size               = [[12 r6]],
        sizegrowth         = 2,
        ttl                = 64,
      },
    },
    wreck_dark = {
      class              = [[CExpGenSpawner]],
      count              = 16,
      ground             = true,
      unit               = 1,
      properties = {
        delay              = [[4 r4]],
        dir                = [[-1 r2, r1, -1 r2]],
        explosiongenerator = [[custom:HE_XXLarge_Wreck_Dark]],
        pos                = [[0, 0, 0]],
      },
    },
    wreck_light = {
      class              = [[CExpGenSpawner]],
      count              = 16,
      ground             = true,
      unit               = 1,
      properties = {
        delay              = [[4 r4]],
        dir                = [[-1 r2, r1, -1 r2]],
        explosiongenerator = [[custom:HE_XXLarge_Wreck_Light]],
        pos                = [[0, 0, 0]],
      },
    },
  },

}

