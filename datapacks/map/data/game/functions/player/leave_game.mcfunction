#ID
scoreboard players add @s ID 0

execute if entity @s[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @s[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

#
scoreboard players add @s team_pref 0

scoreboard players set @s[tag=!has_rank_v7] rank 500
tag @s add has_rank_v7

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

function game:menu/p_display/alert_above_slots
function game:menu/p_display/reset

scoreboard players set @s Leave 0

effect clear @s

tag @s remove loading
tag @s remove playing

tag @s remove item_minion
tag @s remove item_boost
tag @s remove dark_immune
tag @s remove more_armor
tag @s remove item_acid

tag @s remove dark

scoreboard players add @s bow_texture 0