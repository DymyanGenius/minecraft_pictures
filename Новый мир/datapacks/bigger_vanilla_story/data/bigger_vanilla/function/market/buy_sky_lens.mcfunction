execute unless entity @e[tag=bv_recipe_seller,distance=..8] run tellraw @s {"text":"Рядом нет Архивариуса Чертежей. Призови его через /function bigger_vanilla:market/spawn_archivist и покупай рядом с ним.","color":"red"}
execute if entity @e[tag=bv_recipe_seller,distance=..8] store result score @s bv_paid run clear @s minecraft:emerald 0
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 9.. run clear @s minecraft:emerald 9
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 9.. run function bigger_vanilla:market/grant_sky_lens
execute if entity @e[tag=bv_recipe_seller,distance=..8] unless score @s bv_paid matches 9.. run tellraw @s {"text":"Нужно 9 изумрудов для чертежа Небесной линзы.","color":"red"}
