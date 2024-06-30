#
tag @e[tag=rank_dummy] add old
summon minecraft:armor_stand ~ ~ ~ {Tags:["rank_dummy","kill"]}

execute as @s[scores={team_pref=2}] run tag @e[tag=rank_dummy,tag=!old] add blue_team
execute as @s[scores={team_pref=1}] run tag @e[tag=rank_dummy,tag=!old] add red_team

scoreboard players operation @e[tag=rank_dummy,tag=!old] rank_real = @s rank
scoreboard players operation @e[tag=rank_dummy,tag=!old] ID = @s ID