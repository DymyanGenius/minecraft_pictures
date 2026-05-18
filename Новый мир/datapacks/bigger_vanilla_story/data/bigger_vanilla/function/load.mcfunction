# Bigger Vanilla Story: initialization
scoreboard objectives add bv_stage dummy
scoreboard objectives add bv_timer dummy
scoreboard objectives add bv_secret dummy
scoreboard objectives add bv_ritual dummy
scoreboard objectives add bv_choice dummy
scoreboard objectives add bv_menu trigger
scoreboard objectives add bv_reply trigger
scoreboard objectives add bv_paid dummy
scoreboard objectives add bv_recipe_wisp dummy
scoreboard objectives add bv_recipe_ember dummy
scoreboard objectives add bv_recipe_memory dummy
scoreboard objectives add bv_recipe_sky dummy
scoreboard players set #ambience bv_timer 0
scoreboard players set #dialogue bv_timer 0
schedule function bigger_vanilla:ambient/heartbeat 1200t replace
tellraw @a [{"text":"[Bigger Vanilla] ","color":"gold","bold":true},{"text":"полная версия загружена: меню, торговцы-чертежники, рецепты, диалоги, катсцены. Используй ","color":"gray"},{"text":"/function bigger_vanilla:menu/open","color":"yellow"},{"text":" или ","color":"gray"},{"text":"/function bigger_vanilla:guide","color":"yellow"},{"text":".","color":"gray"}]
