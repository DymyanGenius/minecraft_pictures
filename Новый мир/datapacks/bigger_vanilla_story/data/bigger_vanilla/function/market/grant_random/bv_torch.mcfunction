execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 2.. run clear @s minecraft:emerald 2
execute if score @s bv_paid matches 2.. run recipe give @s bigger_vanilla:bv_torch
execute if score @s bv_paid matches 2.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 2.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Факел с кремневой искрой","color":"gold","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 2.. run kill @e[tag=bv_offer_bv_torch,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 2.. run tellraw @s {"text":"Нужно 2 изумрудов для рецепта: Факел с кремневой искрой.","color":"red"}
