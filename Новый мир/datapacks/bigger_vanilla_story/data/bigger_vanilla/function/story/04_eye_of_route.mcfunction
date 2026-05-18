scoreboard players set @s bv_stage 5
advancement grant @s only bigger_vanilla:story/eye_of_route
playsound minecraft:entity.ender_eye.launch master @s ~ ~ ~ 1 0.8
effect give @s minecraft:speed 45 0 true
title @s title {"text":"Дорога открыта","color":"light_purple","bold":true}
title @s subtitle {"text":"Глава V: Последнее небо","color":"dark_purple"}
tellraw @s {"text":"Око дрожит в ладони и тянет тебя к крепости. Найди портал Края и шагни за границу ванили.","color":"gray"}
