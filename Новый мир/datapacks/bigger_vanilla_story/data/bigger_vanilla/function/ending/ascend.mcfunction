execute unless score @s bv_stage matches 9 run tellraw @s {"text":"Этот финал откроется после победы над драконом.","color":"red"}
execute if score @s bv_stage matches 9 run scoreboard players set @s bv_stage 11
execute if score @s bv_stage matches 11 run advancement grant @s only bigger_vanilla:story/ending_ascend
execute if score @s bv_stage matches 11 run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 0.55 1.4
execute if score @s bv_stage matches 11 run effect give @s minecraft:levitation 8 0 true
execute if score @s bv_stage matches 11 run effect give @s minecraft:slow_falling 120 0 true
execute if score @s bv_stage matches 11 run effect give @s minecraft:night_vision 300 0 true
execute if score @s bv_stage matches 11 run title @s title {"text":"Финал: Вознесение","color":"light_purple","bold":true}
execute if score @s bv_stage matches 11 run title @s subtitle {"text":"Пустота запомнила твое имя","color":"dark_purple"}
execute if score @s bv_stage matches 11 run tellraw @s {"text":"Ты не вернул мир к прежнему виду — ты поднял его выше. Теперь каждый портал, каждый эндермен и каждый осколок эха напоминают: ваниль стала мифом.","color":"gray"}
