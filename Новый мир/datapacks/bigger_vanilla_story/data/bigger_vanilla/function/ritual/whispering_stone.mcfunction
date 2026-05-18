scoreboard players set @s bv_stage 3
advancement grant @s only bigger_vanilla:story/whispering_stone
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 0.65
playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 1 0.45
particle minecraft:enchant ~ ~1 ~ 0.8 1.2 0.8 0.1 80 force @s
effect give @s minecraft:glowing 30 0 true
title @s title {"text":"Камень заговорил","color":"green","bold":true}
title @s subtitle {"text":"Глава II: Порог огня","color":"red"}
tellraw @s {"text":"Страницы книги сами складываются в координаты жара. Теперь путь ведет в Незер — но там тебя будут ждать не просто ресурсы.","color":"gray"}
