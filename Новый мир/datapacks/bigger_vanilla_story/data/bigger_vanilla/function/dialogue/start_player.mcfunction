playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 0.8 1.1
tellraw @s [{"text":"Архивариус: ","color":"gold","bold":true},{"text":"Ты слышишь меня? Скажи, зачем пришёл.","color":"gray"}]
tellraw @s [{"text":"  [Спросить о мире]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger bv_reply set 1"}},{"text":"  [Мне нужны рецепты]","color":"green","clickEvent":{"action":"run_command","value":"/trigger bv_reply set 2"}},{"text":"  [У меня нет времени]","color":"red","clickEvent":{"action":"run_command","value":"/trigger bv_reply set 3"}}]
