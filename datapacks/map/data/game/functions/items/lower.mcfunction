scoreboard players add @s lower 1
# say lowering

execute as @s at @s if block ~ ~ ~ #game:lower if block ~ ~-1 ~ #game:lower run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #game:lower run tp @s ~ ~-0.5 ~
execute as @s[scores={lower=..100}] at @s if block ~ ~-1 ~ #game:lower run function game:items/lower