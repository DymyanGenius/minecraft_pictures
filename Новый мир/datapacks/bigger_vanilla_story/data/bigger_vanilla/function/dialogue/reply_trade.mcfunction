playsound minecraft:entity.villager.trade master @s ~ ~ ~ 0.8 1.0
tellraw @s [{"text":"Архивариус: ","color":"gold","bold":true},{"text":"Тогда говори языком изумрудов. Встань рядом со мной и используй команды покупки:","color":"gray"}]
tellraw @s [{"text":"/function bigger_vanilla:market/buy_whispering_stone","color":"green"},{"text":" — 3 изумруда, первый ритуал","color":"gray"}]
tellraw @s [{"text":"/function bigger_vanilla:market/buy_ember_rite","color":"gold"},{"text":" — 5 изумрудов, вызов Стража","color":"gray"}]
tellraw @s [{"text":"/function bigger_vanilla:market/buy_memory_forge","color":"yellow"},{"text":" — 7 изумрудов, кузница памяти","color":"gray"}]
tellraw @s [{"text":"/function bigger_vanilla:market/buy_sky_lens","color":"light_purple"},{"text":" — 9 изумрудов, дорога к Краю","color":"gray"}]
