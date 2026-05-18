scoreboard players set @s bv_stage 2
advancement grant @s only bigger_vanilla:story/first_echo
playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 0.7 0.9
effect give @s minecraft:night_vision 45 0 true
title @s title {"text":"Отголосок найден","color":"aqua","bold":true}
title @s subtitle {"text":"Глава II: Порог огня","color":"red"}
tellraw @s {"text":"Жемчуг холоден, но внутри него мерцает карта из пепла. Построй портал и войди в Незер.","color":"gray"}
