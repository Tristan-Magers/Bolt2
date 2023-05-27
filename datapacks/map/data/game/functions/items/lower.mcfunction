scoreboard players add @s lower 1
say lowering

execute as @s at @s if block ~ ~ ~ air if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ air run tp @s ~ ~-0.5 ~
execute as @s[scores={lower=..100}] at @s if block ~ ~-1 ~ air run function game:items/lower