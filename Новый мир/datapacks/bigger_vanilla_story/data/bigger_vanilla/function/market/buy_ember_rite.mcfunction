execute unless entity @e[tag=bv_recipe_seller,distance=..8] run tellraw @s {"text":"Рядом нет Архивариуса Чертежей. Призови его через /function bigger_vanilla:market/spawn_archivist и покупай рядом с ним.","color":"red"}
execute if entity @e[tag=bv_recipe_seller,distance=..8] store result score @s bv_paid run clear @s minecraft:emerald 0
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 5.. run clear @s minecraft:emerald 5
execute if entity @e[tag=bv_recipe_seller,distance=..8] if score @s bv_paid matches 5.. run function bigger_vanilla:market/grant_ember_rite
execute if entity @e[tag=bv_recipe_seller,distance=..8] unless score @s bv_paid matches 5.. run tellraw @s {"text":"Нужно 5 изумрудов для чертежа Пепельного ритуала.","color":"red"}
