execute as @s at @s positioned ^ ^ ^1.6 positioned ~ ~1.6 ~ run scoreboard players operation @e[type=creeper,limit=1,sort=nearest,tag=!old] ID = @s ID

execute if entity @s[team=red] run team join red @e[type=creeper,limit=1,sort=nearest,tag=!old]
execute if entity @s[team=blue] run team join blue @e[type=creeper,limit=1,sort=nearest,tag=!old]

tag @e[type=creeper] add trap