scoreboard players add #dialogue bv_timer 1
execute if score #dialogue bv_timer matches 1 run tellraw @a[distance=..48] [{"text":"Архивариус Чертежей: ","color":"gold"},{"text":"Никто больше не крафтит по памяти. Теперь у каждого предмета есть цена знания.","color":"gray"}]
execute if score #dialogue bv_timer matches 2 run tellraw @a[distance=..48] [{"text":"Архивариус Чертежей: ","color":"gold"},{"text":"Если игрок спросит о рецептах — не отдавай всё сразу. Пусть сначала услышит мир.","color":"gray"}]
execute if score #dialogue bv_timer matches 3 run tellraw @a[distance=..48] [{"text":"Странствующий голос: ","color":"dark_aqua"},{"text":"Я видел, как мшистый камень разговаривал с книгой. Это было до первого портала.","color":"gray"}]
execute if score #dialogue bv_timer matches 4 run tellraw @a[distance=..48] [{"text":"Архивариус Чертежей: ","color":"gold"},{"text":"Тс-с. Он слушает. Игрок всегда слушает, даже когда делает вид, что рубит дерево.","color":"gray"}]
execute if score #dialogue bv_timer matches 4 run scoreboard players set #dialogue bv_timer 0
playsound minecraft:entity.villager.ambient master @a[distance=..48] ~ ~ ~ 0.35 1.15
