scoreboard players set @s bv_recipe_ember 1
recipe give @s bigger_vanilla:ember_rite
give @s minecraft:paper[minecraft:custom_name='{"text":"Чертёж: Пепельный ритуал","color":"gold","italic":false}',minecraft:lore=['{"text":"Чернит + стержень + слеза гаста зовут Пепельного Стража.","color":"gray","italic":false}']] 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.0
tellraw @s {"text":"Куплен чертёж Пепельного ритуала. Без него Страж не придёт.","color":"gold"}
