scoreboard players set @s bv_recipe_memory 1
recipe give @s bigger_vanilla:memory_lodestone
give @s minecraft:paper[minecraft:custom_name='{"text":"Чертёж: Кузница памяти","color":"yellow","italic":false}',minecraft:lore=['{"text":"Древние обломки получают смысл только после покупки этого чертежа.","color":"gray","italic":false}']] 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 0.85
tellraw @s {"text":"Куплен чертёж Кузницы памяти. Теперь древние обломки смогут продвинуть сюжет.","color":"yellow"}
