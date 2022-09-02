# Description
* **Fishing script for QBCore**
* [Join Project-Sloth Community (discord)](https://discord.gg/projectsloth)

# Dependencies
* [QBCore Framework](https://github.com/qbcore-framework)
* [Project Sloth ps-ui](https://github.com/Project-Sloth/ps-ui)
* [PolyZone](https://github.com/mkafrin/PolyZone)

# Installation
* **Install all the dependencies**
* **Add the items to your qb-core > shared > items.lua**
* **Create a new shop in qb-shops with the snippet below (optional)**

## Items for qb-core > shared > items.lua
```lua
-- Fishing
['fishingrod'] 					 = {['name'] = 'fishingrod', 					['label'] = 'Fishing Rod', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishingrod.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,		['combinable'] = nil,   ['description'] = 'With this I can catch the fish..'},
['fishingbait'] 				 = {['name'] = 'fishingbait', 					['label'] = 'Fishing Bait', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'fishingbait.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'With this I can lure the fishessss..'},
['catfish'] 			 		 = {['name'] = 'catfish', 						['label'] = 'Catfish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'catfish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['fish'] 						 = {['name'] = 'fish', 							['label'] = 'Fish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['fish2'] 						 = {['name'] = 'fish2', 						['label'] = 'Fish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fish2.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['goldfish'] 					 = {['name'] = 'goldfish', 						['label'] = 'Goldfish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'goldfish.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['largemouthbass'] 				 = {['name'] = 'largemouthbass', 				['label'] = 'Largemouth Bass', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'largemouthbass.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['redfish'] 					 = {['name'] = 'redfish', 						['label'] = 'Redfish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'redfish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['salmon'] 						 = {['name'] = 'salmon', 						['label'] = 'Salmon', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'salmon.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['stingray'] 					 = {['name'] = 'stingray', 						['label'] = 'Stingray', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'stingray.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['stripedbass'] 				 = {['name'] = 'stripedbass', 					['label'] = 'Striped Bass', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'stripedbass.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['whale'] 			 			 = {['name'] = 'whale', 						['label'] = 'Whale', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'whale.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
['whale2'] 						 = {['name'] = 'whale2', 						['label'] = 'Whale', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'whale2.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
```
## qb-logs (smallresources)
```lua
['fishing'] = {'webhook'},
```

## qb-shops (config)
```lua
-- My Fishing Shop
["fishing"] = {
    ["label"] = "The Lion Fish",
    ["coords"] = vector4(-1597.9, 5201.15, 4.39, 69.79),
    ["ped"] = 's_m_m_migrant_01',
    ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
    ["radius"] = 1.5,
    ["targetIcon"] = "fas fa-fish-fins",
    ["targetLabel"] = "Open Fishing Store",
    ["products"] = Config.Products["fishing"],
    ["showblip"] = true,
    ["blipsprite"] = 68,
    ["blipscale"] = 0.8,
    ["blipcolor"] = 38
},

-- Config.Products:
["fishing"] = {
    [1] = {
        name = 'fishingrod',
        price = 100,
        amount = 100,
        info = {},
        type = 'item',
        slot = 1,
    },
    [2] = {
        name = 'fishingbait',
        price = 1,
        amount = 5000,
        info = {},
        type = 'item',
        slot = 2,
    }
},
```

# Credits
Made by Lionh34rt#4305

Discord: https://discord.gg/AWyTUEnGeN

Tebex: https://lionh34rt.tebex.io/