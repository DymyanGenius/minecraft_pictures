scoreboard players set @s bv_stage 4
advancement grant @s only bigger_vanilla:story/nether_gate
playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 0.9 0.8
effect give @s minecraft:fire_resistance 20 0 true
title @s title {"text":"Порог огня","color":"red","bold":true}
title @s subtitle {"text":"Купи Пепельный ритуал","color":"gold"}
tellraw @s [{"text":"Незер узнал тебя, но пропустит дальше только после платного знания. Купи ","color":"gray"},{"text":"/function bigger_vanilla:market/buy_ember_rite","color":"gold"},{"text":", затем встань на чернит с огненным стержнем и слезой гаста.","color":"gray"}]
