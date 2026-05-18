# Starts the story once for every player.
execute as @a unless score @s bv_stage matches 1.. run function bigger_vanilla:story/00_awakening

# Story progress is driven by vanilla milestones, so the pack remains survival-friendly.
execute as @a[scores={bv_stage=1}] if items entity @s container.* minecraft:ender_pearl run function bigger_vanilla:story/01_first_echo
execute as @a[scores={bv_stage=2}] at @s if dimension minecraft:the_nether run function bigger_vanilla:story/02_nether_gate
execute as @a[scores={bv_stage=3}] if items entity @s container.* minecraft:blaze_rod if items entity @s container.* minecraft:ancient_debris run function bigger_vanilla:story/03_forge_memory
execute as @a[scores={bv_stage=4}] if items entity @s container.* minecraft:ender_eye run function bigger_vanilla:story/04_eye_of_route
execute as @a[scores={bv_stage=5}] at @s if dimension minecraft:the_end run function bigger_vanilla:story/05_last_sky
execute as @a[scores={bv_stage=6}] if entity @s[advancements={minecraft:end/kill_dragon=true}] run function bigger_vanilla:story/06_epilogue

# Lightweight atmosphere by dimension.
execute as @a at @s if dimension minecraft:the_nether run particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.8 0.01 2 force @s
execute as @a at @s if dimension minecraft:the_end run particle minecraft:portal ~ ~1 ~ 0.7 0.7 0.7 0.02 3 force @s
