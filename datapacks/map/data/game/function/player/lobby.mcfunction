# Bow displays in lobby display
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:bone_meal",Slot:7b}]},gamemode=adventure] run function game:player/inv_checks/no_bone_meal

# Lobby book
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:written_book",Slot:6b}]},gamemode=adventure] run function game:player/inv_checks/no_book

# Lobby actionbar
scoreboard players add @s lobby_text_time 1

scoreboard players set @s[gamemode=spectator] lobby_text_time 20

title @s[scores={team_pref=-1,lobby_text_time=1}] actionbar {"text":"Unjoined! (will spectate)","color":"gray"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team (infected or survivor)","color":"light_purple"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=1,lobby_text_time=1}] actionbar {"text":"Selected Infected Team","color":"red"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=2,lobby_text_time=1}] actionbar {"text":"Selected Survivor Team","color":"dark_aqua"}

execute unless score .mode_screen .data = .6 .num if score .mode_screen .data = .1 .num if score .ranked .data = .1 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team (uses matchmaking)","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num if score .mode_screen .data = .1 .num if score .ranked .data = .0 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num unless score .mode_screen .data = .1 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num run title @s[scores={team_pref=1,lobby_text_time=1}] actionbar {"text":"Selected Red Team","color":"red"}
execute unless score .mode_screen .data = .6 .num run title @s[scores={team_pref=2,lobby_text_time=1}] actionbar {"text":"Selected Blue Team","color":"dark_aqua"}

scoreboard players set @s[scores={lobby_text_time=100..}] lobby_text_time 0

# Flag click
tag @s remove holding_flag
tag @s remove holding_music
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{flag:1b}}}}] add holding_flag
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{music:1b}}}}] add holding_music

tag @s[tag=holding_flag,scores={click=1..}] add no_switch_text
scoreboard players add @s[tag=holding_flag,scores={click=1..}] team_pref 1
scoreboard players set @s[tag=holding_flag,scores={click=1..,team_pref=3..}] team_pref -1
tag @s[tag=holding_flag,scores={click=1..}] add click_select
item replace entity @s[tag=holding_flag,scores={click=1..}] hotbar.1 with air

playsound minecraft:block.azalea_leaves.hit master @s[tag=holding_music,scores={click=1..}] ~ ~ ~ 1 2
tag @s[tag=no_music,tag=holding_music,scores={click=1..}] add hear_music
stopsound @s[tag=!no_music,tag=holding_music,scores={click=1..}] * minecraft:music_disc.cat
stopsound @s[tag=!no_music,tag=holding_music,scores={click=1..}] * minecraft:music_disc.stal
tag @s[tag=!no_music,tag=holding_music,scores={click=1..}] add no_music
tag @s[tag=holding_music,scores={click=1..}] add click_select
item replace entity @s[tag=holding_music,scores={click=1..}] hotbar.2 with air

tag @s[tag=hear_music] remove no_music
tag @s remove hear_music

# Music
scoreboard players set @s[tag=no_music] music -1000
scoreboard players set @s[tag=!no_music,scores={music=..-200}] music 0
scoreboard players set @s[tag=!no_music,scores={music=1404..}] music 0
scoreboard players add @s[tag=!no_music] music 1
execute as @s[scores={music=..-1}] run stopsound @s * minecraft:music_disc.cat
execute as @s[scores={music=10}] run stopsound @s * minecraft:music_disc.cat
execute as @s[scores={music=10}] run playsound minecraft:music_disc.cat master @s ~ ~ ~ 1 1 0

# Carrot on a stick correct (team select flag)
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] run function game:player/inv_checks/no_carrot_on_a_stick
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b}]},gamemode=adventure] run function game:player/inv_checks/no_carrot_on_a_stick

scoreboard players set @s click 0

# Chair text
tag @s remove near_chair
execute at @s if entity @e[type=pig,tag=chair,distance=..2] run tag @s add near_chair

title @s[tag=near_chair,tag=!nc2] actionbar {"text":"Click chairs to sit","color":"gold"}
scoreboard players set @s[tag=near_chair,tag=!nc2] lobby_text_time 20

tag @s[tag=near_chair] add nc2
tag @s[tag=!near_chair] remove nc2

# Ted text
tag @s remove near_ted
execute at @s if entity @e[type=sheep,tag=ted,distance=..1.7] run tag @s add near_ted
execute at @s if entity @e[type=sheep,tag=ted,distance=..3.5] as @e[type=sheep,tag=ted,distance=..2.2] at @s run tp @s ~ ~ ~ facing entity @p 

title @s[tag=near_ted,tag=!nt2] actionbar {"text":"Hey kid, want to play some poker?","color":"dark_purple"}
scoreboard players set @s[tag=near_ted,tag=!nt2] lobby_text_time 20

tag @s[tag=near_ted] add nt2
tag @s[tag=!near_ted] remove nt2

# Ted text
tag @s remove near_cards
execute at @s if entity @e[type=item_display,tag=cards,distance=..1.4] run tag @s add near_cards
scoreboard players set @s[tag=near_cards,tag=!near_cards2] lobby_text_time 20
execute as @s[tag=near_cards,tag=!near_cards2,tag=locked_38] run function game:player/unlock/38
title @s[tag=near_cards,tag=!near_cards2] actionbar {"text":"The deck has three cards."}

tag @s[tag=near_cards] add near_cards2
tag @s[tag=!near_cards] remove near_cards2