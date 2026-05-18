execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 12.. run clear @s minecraft:emerald 12
execute if score @s bv_paid matches 12.. run recipe give @s bigger_vanilla:bv_golden_apple
execute if score @s bv_paid matches 12.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 12.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Медовое золотое яблоко","color":"gold","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 12.. run tag @e[tag=bv_offer_bv_golden_apple,distance=..8,limit=1,sort=nearest] remove bv_offer_bv_golden_apple
execute if score @s bv_paid matches 12.. if entity @e[tag=bv_random_recipe_seller,distance=..8,limit=1,sort=nearest] run kill @e[tag=bv_random_recipe_seller,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 12.. run tellraw @s {"text":"Нужно 12 изумрудов для рецепта: Медовое золотое яблоко.","color":"red"}
