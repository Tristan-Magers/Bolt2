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
tag @s[scores={click=1..}] add no_switch_text
scoreboard players add @s[scores={click=1..}] team_pref 1
scoreboard players set @s[scores={click=1..,team_pref=3..}] team_pref -1
clear @s[scores={click=1..}] carrot_on_a_stick

# Carrot on a stick correct (team select flag)
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] run function game:player/inv_checks/no_carrot_on_a_stick

scoreboard players set @s click 0