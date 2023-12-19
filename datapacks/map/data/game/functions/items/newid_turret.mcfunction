scoreboard players add .new ID.turret 1
scoreboard players operation @s ID.turret = .new ID.turret

#execute if score .new ID.turret > .stats .10000 run scoreboard players set .new ID.turret 0

tag @s add turret_id