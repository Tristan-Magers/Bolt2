scoreboard players set @s[tag=!has_rank_v4] rank 500
tag @s add has_rank_v4

tp @s 243.50 -50.00 -226.99 -110 0

clear @s

tag @s remove hasflag
tag @s remove hasspawn

scoreboard players set @s ded -1
scoreboard players set @s respawn -1

scoreboard players add @s team_pref 0

scoreboard players add @s invul 0
scoreboard players add @s wall_invul 0

team leave @s

gamemode adventure @s

function game:menu/p_display/reset

scoreboard players set @s Leave 0

tag @s remove loading
tag @s remove playing