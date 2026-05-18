scoreboard players set @s bv_recipe_sky 1
recipe give @s bigger_vanilla:sky_lens
give @s minecraft:paper[minecraft:custom_name='{"text":"Чертёж: Небесная линза","color":"light_purple","italic":false}',minecraft:lore=['{"text":"Око Эндера не укажет финальную дорогу без этого чертежа.","color":"gray","italic":false}']] 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.55
tellraw @s {"text":"Куплен чертёж Небесной линзы. Теперь Око дороги сможет открыть путь к Краю.","color":"light_purple"}
