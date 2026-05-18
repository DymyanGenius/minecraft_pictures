# Bigger Vanilla Story: initialization
scoreboard objectives add bv_stage dummy
scoreboard objectives add bv_timer dummy
scoreboard objectives add bv_secret dummy
scoreboard players set #ambience bv_timer 0
schedule function bigger_vanilla:ambient/heartbeat 1200t replace
tellraw @a [{"text":"[Bigger Vanilla] ","color":"gold","bold":true},{"text":"датапак загружен. Новые игроки начнут историю автоматически. Используй ","color":"gray"},{"text":"/function bigger_vanilla:guide","color":"yellow"},{"text":" для цели.","color":"gray"}]
