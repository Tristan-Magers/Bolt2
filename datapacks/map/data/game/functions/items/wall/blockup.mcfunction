tag @s add me
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:gravel replace air
execute as @s at @s run execute as @e[distance=..1.5,tag=!me] at @s if block ~ ~ ~ minecraft:gravel run tp @s ~ ~1 ~
execute as @s at @s run tp @s ~ ~1 ~
playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.2 1
execute as @s at @s unless block ~ ~ ~ air run kill @s
tag @s remove me