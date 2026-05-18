scoreboard players set @s bv_menu 0
execute unless score @s bv_intro matches 9.. run tellraw @s {"text":"Сначала дослушай злого волшебника: нажимай по нему ПКМ, пока он не выбросит тебя в мир.","color":"dark_purple"}
execute if score @s bv_intro matches 9.. run function bigger_vanilla:guide
execute if score @s bv_intro matches 9.. run function bigger_vanilla:dialogue/start_player
