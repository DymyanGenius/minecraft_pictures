# Optional small survival reward for players who want a nudge without breaking balance.
execute if score @s bv_stage matches 1 run give @s minecraft:bread 8
execute if score @s bv_stage matches 2 run give @s minecraft:torch 16
execute if score @s bv_stage matches 3 run give @s minecraft:golden_carrot 6
execute if score @s bv_stage matches 4 run effect give @s minecraft:fire_resistance 90 0 true
execute if score @s bv_stage matches 5 run give @s minecraft:experience_bottle 12
execute if score @s bv_stage matches 6 run effect give @s minecraft:speed 90 0 true
execute if score @s bv_stage matches 7 run effect give @s minecraft:slow_falling 120 0 true
execute if score @s bv_stage matches 8 run give @s minecraft:arrow 16
execute if score @s bv_stage matches 9 run give @s minecraft:golden_apple 1
tellraw @s {"text":"Награда главы выдана. Следующую цель смотри через /function bigger_vanilla:guide","color":"green"}
