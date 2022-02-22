scoreboard players operation @e[tag=spawn] ID -= @s ID
kill @e[tag=spawn,scores={ID=0}]
tag @a remove hasspawn
tag @a remove spawn
tellraw @s [{"text":"[ Spawn Point Removed ]","color":"gray"},{"text":"","color":"dark_green"}]
scoreboard players operation @e[tag=spawn] ID += @s ID