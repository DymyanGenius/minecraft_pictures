execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 3.. run clear @s minecraft:emerald 3
execute if score @s bv_paid matches 3.. run recipe give @s bigger_vanilla:bv_chest
execute if score @s bv_paid matches 3.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 3.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Сундук на распорках","color":"aqua","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 3.. run kill @e[tag=bv_offer_bv_chest,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 3.. run tellraw @s {"text":"Нужно 3 изумрудов для рецепта: Сундук на распорках.","color":"red"}
