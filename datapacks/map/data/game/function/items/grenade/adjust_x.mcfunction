execute as @s[scores={mot_x=1..}] at @s run tp @s ~0.02 ~ ~
execute as @s[scores={mot_x=..-1}] at @s run tp @s ~-0.02 ~ ~

scoreboard players remove @s[scores={mot_x=1..}] mot_x 1
scoreboard players add @s[scores={mot_x=..-1}] mot_x 1

function game:items/grenade/adjust_check