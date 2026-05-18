execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 4.. run clear @s minecraft:emerald 4
execute if score @s bv_paid matches 4.. run recipe give @s bigger_vanilla:bv_boat
execute if score @s bv_paid matches 4.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 4.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Лодка на прошитых бортах","color":"blue","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 4.. run kill @e[tag=bv_offer_bv_boat,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 4.. run tellraw @s {"text":"Нужно 4 изумрудов для рецепта: Лодка на прошитых бортах.","color":"red"}
