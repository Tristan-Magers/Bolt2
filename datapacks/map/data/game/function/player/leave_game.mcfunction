#
scoreboard players set @s[scores={leave_potion=1..}] team_pref -1
execute as @s[scores={leave_potion=1..},tag=kicked] at @s run tellraw @a [{"selector":"@s"},{"text":" left due to being afk","color":"white"}]
execute as @s[scores={leave_potion=1..},tag=!kicked] at @s run tellraw @a [{"selector":"@s"},{"text":" left the arena","color":"white"}]
tag @s remove kicked

#ID
scoreboard players add @s ID 0

execute if entity @s[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @s[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

#
#execute as @s[tag=!new_player] run summon block_display 244 -35 -225 {teleport_duration:60,Rotation:[-115F,25F],Tags:["intro","new"]}
#execute as @s[tag=!new_player] run scoreboard players operation @e[tag=intro,tag=new,limit=1] ID = @s ID
execute as @s[tag=!new_player] run gamemode spectator
execute as @s[tag=!new_player] run tag @s add intro_cutscene
scoreboard players set @s[tag=!new_player,tag=!new_p_text] team_pref -1
#execute as @s[tag=!new_player] run spectate @e[tag=intro,tag=new,limit=1]
tag @e[tag=intro] remove new
tag @s add new_player

# Leave potion reset
clear @s minecraft:glass_bottle
scoreboard players set @s leave_potion 0

#
scoreboard players add @s music 0
scoreboard players set @s[scores={music=9..}] music 0

#
scoreboard players add @s rank 0
tag @s[scores={rank=..0}] remove has_rank_v30

scoreboard players add @s team_pref 0

execute as @s[tag=!has_rank_v30] run function game:player/lock_all

scoreboard players set @s[tag=!has_rank_v30] rank 500
scoreboard players set @s[tag=!has_rank_v30] win_streak -2
scoreboard players set @s[tag=!has_rank_v30] team_pref 0
tag @s add has_rank_v30

tp @s[tag=!intro_cutscene] 243.50 -50.00 -245.5 -64.8 -5.5

clear @s

execute as @s[tag=lobby,tag=has_bow_ui] run function game:bow_ui/make_page

tag @s remove hasflag
tag @s remove hasspawn

scoreboard players set @s ded -1
scoreboard players set @s respawn -1

scoreboard players add @s invul 0
scoreboard players add @s wall_invul 0

scoreboard players set @s blind -1
scoreboard players set @s blind_new -1

team leave @s

gamemode adventure @s[tag=!intro_cutscene]

execute as @s[tag=!intro_cutscene] run function game:menu/p_display/reset_player

scoreboard players set @s Leave 0

effect clear @s
tag @s remove has_effects

tag @s remove loading
tag @s remove playing

tag @s remove item_minion
tag @s remove item_boost
tag @s remove dark_immune
tag @s remove more_armor
tag @s remove item_acid

tag @s remove dark

tag @s remove is_spectating

tag @s remove has_bow_ui

scoreboard players add @s bow_texture 0

scoreboard players set @s crossbowTime 1

scoreboard players set @s drop_egg_generic 0
scoreboard players set @s drop_creeper 0
scoreboard players set @s drop_snowball 0
scoreboard players set @s drop_silver 0
scoreboard players set @s drop_slime 0
scoreboard players set @s drop_magma 0
scoreboard players set @s drop_map 0
scoreboard players set @s drop_scrap 0
scoreboard players set @s drop_egg 0
scoreboard players set @s drop_turret 0

#
stopsound @s