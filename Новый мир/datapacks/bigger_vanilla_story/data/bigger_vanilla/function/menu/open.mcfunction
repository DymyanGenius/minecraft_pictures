playsound minecraft:ui.button.click master @s ~ ~ ~ 0.8 1.25
title @s times 5 40 10
title @s title {"text":"BIGGER VANILLA","color":"gold","bold":true}
title @s subtitle {"text":"кликабельное меню datapack в чате","color":"yellow"}
tellraw @s {"text":"\n╔══════════════════════════════════════╗","color":"gold"}
tellraw @s {"text":"║        BIGGER VANILLA STORY         ║","color":"gold","bold":true}
tellraw @s {"text":"╠══════════════════════════════════════╣","color":"gold"}
tellraw @s {"text":"║ Datapack не может открыть настоящий ║","color":"dark_gray"}
tellraw @s {"text":"║ GUI главного меню без мода, поэтому ║","color":"dark_gray"}
tellraw @s {"text":"║ ниже — кликабельные кнопки в чате.  ║","color":"dark_gray"}
tellraw @s {"text":"╚══════════════════════════════════════╝","color":"gold"}
tellraw @s [{"text":"   ▶  НАЧАТЬ / ПРОДОЛЖИТЬ ИСТОРИЮ   ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Нажми, чтобы открыть пролог, текущую цель и диалог с Архивариусом","color":"green"}}},{"text":"  /trigger bv_menu set 1","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ◆  ПРИЗВАТЬ АРХИВАРИУСА          ","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Нажми, чтобы вызвать торговца чертежами рядом с собой","color":"aqua"}}},{"text":"  /trigger bv_menu set 2","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ?  ПОКАЗАТЬ ТЕКУЩУЮ ЦЕЛЬ         ","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Нажми, чтобы получить точную цель текущей главы","color":"yellow"}}},{"text":"  /trigger bv_menu set 3","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ♣  СЛУЧАЙНЫЙ ТОРГОВЕЦ РЕЦЕПТАМИ ","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 5"},"hoverEvent":{"action":"show_text","contents":{"text":"Нажми, чтобы призвать торговца с одним случайным рецептом: доски, лодка, яблоко и т.д.","color":"light_purple"}}},{"text":"  /trigger bv_menu set 5","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   $  КУПИТЬ РЕЦЕПТ У БЛИЖАЙШЕГО    ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 6"},"hoverEvent":{"action":"show_text","contents":{"text":"Нажми рядом со случайным торговцем, чтобы купить его рецепт","color":"gold"}}},{"text":"  /trigger bv_menu set 6","color":"dark_gray","italic":true}]
tellraw @s [{"text":"   ×  ЗАКРЫТЬ МЕНЮ                  ","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger bv_menu set 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Нажми, чтобы убрать меню без действия","color":"red"}}},{"text":"  /trigger bv_menu set 4","color":"dark_gray","italic":true}]
tellraw @s {"text":"Подсказка: если кнопка не нажимается, введи серую команду справа вручную. /trigger работает без читов, когда datapack загружен.","color":"gray","italic":true}
