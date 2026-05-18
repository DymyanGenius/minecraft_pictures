execute unless score @s bv_stage matches 9 run tellraw @s {"text":"Этот финал откроется после победы над драконом.","color":"red"}
execute if score @s bv_stage matches 9 run scoreboard players set @s bv_stage 10
execute if score @s bv_stage matches 10 run advancement grant @s only bigger_vanilla:story/ending_restore
execute if score @s bv_stage matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1
execute if score @s bv_stage matches 10 run effect give @s minecraft:hero_of_the_village 600 0 true
execute if score @s bv_stage matches 10 run effect give @s minecraft:regeneration 60 1 true
execute if score @s bv_stage matches 10 run time set day
execute if score @s bv_stage matches 10 run weather clear
execute if score @s bv_stage matches 10 run title @s title {"text":"Финал: Восстановление","color":"green","bold":true}
execute if score @s bv_stage matches 10 run title @s subtitle {"text":"Мир снова звучит как дом","color":"gold"}
execute if score @s bv_stage matches 10 run tellraw @s {"text":"Ты вернул голос миру не как король пустоты, а как его хранитель. Деревни, леса и шахты стали последней главой, которую можно продолжать бесконечно.","color":"gray"}
