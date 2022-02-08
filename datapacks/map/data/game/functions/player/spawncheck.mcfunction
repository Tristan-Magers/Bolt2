scoreboard players operation @e[tag=spawn] ID -= @s ID
execute if entity @e[tag=spawn,scores={ID=0}] run tag @s add hasspawn
execute unless entity @e[tag=spawn,scores={ID=0}] run tellraw @s[tag=hasspawn] {"text":"[ SPAWN POINT KILLED ]"}
execute unless entity @e[tag=spawn,scores={ID=0}] run tag @s remove hasspawn
scoreboard players operation @e[tag=spawn] ID += @s ID