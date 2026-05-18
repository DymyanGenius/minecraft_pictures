tellraw @s {"text":"--- Bigger Vanilla Story ---","color":"gold","bold":true}
execute if score @s bv_stage matches 1 run tellraw @s {"text":"Глава I: добудь жемчуг Эндера. В нем проснется первый отголосок мира.","color":"aqua"}
execute if score @s bv_stage matches 2 run tellraw @s {"text":"Глава II: войди в Незер. Пламя должно узнать твое имя.","color":"red"}
execute if score @s bv_stage matches 3 run tellraw @s {"text":"Глава III: принеси стержень и древние обломки — память мира куётся из огня.","color":"gold"}
execute if score @s bv_stage matches 4 run tellraw @s {"text":"Глава IV: создай Око Эндера. Оно покажет дорогу к последнему небу.","color":"light_purple"}
execute if score @s bv_stage matches 5 run tellraw @s {"text":"Глава V: найди портал Края и шагни туда, где ванильный мир заканчивает молчать.","color":"dark_purple"}
execute if score @s bv_stage matches 6 run tellraw @s {"text":"Финал: освободи Край от дракона и верни голос миру.","color":"yellow"}
execute if score @s bv_stage matches 7.. run tellraw @s {"text":"Эпилог открыт. Ты прошел сюжет, но мир теперь отвечает на каждый твой шаг.","color":"green"}
