advancement revoke @s everything

tag @s remove unlocked_all

tag @s add locked_1
tag @s add locked_2
tag @s add locked_3
tag @s add locked_4
tag @s add locked_5
tag @s add locked_6
tag @s add locked_7
tag @s add locked_8
tag @s add locked_9
tag @s add locked_10
tag @s add locked_11
tag @s add locked_12
tag @s add locked_13
tag @s add locked_14
tag @s add locked_15
tag @s add locked_16
tag @s add locked_17
tag @s add locked_18
tag @s add locked_19
tag @s add locked_20
tag @s add locked_22
tag @s add locked_23
tag @s add locked_24
tag @s add locked_25
tag @s add locked_26
tag @s add locked_27
tag @s add locked_28
tag @s add locked_29
tag @s add locked_30
tag @s add locked_31
tag @s add locked_32
tag @s add locked_33
tag @s add locked_34
tag @s add locked_35
tag @s add locked_36
tag @s add locked_37
tag @s add locked_38
tag @s add locked_39
tag @s add locked_40
tag @s add locked_41
tag @s add locked_42
tag @s add locked_43
tag @s add locked_44
tag @s add locked_45
tag @s add locked_46
tag @s add locked_48
tag @s add locked_49
tag @s add locked_50
tag @s add locked_51
tag @s add locked_52
tag @s add locked_53
tag @s add locked_54
tag @s add locked_55
tag @s add locked_58
tag @s add locked_59
tag @s add locked_60
tag @s add locked_61
tag @s add locked_62
tag @s add locked_63
tag @s add locked_64
tag @s add locked_65
tag @s add locked_66
tag @s add locked_67
tag @s add locked_68
tag @s add locked_69
tag @s add locked_70
tag @s add locked_71
tag @s add locked_72
tag @s add locked_73
tag @s add locked_74
tag @s add locked_75
tag @s add locked_76
tag @s add locked_77
tag @s add locked_78
tag @s add locked_79

scoreboard players set @s track_traps_killed 0
scoreboard players set @s track_lobby_targets 0
scoreboard players set @s track_total_deaths 0
scoreboard players set @s track_total_kills 0
scoreboard players set @s track_total_crates 0
scoreboard players set @s track_total_ctf_walls 0
scoreboard players set @s track_total_games 0
scoreboard players set @s track_walls_broken 0
scoreboard players set @s track_shot_head 0

scoreboard players set @s code_1 0
scoreboard players set @s code_2 0
scoreboard players set @s code_3 0
scoreboard players set @s code_4 0

scoreboard players set @s fish_fam 0

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

tag @s remove button_confirm

execute as @s[tag=lobby] run function game:bow_ui/make_page