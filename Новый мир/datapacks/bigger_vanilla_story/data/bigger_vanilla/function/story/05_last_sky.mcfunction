scoreboard players set @s bv_stage 6
advancement grant @s only bigger_vanilla:story/last_sky
playsound minecraft:music.end master @s ~ ~ ~ 0.8 1
effect give @s minecraft:slow_falling 90 0 true
title @s title {"text":"Последнее небо","color":"dark_purple","bold":true}
title @s subtitle {"text":"Финал: Голос мира","color":"yellow"}
tellraw @s {"text":"Остров висит в пустоте, как точка в конце старой сказки. Победи дракона — и мир заговорит заново.","color":"gray"}
