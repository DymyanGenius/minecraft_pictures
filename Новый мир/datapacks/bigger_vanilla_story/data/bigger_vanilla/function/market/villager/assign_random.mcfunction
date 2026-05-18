tag @s add bv_recipe_villager
execute store result score #villager bv_roll run random value 1..12
execute if score #villager bv_roll matches 1 run function bigger_vanilla:market/villager/offer_bv_oak_planks
execute if score #villager bv_roll matches 2 run function bigger_vanilla:market/villager/offer_bv_spruce_planks
execute if score #villager bv_roll matches 3 run function bigger_vanilla:market/villager/offer_bv_crafting_table
execute if score #villager bv_roll matches 4 run function bigger_vanilla:market/villager/offer_bv_stick
execute if score #villager bv_roll matches 5 run function bigger_vanilla:market/villager/offer_bv_torch
execute if score #villager bv_roll matches 6 run function bigger_vanilla:market/villager/offer_bv_furnace
execute if score #villager bv_roll matches 7 run function bigger_vanilla:market/villager/offer_bv_chest
execute if score #villager bv_roll matches 8 run function bigger_vanilla:market/villager/offer_bv_boat
execute if score #villager bv_roll matches 9 run function bigger_vanilla:market/villager/offer_bv_bread
execute if score #villager bv_roll matches 10 run function bigger_vanilla:market/villager/offer_bv_golden_apple
execute if score #villager bv_roll matches 11 run function bigger_vanilla:market/villager/offer_bv_stone_pickaxe
execute if score #villager bv_roll matches 12 run function bigger_vanilla:market/villager/offer_bv_iron_sword
