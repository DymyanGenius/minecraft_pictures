# Scheduled ambience: subtle enough for survival, frequent enough to make the world feel alive.
execute as @a[scores={bv_stage=1..2}] at @s if dimension minecraft:overworld run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.22 1.35
execute as @a[scores={bv_stage=1..2}] at @s if dimension minecraft:overworld run tellraw @s {"text":"Где-то под землей камень отвечает эхом. История ждет первый ключ и купленный чертёж.","color":"dark_gray","italic":true}
execute as @a[scores={bv_stage=3..4}] at @s if dimension minecraft:the_nether run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.35 0.6
execute as @a[scores={bv_stage=3..4}] at @s if dimension minecraft:the_nether run tellraw @s {"text":"Пепел ложится на плечи, будто мир пытается вспомнить твое имя.","color":"gold","italic":true}
execute as @a[scores={bv_stage=41}] at @s run playsound minecraft:entity.wither_skeleton.ambient master @s ~ ~ ~ 0.55 0.65
execute as @a[scores={bv_stage=41}] at @s run tellraw @s {"text":"Страж шепчет из дыма: докажи, что ты не просто шахтер с хорошим мечом.","color":"dark_red","italic":true}
execute as @a[scores={bv_stage=7..8}] at @s if dimension minecraft:the_end run playsound minecraft:entity.enderman.ambient master @s ~ ~ ~ 0.35 0.55
execute as @a[scores={bv_stage=7..8}] at @s if dimension minecraft:the_end run tellraw @s {"text":"Пустота молчит слишком ровно. Значит, она слушает.","color":"light_purple","italic":true}
execute as @a[scores={bv_stage=9}] run tellraw @s {"text":"Финальный выбор ждет. /function bigger_vanilla:ending/restore или /function bigger_vanilla:ending/ascend","color":"gold","italic":true}
execute as @a[scores={bv_stage=10}] run tellraw @s {"text":"Эпилог восстановления: мир стал шире, но все еще остается твоим домом.","color":"green","italic":true}
execute as @a[scores={bv_stage=11}] run tellraw @s {"text":"Эпилог вознесения: пустота больше не конец, а дверь.","color":"light_purple","italic":true}
execute at @e[tag=bv_talker,limit=1,sort=nearest] run function bigger_vanilla:dialogue/pulse
schedule function bigger_vanilla:ambient/heartbeat 2400t replace
