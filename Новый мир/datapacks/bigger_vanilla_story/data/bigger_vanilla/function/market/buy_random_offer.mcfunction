execute unless entity @e[tag=bv_random_recipe_seller,distance=..8] run tellraw @s {"text":"Рядом нет случайного торговца рецептов. Открой меню и призови его.","color":"red"}
execute if entity @e[tag=bv_offer_bv_oak_planks,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_oak_planks
execute if entity @e[tag=bv_offer_bv_spruce_planks,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_spruce_planks
execute if entity @e[tag=bv_offer_bv_crafting_table,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_crafting_table
execute if entity @e[tag=bv_offer_bv_stick,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_stick
execute if entity @e[tag=bv_offer_bv_torch,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_torch
execute if entity @e[tag=bv_offer_bv_furnace,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_furnace
execute if entity @e[tag=bv_offer_bv_chest,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_chest
execute if entity @e[tag=bv_offer_bv_boat,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_boat
execute if entity @e[tag=bv_offer_bv_bread,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_bread
execute if entity @e[tag=bv_offer_bv_golden_apple,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_golden_apple
execute if entity @e[tag=bv_offer_bv_stone_pickaxe,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_stone_pickaxe
execute if entity @e[tag=bv_offer_bv_iron_sword,distance=..8,limit=1] run function bigger_vanilla:market/grant_random/bv_iron_sword
