execute unless entity @e[tag=bv_recipe_seller,distance=..8] run tellraw @s {"text":"Рядом нет Архивариуса Чертежей. Призови его через /function bigger_vanilla:market/spawn_archivist и покупай рядом с ним.","color":"red"}
execute if entity @e[tag=bv_recipe_seller,distance=..8] store result score @s bv_paid run clear @s minecraft:emerald 0
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 7.. run clear @s minecraft:emerald 7
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 7.. run function bigger_vanilla:market/grant_memory_forge
execute if entity @e[tag=bv_recipe_seller,distance=..8] unless score @s bv_paid matches 7.. run tellraw @s {"text":"Нужно 7 изумрудов для чертежа Кузницы памяти.","color":"red"}
