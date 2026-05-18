scoreboard players set @s bv_stage 7
advancement grant @s only bigger_vanilla:story/epilogue
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
effect give @s minecraft:regeneration 45 1 true
title @s title {"text":"Ваниль стала больше","color":"green","bold":true}
title @s subtitle {"text":"Эпилог открыт","color":"gold"}
tellraw @s {"text":"Дракон пал. Это не конец: деревни, шахты, Незер и Край теперь звучат как главы одной истории. Спасибо за прохождение.","color":"gray"}
