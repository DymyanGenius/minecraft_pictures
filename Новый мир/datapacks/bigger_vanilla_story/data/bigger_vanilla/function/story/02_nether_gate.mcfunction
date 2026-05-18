scoreboard players set @s bv_stage 3
advancement grant @s only bigger_vanilla:story/nether_gate
playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 0.9 0.8
effect give @s minecraft:fire_resistance 20 0 true
title @s title {"text":"Порог огня","color":"red","bold":true}
title @s subtitle {"text":"Глава III: Кузница памяти","color":"gold"}
tellraw @s {"text":"Незер узнал тебя. Принеси стержень и древние обломки: из них мир вспомнит, кем он был до тишины.","color":"gray"}
