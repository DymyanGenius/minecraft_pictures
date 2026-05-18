tellraw @s {"text":"--- Bigger Vanilla Story: полная версия ---","color":"gold","bold":true}
tellraw @s [{"text":"Меню: ","color":"gray"},{"text":"/function bigger_vanilla:menu/open","color":"yellow"},{"text":" | Торговец: ","color":"gray"},{"text":"/function bigger_vanilla:market/spawn_archivist","color":"aqua"}]
execute if score @s bv_stage matches 1 run tellraw @s {"text":"Глава I: добудь жемчуг Эндера. Потом купи у Архивариуса чертёж Шепчущего камня.","color":"aqua"}
execute if score @s bv_stage matches 2 unless score @s bv_recipe_wisp matches 1.. run tellraw @s {"text":"Нужен чертёж: /function bigger_vanilla:market/buy_whispering_stone — 3 изумруда.","color":"red"}
execute if score @s bv_stage matches 2 if score @s bv_recipe_wisp matches 1.. run tellraw @s {"text":"Ритуал шепчущего камня: встань на мшистый булыжник с книгой и осколком аметиста.","color":"green"}
execute if score @s bv_stage matches 3 run tellraw @s {"text":"Глава II: войди в Незер. Там понадобится чертёж Пепельного ритуала.","color":"red"}
execute if score @s bv_stage matches 4 unless score @s bv_recipe_ember matches 1.. run tellraw @s {"text":"Нужен чертёж: /function bigger_vanilla:market/buy_ember_rite — 5 изумрудов.","color":"red"}
execute if score @s bv_stage matches 4 if score @s bv_recipe_ember matches 1.. run tellraw @s {"text":"Испытание Пепельного Стража: встань на чернит с огненным стержнем и слезой гаста.","color":"gold"}
execute if score @s bv_stage matches 41 run tellraw @s {"text":"Пепельный Страж рядом. Победи его, не убегая из зоны испытания.","color":"dark_red"}
execute if score @s bv_stage matches 5 unless score @s bv_recipe_memory matches 1.. run tellraw @s {"text":"Нужен чертёж: /function bigger_vanilla:market/buy_memory_forge — 7 изумрудов.","color":"red"}
execute if score @s bv_stage matches 5 if score @s bv_recipe_memory matches 1.. run tellraw @s {"text":"Кузница памяти: принеси стержень и древние обломки — память мира куётся из огня.","color":"gold"}
execute if score @s bv_stage matches 6 unless score @s bv_recipe_sky matches 1.. run tellraw @s {"text":"Нужен чертёж: /function bigger_vanilla:market/buy_sky_lens — 9 изумрудов.","color":"red"}
execute if score @s bv_stage matches 6 if score @s bv_recipe_sky matches 1.. run tellraw @s {"text":"Глава IV: создай Око Эндера. Оно покажет дорогу к последнему небу.","color":"light_purple"}
execute if score @s bv_stage matches 7 run tellraw @s {"text":"Глава V: найди портал Края и шагни туда, где ванильный мир заканчивает молчать.","color":"dark_purple"}
execute if score @s bv_stage matches 8 run tellraw @s {"text":"Финал: освободи Край от дракона и верни голос миру.","color":"yellow"}
execute if score @s bv_stage matches 9 run tellraw @s [{"text":"Выбор финала: ","color":"gold"},{"text":"/function bigger_vanilla:ending/restore","color":"green"},{"text":" или ","color":"gray"},{"text":"/function bigger_vanilla:ending/ascend","color":"light_purple"}]
execute if score @s bv_stage matches 10 run tellraw @s {"text":"Эпилог восстановления открыт. Ты вернул миру теплый человеческий голос.","color":"green"}
execute if score @s bv_stage matches 11 run tellraw @s {"text":"Эпилог вознесения открыт. Ты стал легендой, которую слышит пустота.","color":"light_purple"}
