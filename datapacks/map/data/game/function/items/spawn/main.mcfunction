data merge entity @s {Size:0,Silent:1,NoAI:1,Health:1}

execute as @s[tag=!new] at @s run function game:items/spawn/new

tag @s add new

team join noColBlue @s[type=slime]
team join noColRed @s[type=magma_cube]

attribute @s minecraft:armor base set 0

