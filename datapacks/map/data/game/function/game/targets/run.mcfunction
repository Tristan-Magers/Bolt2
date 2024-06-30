tag @e[tag=target_marker,type=marker] remove taken
execute as @e[tag=target_marker,type=marker] at @s unless block ~ ~ ~ air run tag @s add taken

scoreboard players set .targets .data 0
execute as @e[tag=target_marker,type=marker,tag=taken] run scoreboard players add .targets .data 1

execute if score .targets .data matches 2..19 run function game:items/target/spawn

execute as @e[tag=target_marker,type=marker,tag=taken] at @s unless entity @p[gamemode=!spectator,distance=..60] run setblock ~ ~ ~ air