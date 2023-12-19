execute at @s run function game:items/lower
execute at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.6 ~ air run tp @s ~ ~0.6 ~
execute at @s run fill ~ ~ ~ ~ ~ ~ gravel replace air
kill @s