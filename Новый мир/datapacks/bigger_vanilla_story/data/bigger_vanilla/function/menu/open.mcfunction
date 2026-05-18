tellraw @s {"text":"===== Bigger Vanilla Story =====","color":"gold","bold":true}
tellraw @s {"text":"Datapack не может заменить главное меню Minecraft до входа в мир, поэтому здесь есть внутриигровое подменю после входа.","color":"dark_gray","italic":true}
tellraw @s [{"text":"[1] Начать/продолжить режиссерскую историю","color":"green","clickEvent":{"action":"run_command","value":"/trigger bv_menu set 1"},"hoverEvent":{"action":"show_text","contents":"Открыть пролог, цель и звуковое повествование"}}]
tellraw @s [{"text":"[2] Призвать Архивариуса Чертежей","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger bv_menu set 2"},"hoverEvent":{"action":"show_text","contents":"Торговец рецептами: без его чертежей сюжетные ритуалы не сработают"}}]
tellraw @s [{"text":"[3] Показать текущую цель","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bv_menu set 3"},"hoverEvent":{"action":"show_text","contents":"Открыть /function bigger_vanilla:guide"}}]
