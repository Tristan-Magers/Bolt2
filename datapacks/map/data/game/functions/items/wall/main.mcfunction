scoreboard players add @s timer 1
execute as @s at @s run data merge entity @s {Size:0,Silent:1,NoAI:1,Health:1}
effect give @s minecraft:resistance 100 10 true

execute as @s[scores={timer=1}] at @s run function game:items/lower

#height cap
execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..50] run scoreboard players set @s timer 30

#wall reset
#execute as @s[scores={timer=1}] at @s run fill ~ -60 ~ ~ 100 ~ air replace gravel

#fix wall
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel if block ~ ~-2 ~ gravel if block ~ ~-3 ~ gravel if block ~ ~-4 ~ gravel run scoreboard players set @s timer 30
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel if block ~ ~-2 ~ gravel if block ~ ~-3 ~ gravel run scoreboard players set @s timer 22
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel if block ~ ~-2 ~ gravel run scoreboard players set @s timer 15
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel run scoreboard players set @s timer 8

execute as @s[scores={timer=1}] at @s run function game:items/wall/blockup
execute as @s[scores={timer=5}] at @s run function game:items/wall/blockup
execute as @s[scores={timer=9}] at @s run function game:items/wall/blockup
execute as @s[scores={timer=13}] at @s run function game:items/wall/blockup
kill @s[scores={timer=13..}]