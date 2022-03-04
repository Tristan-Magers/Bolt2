tag @s add me
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:gravel replace air

tag @e remove ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~ ~ ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~ ~0.9 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @e[tag=ingravel] at @s run tp @s ~ ~1 ~

tag @e remove ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~ ~ ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~ ~0.9 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me] at @s if block ~-0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @e[tag=ingravel] at @s run tp @s ~ ~1 ~

execute as @s at @s run tp @s ~ ~1 ~
playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.2 1
execute as @s at @s unless block ~ ~ ~ air run kill @s
tag @s remove me