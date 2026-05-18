tag @s add bv_offer_bv_chest
data merge entity @s {CustomName:'{"text":"Житель-чертежник: Сундук на распорках","color":"aqua","bold":true}',CustomNameVisible:1b,Offers:{Recipes:[{buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:paper",count:1},maxUses:999999,rewardExp:0b}]}}
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.8 0.5 0.04 20 force @a[distance=..16]
