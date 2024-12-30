advancement revoke @s everything

tag @s add locked_1
tag @s add locked_6
tag @s add locked_8
tag @s add locked_11
tag @s add locked_12
tag @s add locked_14
tag @s add locked_16
tag @s add locked_18
tag @s add locked_20
tag @s add locked_22
tag @s add locked_24
tag @s add locked_25
tag @s add locked_28
tag @s add locked_29
tag @s add locked_30
tag @s add locked_32
tag @s add locked_33
tag @s add locked_34
tag @s add locked_38
tag @s add locked_46
tag @s add locked_48
tag @s add locked_49
tag @s add locked_50
tag @s add locked_51
tag @s add locked_52
tag @s add locked_54
tag @s add locked_61
tag @s add locked_62
tag @s add locked_65
tag @s add locked_71
tag @s add locked_72
tag @s add locked_75
tag @s add locked_79

scoreboard players set @s track_lobby_targets 0
scoreboard players set @s track_total_deaths 0
scoreboard players set @s track_total_kills 0
scoreboard players set @s track_total_crates 0
scoreboard players set @s track_total_ctf_walls 0

tag @s remove play_ctf
tag @s remove play_inf
tag @s remove play_tar
tag @s remove play_tmi

tag @s remove play_map_tinyt
tag @s remove play_map_divide
tag @s remove play_map_hex
tag @s remove play_map_coves
tag @s remove play_map_towers
tag @s remove play_map_lighth
tag @s remove play_map_garden
tag @s remove play_map_valley
tag @s remove play_map_river

execute as @s[tag=lobby] run function game:bow_ui/make_page