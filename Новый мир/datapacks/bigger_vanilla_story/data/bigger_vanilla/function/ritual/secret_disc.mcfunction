scoreboard players set @s bv_secret 2
playsound minecraft:music_disc.5 master @s ~ ~ ~ 0.7 1
effect give @s minecraft:luck 300 0 true
tellraw @s {"text":"Секрет завершен: пластинка не играет музыку — она хранит дыхание того, кто первым прошел этот путь. Удача мира на твоей стороне.","color":"dark_aqua","italic":true}
