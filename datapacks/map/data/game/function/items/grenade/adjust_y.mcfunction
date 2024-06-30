execute as @s[scores={mot_y=1..}] at @s run tp @s ~ ~0.02 ~
execute as @s[scores={mot_y=..-1}] at @s run tp @s ~ ~-0.02 ~

scoreboard players remove @s[scores={mot_y=1..}] mot_y 1
scoreboard players add @s[scores={mot_y=..-1}] mot_y 1

function game:items/grenade/adjust_check