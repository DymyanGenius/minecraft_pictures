# Player-facing input layer: datapacks cannot read arbitrary chat text, so the pack uses clickable /trigger replies.
scoreboard players enable @a bv_menu
scoreboard players enable @a bv_reply
execute as @a[scores={bv_menu=1}] run function bigger_vanilla:menu/start_story
execute as @a[scores={bv_menu=2}] run function bigger_vanilla:market/spawn_archivist
execute as @a[scores={bv_menu=3}] run function bigger_vanilla:guide
execute as @a[scores={bv_reply=1}] run function bigger_vanilla:dialogue/reply_curious
execute as @a[scores={bv_reply=2}] run function bigger_vanilla:dialogue/reply_trade
execute as @a[scores={bv_reply=3}] run function bigger_vanilla:dialogue/reply_rude
scoreboard players set @a[scores={bv_menu=1..}] bv_menu 0
scoreboard players set @a[scores={bv_reply=1..}] bv_reply 0

# Starts the story once for every player.
execute as @a unless score @s bv_stage matches 1.. run function bigger_vanilla:story/00_awakening

# Main route: vanilla milestones become authored chapters, rituals, a mini-boss and a final choice.
execute as @a[scores={bv_stage=1}] if items entity @s container.* minecraft:ender_pearl run function bigger_vanilla:story/01_first_echo
execute as @a[scores={bv_stage=2}] at @s if block ~ ~-1 ~ minecraft:mossy_cobblestone if score @s bv_recipe_wisp matches 1.. if items entity @s container.* minecraft:amethyst_shard if items entity @s container.* minecraft:book run function bigger_vanilla:ritual/whispering_stone
execute as @a[scores={bv_stage=3}] at @s if dimension minecraft:the_nether run function bigger_vanilla:story/02_nether_gate
execute as @a[scores={bv_stage=4}] at @s if block ~ ~-1 ~ minecraft:blackstone if score @s bv_recipe_ember matches 1.. if items entity @s container.* minecraft:blaze_rod if items entity @s container.* minecraft:ghast_tear run function bigger_vanilla:ritual/ash_warden_start
execute as @a[scores={bv_stage=41}] at @s unless entity @e[tag=bv_ash_warden,distance=..64] run function bigger_vanilla:story/03_warden_defeated
execute as @a[scores={bv_stage=5}] if score @s bv_recipe_memory matches 1.. if items entity @s container.* minecraft:blaze_rod if items entity @s container.* minecraft:ancient_debris run function bigger_vanilla:story/04_forge_memory
execute as @a[scores={bv_stage=6}] if score @s bv_recipe_sky matches 1.. if items entity @s container.* minecraft:ender_eye run function bigger_vanilla:story/05_eye_of_route
execute as @a[scores={bv_stage=7}] at @s if dimension minecraft:the_end run function bigger_vanilla:story/06_last_sky
execute as @a[scores={bv_stage=8}] if entity @s[advancements={minecraft:end/kill_dragon=true}] run function bigger_vanilla:story/07_final_choice

# Optional secrets for players who explore modern vanilla content.
execute as @a[scores={bv_secret=0}] if items entity @s container.* minecraft:echo_shard run function bigger_vanilla:ritual/secret_echo
execute as @a[scores={bv_secret=1}] if items entity @s container.* minecraft:music_disc_5 run function bigger_vanilla:ritual/secret_disc

# Lightweight atmosphere by dimension plus a stronger aura around the Ash Warden trial.
execute as @a at @s if dimension minecraft:the_nether run particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.8 0.01 2 force @s
execute as @a at @s if dimension minecraft:the_end run particle minecraft:portal ~ ~1 ~ 0.7 0.7 0.7 0.02 3 force @s
execute as @e[tag=bv_ash_warden] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.45 0.8 0.45 0.02 8 force @a[distance=..24]
execute as @e[tag=bv_ash_warden] at @s run effect give @a[distance=..12] minecraft:darkness 3 0 true
