execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 7.. run clear @s minecraft:emerald 7
execute if score @s bv_paid matches 7.. run recipe give @s bigger_vanilla:bv_iron_sword
execute if score @s bv_paid matches 7.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 7.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Клинок с кремневой закалкой","color":"white","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 7.. run tag @e[tag=bv_offer_bv_iron_sword,distance=..8,limit=1,sort=nearest] remove bv_offer_bv_iron_sword
execute if score @s bv_paid matches 7.. if entity @e[tag=bv_random_recipe_seller,distance=..8,limit=1,sort=nearest] run kill @e[tag=bv_random_recipe_seller,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 7.. run tellraw @s {"text":"Нужно 7 изумрудов для рецепта: Клинок с кремневой закалкой.","color":"red"}
