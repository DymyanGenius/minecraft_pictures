# Player-facing input layer: datapacks cannot read arbitrary chat text, so the pack uses clickable /trigger replies.
scoreboard players enable @a bv_menu
scoreboard players enable @a bv_reply
execute as @a[scores={bv_menu=1}] run function bigger_vanilla:menu/start_story
execute as @a[scores={bv_menu=2}] run function bigger_vanilla:market/spawn_archivist
execute as @a[scores={bv_menu=3}] run function bigger_vanilla:guide
execute as @a[scores={bv_menu=4}] run function bigger_vanilla:menu/close
execute as @a[scores={bv_menu=5}] run function bigger_vanilla:market/spawn_random_recipe_seller
execute as @a[scores={bv_menu=6}] run function bigger_vanilla:market/buy_random_offer
execute as @a[scores={bv_reply=1}] run function bigger_vanilla:dialogue/reply_curious
execute as @a[scores={bv_reply=2}] run function bigger_vanilla:dialogue/reply_trade
execute as @a[scores={bv_reply=3}] run function bigger_vanilla:dialogue/reply_rude
scoreboard players set @a[scores={bv_menu=1..}] bv_menu 0
scoreboard players set @a[scores={bv_reply=1..}] bv_reply 0

# No-chat fallback: drop the menu item-buttons if click events or /trigger are unavailable.
execute as @a[scores={bv_drop_start=1..}] run function bigger_vanilla:menu/start_story
execute as @a[scores={bv_drop_archivist=1..}] run function bigger_vanilla:market/spawn_archivist
execute as @a[scores={bv_drop_guide=1..}] run function bigger_vanilla:guide
execute as @a[scores={bv_drop_random=1..}] run function bigger_vanilla:market/spawn_random_recipe_seller
execute as @a[scores={bv_drop_buy=1..}] run function bigger_vanilla:market/buy_random_offer
execute as @a[scores={bv_drop_start=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..6]
execute as @a[scores={bv_drop_archivist=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:recovery_compass"}},distance=..6]
execute as @a[scores={bv_drop_guide=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}},distance=..6]
execute as @a[scores={bv_drop_random=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nautilus_shell"}},distance=..6]
execute as @a[scores={bv_drop_buy=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:music_disc_13"}},distance=..6]
scoreboard players set @a[scores={bv_drop_start=1..}] bv_drop_start 0
scoreboard players set @a[scores={bv_drop_archivist=1..}] bv_drop_archivist 0
scoreboard players set @a[scores={bv_drop_guide=1..}] bv_drop_guide 0
scoreboard players set @a[scores={bv_drop_random=1..}] bv_drop_random 0
scoreboard players set @a[scores={bv_drop_buy=1..}] bv_drop_buy 0


# Right-click routing: wizard advances prologue; ordinary recipe villagers sell their recipe.
execute as @a[scores={bv_wizard_talk=1..}] at @s if entity @e[tag=bv_evil_wizard,distance=..8] run function bigger_vanilla:base/wizard/next
execute as @a[scores={bv_wizard_talk=1..}] at @s unless entity @e[tag=bv_evil_wizard,distance=..8] if entity @e[tag=bv_recipe_villager,distance=..8] run function bigger_vanilla:market/buy_random_offer
scoreboard players set @a[scores={bv_wizard_talk=1..}] bv_wizard_talk 0

# Ordinary villagers become recipe sellers when players approach villages.
execute as @a at @s run function bigger_vanilla:market/villager/scan
# Sends new players to the wizard base before normal survival begins.
execute as @a unless score @s bv_intro matches 1.. run function bigger_vanilla:base/enter
execute as @a[scores={bv_intro=1,bv_wizard_stage=0}] at @s unless entity @e[tag=bv_evil_wizard,distance=..16] run function bigger_vanilla:base/enter

# Locks vanilla crafting once per player, then starts the story.
execute as @a unless score @s bv_rules matches 1.. run function bigger_vanilla:rules/lock_player

# Starts the story once for every player after the wizard releases them.
execute as @a[scores={bv_intro=9..}] unless score @s bv_stage matches 1.. run function bigger_vanilla:story/00_awakening

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

# Self-schedule keeps the datapack alive on servers where the tick tag is not firing.
schedule function bigger_vanilla:tick 1t replace
