scoreboard players set @s bv_secret 1
playsound minecraft:block.sculk_sensor.clicking master @s ~ ~ ~ 0.8 0.7
effect give @s minecraft:darkness 5 0 true
tellraw @s {"text":"Секрет найден: осколок эха прошептал имя древнего города. Найди пластинку 5, чтобы услышать вторую половину тайны.","color":"dark_aqua","italic":true}
