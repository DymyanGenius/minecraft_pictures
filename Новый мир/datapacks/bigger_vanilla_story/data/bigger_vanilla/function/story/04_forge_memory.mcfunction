scoreboard players set @s bv_stage 6
advancement grant @s only bigger_vanilla:story/forge_memory
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 0.7
playsound minecraft:block.lodestone.place master @s ~ ~ ~ 0.8 0.6
effect give @s minecraft:strength 60 0 true
title @s title {"text":"Память выкована","color":"gold","bold":true}
title @s subtitle {"text":"Купи Небесную линзу","color":"light_purple"}
tellraw @s [{"text":"Пламя, слеза и древний металл сложились в вопрос. Теперь нужен последний чертёж: ","color":"gray"},{"text":"/function bigger_vanilla:market/buy_sky_lens","color":"light_purple"},{"text":".","color":"gray"}]
