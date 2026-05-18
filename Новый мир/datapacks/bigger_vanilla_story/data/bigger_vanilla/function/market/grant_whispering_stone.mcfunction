scoreboard players set @s bv_recipe_wisp 1
recipe give @s bigger_vanilla:whispering_index
give @s minecraft:paper[minecraft:custom_name='{"text":"Чертёж: Шепчущий камень","color":"green","italic":false}',minecraft:lore=['{"text":"Мшистый булыжник + книга + аметист открывают первый ритуал.","color":"gray","italic":false}']] 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.3
tellraw @s {"text":"Куплен чертёж Шепчущего камня. Теперь ритуал на мшистом булыжнике сработает.","color":"green"}
