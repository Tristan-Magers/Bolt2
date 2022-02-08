execute as @s at @s run function game:items/lower

execute as @s at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run kill @s
execute as @s at @s if block ~ ~ ~ minecraft:red_stained_glass_pane run kill @s

execute as @s at @s if block ~-1 ~0.5 ~ air unless block ~1 ~0.5 ~ air run tp @s ~.2 ~ ~ 0 0
execute as @s at @s if block ~1 ~0.5 ~ air unless block ~-1 ~0.5 ~ air run tp @s ~-.2 ~ ~ 0 0

execute as @s at @s if block ~ ~0.5 ~-1 air unless block ~ ~0.5 ~1 air run tp @s ~ ~ ~.2 0 0
execute as @s at @s if block ~ ~0.5 ~1 air unless block ~ ~0.5 ~-1 air run tp @s ~ ~ ~-.2 0 0

execute as @s[type=slime] at @s run tp @s ~ ~ ~ facing entity @p[scores={placeSlime=1..}]
execute as @s[type=magma_cube] at @s run tp @s ~ ~ ~ facing entity @p[scores={placeMagma=1..}]