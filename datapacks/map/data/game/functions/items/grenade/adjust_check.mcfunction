tag @s remove stuck

execute at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..2] run tag @s add stuck

tag @s remove in

execute at @s[tag=!stuck] positioned ~ ~1.65 ~ positioned ~0.125 ~0.125 ~0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~0.125 ~0.125 ~-0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~0.125 ~-0.125 ~0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~-0.125 ~0.125 ~0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~0.125 ~-0.125 ~-0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~-0.125 ~0.125 ~-0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~-0.125 ~-0.125 ~0.125 run function game:physics/inblock
execute at @s[tag=in] positioned ~ ~1.65 ~ positioned ~-0.125 ~-0.125 ~-0.125 run function game:physics/inblock

tag @s[tag=!in] add stuck

scoreboard players set @s[tag=stuck] mot_x 0
scoreboard players set @s[tag=stuck] mot_y 0
scoreboard players set @s[tag=stuck] mot_z 0