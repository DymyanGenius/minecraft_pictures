execute unless entity @e[tag=bv_recipe_seller,distance=..8] run tellraw @s {"text":"Рядом нет Архивариуса Чертежей. Призови его через /function bigger_vanilla:market/spawn_archivist и покупай рядом с ним.","color":"red"}
execute if entity @e[tag=bv_recipe_seller,distance=..8] store result score @s bv_paid run clear @s minecraft:emerald 0
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 3.. run clear @s minecraft:emerald 3
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 3.. run function bigger_vanilla:market/grant_whispering_stone
execute if entity @e[tag=bv_recipe_seller,distance=..8] unless score @s bv_paid matches 3.. run tellraw @s {"text":"Нужно 3 изумрудов для чертежа Шепчущего камня.","color":"red"}
