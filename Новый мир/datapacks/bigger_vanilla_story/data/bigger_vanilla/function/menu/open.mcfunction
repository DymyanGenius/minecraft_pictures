playsound minecraft:ui.button.click master @s ~ ~ ~ 0.8 1.25
title @s times 5 40 10
title @s title {"text":"BIGGER VANILLA","color":"gold","bold":true}
title @s subtitle {"text":"меню: клик в чате или предметы-кнопки","color":"yellow"}
tellraw @s {"text":"\n╔══════════════════════════════════════╗","color":"gold"}
tellraw @s {"text":"║        BIGGER VANILLA STORY         ║","color":"gold","bold":true}
tellraw @s {"text":"╠══════════════════════════════════════╣","color":"gold"}
tellraw @s {"text":"║ Если чат-клики или /trigger сломаны ║","color":"dark_gray"}
tellraw @s {"text":"║ выброси предмет-кнопку из инвентаря ║","color":"dark_gray"}
tellraw @s {"text":"║ клавишей Q — datapack поймает выбор ║","color":"dark_gray"}
tellraw @s {"text":"╚══════════════════════════════════════╝","color":"gold"}
tellraw @s [{"text":"   ▶  НАЧАТЬ / ПРОДОЛЖИТЬ ИСТОРИЮ   ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Если клик не работает, выброси предмет 'Меню: начать историю'","color":"green"}}},{"text":"  или выброси Knowledge Book","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ◆  ПРИЗВАТЬ АРХИВАРИУСА          ","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Если клик не работает, выброси предмет 'Меню: Архивариус'","color":"aqua"}}},{"text":"  или выброси Recovery Compass","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ?  ПОКАЗАТЬ ТЕКУЩУЮ ЦЕЛЬ         ","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Если клик не работает, выброси предмет 'Меню: цель'","color":"yellow"}}},{"text":"  или выброси Compass","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ♣  СЛУЧАЙНЫЙ ТОРГОВЕЦ РЕЦЕПТАМИ ","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 5"},"hoverEvent":{"action":"show_text","contents":{"text":"Если клик не работает, выброси предмет 'Меню: случайный рецепт'","color":"light_purple"}}},{"text":"  или выброси Nautilus Shell","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   $  КУПИТЬ РЕЦЕПТ У БЛИЖАЙШЕГО    ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 6"},"hoverEvent":{"action":"show_text","contents":{"text":"Если клик не работает, выброси предмет 'Меню: купить рецепт' рядом с торговцем","color":"gold"}}},{"text":"  или выброси Music Disc 13","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ×  ЗАКРЫТЬ МЕНЮ                  ","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Закрывает только чат-меню. Предметы можно выкинуть в лаву, если не нужны.","color":"red"}}},{"text":"  /trigger bv_menu set 4","color":"dark_gray","italic":true}]
give @s minecraft:knowledge_book[minecraft:custom_name='{"text":"Меню: начать историю","color":"green","italic":false}',minecraft:lore=['{"text":"Выброси Q, если чат-кнопки или /trigger не работают.","color":"gray","italic":false}']] 1
give @s minecraft:recovery_compass[minecraft:custom_name='{"text":"Меню: призвать Архивариуса","color":"aqua","italic":false}',minecraft:lore=['{"text":"Выброси Q для выбора без чата.","color":"gray","italic":false}']] 1
give @s minecraft:compass[minecraft:custom_name='{"text":"Меню: показать цель","color":"yellow","italic":false}',minecraft:lore=['{"text":"Выброси Q для выбора без чата.","color":"gray","italic":false}']] 1
give @s minecraft:nautilus_shell[minecraft:custom_name='{"text":"Меню: случайный торговец рецептом","color":"light_purple","italic":false}',minecraft:lore=['{"text":"Выброси Q для выбора без чата.","color":"gray","italic":false}']] 1
give @s minecraft:music_disc_13[minecraft:custom_name='{"text":"Меню: купить рецепт у ближайшего","color":"gold","italic":false}',minecraft:lore=['{"text":"Выброси Q рядом со случайным торговцем.","color":"gray","italic":false}']] 1
tellraw @s {"text":"Резервное управление выдано предметами: выброси нужный предмет клавишей Q. Это работает даже если чат не кликается и /trigger недоступен.","color":"green","italic":true}
schedule function bigger_vanilla:tick 1t replace
