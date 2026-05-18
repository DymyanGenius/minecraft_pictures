tag @s add bv_offer_bv_spruce_planks
data merge entity @s {CustomName:'{"text":"Житель-чертежник: Еловые доски с угольной пропиткой","color":"dark_green","bold":true}',CustomNameVisible:1b,Offers:{Recipes:[{buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:paper",count:1},maxUses:999999,rewardExp:0b}]}}
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.8 0.5 0.04 20 force @a[distance=..16]
