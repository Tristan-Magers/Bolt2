tp @s 243.50 -50.00 -226.99 -110 0

clear @s

tag @s remove hasflag
tag @s remove hasspawn

scoreboard players set @s ded -1
scoreboard players set @s respawn -1

scoreboard players add @s team_pref 0

team leave @s

gamemode adventure @s