#
scoreboard players add @s lobby_text_time 1

title @s[scores={team_pref=-1,lobby_text_time=1}] actionbar {"text":"Unjoined! (will spectate)","color":"gray"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team (infected or survivor)","color":"light_purple"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=1,lobby_text_time=1}] actionbar {"text":"Selected Infected Team","color":"red"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=2,lobby_text_time=1}] actionbar {"text":"Selected Survivor Team","color":"dark_aqua"}

execute unless score .mode_screen .data = .6 .num if score .mode_screen .data = .0 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team (uses matchmaking)","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num unless score .mode_screen .data = .0 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num run title @s[scores={team_pref=1,lobby_text_time=1}] actionbar {"text":"Selected Red Team","color":"red"}
execute unless score .mode_screen .data = .6 .num run title @s[scores={team_pref=2,lobby_text_time=1}] actionbar {"text":"Selected Blue Team","color":"dark_aqua"}

scoreboard players set @s[scores={lobby_text_time=100..}] lobby_text_time 0