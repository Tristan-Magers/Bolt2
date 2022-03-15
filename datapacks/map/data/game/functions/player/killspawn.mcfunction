scoreboard players operation @e[tag=spawn] ID -= @s ID

tellraw @s[tag=hasspawn] [{"text":"[ Spawn Point Removed ]","color":"gray"},{"text":"","color":"dark_green"}]

kill @e[tag=spawn,scores={ID=0}]
tag @s remove hasspawn
tag @s remove spawn

scoreboard players operation @e[tag=spawn] ID += @s ID