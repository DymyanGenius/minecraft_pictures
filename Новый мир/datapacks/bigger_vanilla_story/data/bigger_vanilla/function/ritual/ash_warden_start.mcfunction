scoreboard players set @s bv_stage 41
advancement grant @s only bigger_vanilla:story/ash_warden
playsound minecraft:entity.wither.spawn master @a[distance=..32] ~ ~ ~ 0.7 0.55
particle minecraft:large_smoke ~ ~1 ~ 1.2 1.2 1.2 0.05 120 force @a[distance=..32]
summon minecraft:wither_skeleton ~ ~1 ~ {Tags:["bv_ash_warden"],CustomName:'{"text":"Пепельный Страж","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Health:60f}
effect give @e[tag=bv_ash_warden,distance=..8,limit=1,sort=nearest] minecraft:strength 999999 1 true
effect give @e[tag=bv_ash_warden,distance=..8,limit=1,sort=nearest] minecraft:resistance 999999 0 true
effect give @e[tag=bv_ash_warden,distance=..8,limit=1,sort=nearest] minecraft:absorption 999999 4 true
effect give @e[tag=bv_ash_warden,distance=..8,limit=1,sort=nearest] minecraft:speed 999999 0 true
title @s title {"text":"Пепельный Страж","color":"dark_red","bold":true}
title @s subtitle {"text":"Мини-босс: победи его рядом с местом ритуала","color":"gold"}
tellraw @s {"text":"Чернит раскололся, и из трещины вышел страж. Если убежишь слишком далеко, испытание сочтет тебя победителем, но легенда запомнит трусость — сражайся рядом.","color":"gray"}
