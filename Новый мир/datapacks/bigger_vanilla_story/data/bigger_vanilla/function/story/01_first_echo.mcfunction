scoreboard players set @s bv_stage 2
advancement grant @s only bigger_vanilla:story/first_echo
playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 0.7 0.9
effect give @s minecraft:night_vision 45 0 true
title @s title {"text":"Отголосок найден","color":"aqua","bold":true}
title @s subtitle {"text":"Купи чертёж и найди шепчущий камень","color":"green"}
tellraw @s [{"text":"Жемчуг холоден, но он не открывает портал сразу. Купи у Архивариуса ","color":"gray"},{"text":"чертёж Шепчущего камня","color":"green"},{"text":", затем встань на мшистый булыжник с книгой и аметистом.","color":"gray"}]
