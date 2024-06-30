scoreboard players remove @s zoomies 1

particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1 force

execute as @s[scores={zoomies=8}] at @s run playsound minecraft:entity.breeze.death master @s ~ ~ ~ 1 0
execute as @s[scores={zoomies=8}] at @s run playsound minecraft:entity.breeze.death master @s ~ ~ ~ 2 0