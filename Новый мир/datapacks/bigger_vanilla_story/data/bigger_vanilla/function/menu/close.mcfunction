scoreboard players set @s bv_menu 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.75
tellraw @s {"text":"Меню закрыто. Открыть снова: /function bigger_vanilla:menu/open","color":"gray","italic":true}
