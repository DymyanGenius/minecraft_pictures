scoreboard players set @s bv_intro 9
playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 0.6
particle minecraft:reverse_portal 0 181 3 1.2 1.2 1.2 0.08 160 force @a[distance=..32]
tp @e[tag=bv_evil_wizard,limit=1] 0 260 0
spreadplayers 0 0 32 256 false @s
effect give @s minecraft:slow_falling 12 0 true
function bigger_vanilla:story/00_awakening
tellraw @s {"text":"Волшебник исчез, а тебя выбросило в обычный мир. Обычный — кроме одной детали: рецептов больше нет. Ищи деревни и покупай знания у простых жителей.","color":"gold"}
