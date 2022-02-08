execute as @s at @s run scoreboard players operation @e[tag=spawn] ID -= @s ID

execute as @s at @s if entity @e[tag=spawn,scores={ID=0},limit=1] run effect give @s resistance 1 20 true
execute as @s at @s if entity @e[tag=spawn,scores={ID=0},limit=1] run effect give @s blindness 1 20 true
execute as @s at @s if entity @e[tag=spawn,scores={ID=0},limit=1] run tag @s remove hasspawn
execute as @s at @s if entity @e[tag=spawn,scores={ID=0},limit=1] run scoreboard players set @s respawn 0

execute as @s at @s run tp @e[tag=spawn,scores={ID=0},limit=1]
execute as @s at @s run kill @e[tag=spawn,scores={ID=0}]

execute as @s at @s run scoreboard players operation @e[tag=spawn] ID += @s ID