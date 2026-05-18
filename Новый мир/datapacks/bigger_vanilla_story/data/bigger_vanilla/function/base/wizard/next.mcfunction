scoreboard players add @s bv_wizard_stage 1
playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 0.8 0.55
execute if score @s bv_wizard_stage matches 1 run function bigger_vanilla:base/wizard/line_1
execute if score @s bv_wizard_stage matches 2 run function bigger_vanilla:base/wizard/line_2
execute if score @s bv_wizard_stage matches 3 run function bigger_vanilla:base/wizard/line_3
execute if score @s bv_wizard_stage matches 4 run function bigger_vanilla:base/wizard/line_4
execute if score @s bv_wizard_stage matches 5 run function bigger_vanilla:base/wizard/line_5
execute if score @s bv_wizard_stage matches 6.. run function bigger_vanilla:base/wizard/finish
