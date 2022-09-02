Shared = {} or Shared

Shared.CastTimeMin = 5 -- Minimum Time in seconds between fishing and minigame
Shared.CastTimeMax = 8 -- Maximum Time in seconds between fishing and minigame

Shared.MinigameCirclesMin = 2 -- Minigame: Minimum amount of circles
Shared.MinigameCirclesMax = 3 -- Minigame: Maximum amount of circles
Shared.MinigameTime = 20 -- Minigame: Amount of time in seconds

Shared.SellLocation = vector4(1348.36, 4317.34, 37.04, 83.71)

Shared.FishingZones = {
    [1] = { -- Example of a BoxZone (box = true)
        coords = vector3(713.31, 4113.7, 35.78),
        heading = 179,
        length = 44.4,
        width = 5.0,
        minZ = 33.78,
        maxZ = 36.98,
        box = true,
    },
    [2] = { -- Example of a PolyZone (box = false)
        points = {
            vector2(-329.42422485352, 4385.888671875),
            vector2(-300.74710083008, 4435.4926757812),
            vector2(-294.65103149414, 4422.0234375),
            vector2(-287.61819458008, 4420.1396484375),
            vector2(-280.17697143555, 4405.048828125),
            vector2(-279.92855834961, 4393.939453125),
            vector2(-271.79284667969, 4373.3408203125),
            vector2(-259.98345947266, 4361.89453125),
            vector2(-252.09405517578, 4356.138671875),
            vector2(-224.38505554199, 4347.3491210938),
            vector2(-210.59019470215, 4326.3173828125),
            vector2(-199.0947265625, 4315.6840820312),
            vector2(-189.26742553711, 4297.9233398438),
            vector2(-176.37496948242, 4286.5380859375),
            vector2(-194.79304504395, 4251.8017578125),
            vector2(-220.35258483887, 4261.115234375),
            vector2(-255.69984436035, 4252.1015625),
            vector2(-261.29083251953, 4256.3461914062),
            vector2(-255.32147216797, 4268.9443359375),
            vector2(-255.19418334961, 4281.3471679688),
            vector2(-259.34838867188, 4291.3383789062),
            vector2(-263.79672241211, 4302.7641601562),
            vector2(-273.55639648438, 4307.1352539062),
            vector2(-295.03045654297, 4328.6591796875)
        },
        minZ = 29.43,
        maxZ = 32.6,
        box = false
    }
}
