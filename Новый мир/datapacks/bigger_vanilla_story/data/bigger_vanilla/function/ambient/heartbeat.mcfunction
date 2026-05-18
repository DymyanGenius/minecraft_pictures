# Scheduled ambience: subtle enough for survival, frequent enough to make the world feel alive.
execute as @a[scores={bv_stage=1..2}] at @s if dimension minecraft:overworld run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.22 1.35
execute as @a[scores={bv_stage=1..2}] at @s if dimension minecraft:overworld run tellraw @s {"text":"Где-то под землей камень отвечает эхом. История ждет первый ключ.","color":"dark_gray","italic":true}
execute as @a[scores={bv_stage=3..4}] at @s if dimension minecraft:the_nether run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.35 0.6
execute as @a[scores={bv_stage=3..4}] at @s if dimension minecraft:the_nether run tellraw @s {"text":"Пепел ложится на плечи, будто мир пытается вспомнить твое имя.","color":"gold","italic":true}
execute as @a[scores={bv_stage=5..6}] at @s if dimension minecraft:the_end run playsound minecraft:entity.enderman.ambient master @s ~ ~ ~ 0.35 0.55
execute as @a[scores={bv_stage=5..6}] at @s if dimension minecraft:the_end run tellraw @s {"text":"Пустота молчит слишком ровно. Значит, она слушает.","color":"light_purple","italic":true}
execute as @a[scores={bv_stage=7..}] run tellraw @s {"text":"Эпилог: мир стал шире, но все еще остается твоей ванильной песочницей.","color":"green","italic":true}
schedule function bigger_vanilla:ambient/heartbeat 2400t replace
