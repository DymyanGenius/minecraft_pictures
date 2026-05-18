scoreboard players set @s bv_stage 1
advancement grant @s only bigger_vanilla:root
function bigger_vanilla:cutscene/prologue
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 0.7
title @s title {"text":"Мир глубже, чем кажется","color":"gold","bold":true}
title @s subtitle {"text":"Открой меню новой ванили","color":"green"}
tellraw @s [{"text":"Ты просыпаешься в обычной ванили, но теперь даже рецепты стали частью сюжета. ","color":"gray"},{"text":"Открой меню","color":"yellow","clickEvent":{"action":"run_command","value":"/function bigger_vanilla:menu/open"}},{"text":" и призови Архивариуса Чертежей.","color":"gray"}]
