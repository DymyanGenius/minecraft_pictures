scoreboard players set @s bv_intro 1
scoreboard players set @s bv_wizard_stage 0
recipe take @s *
forceload add 0 0
fill -9 179 -9 9 179 9 minecraft:polished_deepslate
fill -9 180 -9 9 183 -9 minecraft:tinted_glass
fill -9 180 9 9 183 9 minecraft:tinted_glass
fill -9 180 -9 -9 183 9 minecraft:tinted_glass
fill 9 180 -9 9 183 9 minecraft:tinted_glass
fill -2 180 -2 2 180 2 minecraft:crying_obsidian
setblock 0 180 0 minecraft:enchanting_table
setblock 0 184 0 minecraft:end_crystal
setblock -4 180 0 minecraft:lectern
setblock 4 180 0 minecraft:chiseled_bookshelf
execute unless entity @e[tag=bv_evil_wizard,limit=1] run summon minecraft:villager 0 180 3 {Tags:["bv_evil_wizard","bv_talker"],VillagerData:{type:"minecraft:swamp",profession:"minecraft:librarian",level:5},CustomName:'{"text":"Злой Волшебник Рецептов","color":"dark_purple","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Glowing:1b,Offers:{Recipes:[{buy:{id:"minecraft:emerald",count:64},sell:{id:"minecraft:paper",count:1},maxUses:1,rewardExp:0b}]}}
tp @s 0 181 0 180 0
spawnpoint @s 0 181 0
playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 1 0.7
effect give @s minecraft:darkness 4 0 true
title @s times 10 80 20
title @s title {"text":"Зал Украденных Рецептов","color":"dark_purple","bold":true}
title @s subtitle {"text":"ПКМ по злому волшебнику продолжает сцену","color":"gray"}
tellraw @s {"text":"Ты просыпаешься не в лесу, а на холодной платформе. Перед тобой стоит злой волшебник. Подойди и нажимай по нему ПКМ, чтобы он говорил дальше.","color":"gray"}
