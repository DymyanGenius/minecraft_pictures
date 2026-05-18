scoreboard players set @s bv_stage 1
advancement grant @s only bigger_vanilla:root
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 0.7
title @s title {"text":"Мир глубже, чем кажется","color":"gold","bold":true}
title @s subtitle {"text":"Глава I: Отголосок травы","color":"green"}
tellraw @s [{"text":"Ты просыпаешься в обычной ванили, но тишина странно слушает тебя. ","color":"gray"},{"text":"Добудь жемчуг Эндера","color":"aqua"},{"text":", чтобы услышать первый отголосок.","color":"gray"}]
