scoreboard players add @s mot_x 0
scoreboard players add @s mot_y 0
scoreboard players add @s mot_z 0

execute as @s[tag=!stuck] at @s run function game:items/grenade/adjust_check
execute as @s[tag=!stuck] at @s run function game:items/grenade/adjust_x
execute as @s[tag=!stuck] at @s run function game:items/grenade/adjust_y
execute as @s[tag=!stuck] at @s run function game:items/grenade/adjust_z

execute unless entity @s[scores={mot_x=0,mot_y=0,mot_z=0}] run function game:items/grenade/adjust