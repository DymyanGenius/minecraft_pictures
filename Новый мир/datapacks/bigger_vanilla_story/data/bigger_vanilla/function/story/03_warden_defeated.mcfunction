scoreboard players set @s bv_stage 5
playsound minecraft:entity.wither_skeleton.death master @s ~ ~ ~ 1 0.6
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.2
effect give @s minecraft:fire_resistance 120 0 true
title @s title {"text":"Пепел признал тебя","color":"gold","bold":true}
title @s subtitle {"text":"Купи Кузницу памяти","color":"yellow"}
tellraw @s [{"text":"Страж рассыпался в горячую пыль. Теперь купи чертёж ","color":"gray"},{"text":"/function bigger_vanilla:market/buy_memory_forge","color":"yellow"},{"text":" и принеси стержень с древними обломками.","color":"gray"}]
