execute store result score @s bv_paid run clear @s minecraft:emerald 0
execute if score @s bv_paid matches 1.. run clear @s minecraft:emerald 1
execute if score @s bv_paid matches 1.. run recipe give @s bigger_vanilla:bv_stick
execute if score @s bv_paid matches 1.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
execute if score @s bv_paid matches 1.. run tellraw @s [{"text":"Открыт нестандартный рецепт: ","color":"green"},{"text":"Палка, связанная нитью","color":"gray","bold":true},{"text":". Теперь он доступен в книге рецептов.","color":"green"}]
execute if score @s bv_paid matches 1.. run kill @e[tag=bv_offer_bv_stick,distance=..8,limit=1,sort=nearest]
execute unless score @s bv_paid matches 1.. run tellraw @s {"text":"Нужно 1 изумрудов для рецепта: Палка, связанная нитью.","color":"red"}
