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
scoreboard objectives add bv_rules dummy
scoreboard objectives add bv_roll dummy
scoreboard objectives add bv_intro dummy
scoreboard objectives add bv_wizard_stage dummy
scoreboard objectives add bv_wizard_talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add bv_drop_start minecraft.dropped:minecraft.knowledge_book
scoreboard objectives add bv_drop_archivist minecraft.dropped:minecraft.recovery_compass
scoreboard objectives add bv_drop_guide minecraft.dropped:minecraft.compass
scoreboard objectives add bv_drop_random minecraft.dropped:minecraft.nautilus_shell
scoreboard objectives add bv_drop_buy minecraft.dropped:minecraft.music_disc_13
scoreboard players set #ambience bv_timer 0
scoreboard players set #dialogue bv_timer 0
gamerule doLimitedCrafting true
schedule function bigger_vanilla:ambient/heartbeat 1200t replace
schedule function bigger_vanilla:tick 1t replace
tellraw @a [{"text":"[Bigger Vanilla] ","color":"gold","bold":true},{"text":"полная версия загружена: новые игроки попадут в базу злого волшебника; обычные жители продают случайные рецепты. Используй ","color":"gray"},{"text":"/function bigger_vanilla:menu/open","color":"yellow"},{"text":" или ","color":"gray"},{"text":"/function bigger_vanilla:guide","color":"yellow"},{"text":".","color":"gray"}]
