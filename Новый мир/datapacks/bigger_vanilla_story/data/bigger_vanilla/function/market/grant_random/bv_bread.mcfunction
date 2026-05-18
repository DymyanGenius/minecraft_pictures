execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 2.. run clear @s minecraft:emerald 2
execute if score @s bv_paid matches 2.. run recipe give @s bigger_vanilla:bv_bread
execute if score @s bv_paid matches 2.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 2.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Сладкий дорожный хлеб","color":"yellow","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 2.. run kill @e[tag=bv_offer_bv_bread,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 2.. run tellraw @s {"text":"Нужно 2 изумрудов для рецепта: Сладкий дорожный хлеб.","color":"red"}
