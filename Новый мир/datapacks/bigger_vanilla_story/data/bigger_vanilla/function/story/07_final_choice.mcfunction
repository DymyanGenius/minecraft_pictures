scoreboard players set @s bv_stage 9
advancement grant @s only bigger_vanilla:story/final_choice
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
effect give @s minecraft:regeneration 45 1 true
title @s title {"text":"Дракон пал","color":"gold","bold":true}
title @s subtitle {"text":"Теперь выбери финал","color":"green"}
tellraw @s [{"text":"Мир больше не молчит. Ты можешь ","color":"gray"},{"text":"восстановить его тепло","color":"green"},{"text":" или ","color":"gray"},{"text":"вознестись вместе с пустотой","color":"light_purple"},{"text":".","color":"gray"}]
tellraw @s [{"text":"Финал восстановления: ","color":"gray"},{"text":"/function bigger_vanilla:ending/restore","color":"green"}]
tellraw @s [{"text":"Финал вознесения: ","color":"gray"},{"text":"/function bigger_vanilla:ending/ascend","color":"light_purple"}]
