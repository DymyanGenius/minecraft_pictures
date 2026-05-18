scoreboard players set @s bv_stage 4
advancement grant @s only bigger_vanilla:story/forge_memory
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 0.7
effect give @s minecraft:strength 60 0 true
title @s title {"text":"Память выкована","color":"gold","bold":true}
title @s subtitle {"text":"Глава IV: Око дороги","color":"light_purple"}
tellraw @s {"text":"Пламя и древний металл сложились в вопрос. Создай Око Эндера — оно ответит направлением.","color":"gray"}
