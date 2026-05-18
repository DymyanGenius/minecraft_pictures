scoreboard players set @s bv_menu 0
playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 0.8 1.1
particle minecraft:happy_villager ~ ~1 ~ 0.7 1 0.7 0.05 35 force @s
summon minecraft:villager ~ ~ ~ {Tags:["bv_recipe_seller","bv_talker"],VillagerData:{type:"minecraft:plains",profession:"minecraft:librarian",level:5},CustomName:'{"text":"Архивариус Чертежей","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Offers:{Recipes:[{buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:knowledge_book",count:1},maxUses:999999,rewardExp:0b},{buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:paper",count:1},maxUses:999999,rewardExp:0b},{buy:{id:"minecraft:emerald",count:7},sell:{id:"minecraft:book",count:1},maxUses:999999,rewardExp:0b},{buy:{id:"minecraft:emerald",count:9},sell:{id:"minecraft:ender_eye",count:1},maxUses:999999,rewardExp:0b}]}}
tellraw @s {"text":"Архивариус Чертежей появился. Его торговое окно показывает идею торговли рецептами, а настоящая разблокировка идёт через команды покупки ниже, чтобы datapack мог гарантированно вести сюжет.","color":"gray"}
function bigger_vanilla:dialogue/reply_trade
