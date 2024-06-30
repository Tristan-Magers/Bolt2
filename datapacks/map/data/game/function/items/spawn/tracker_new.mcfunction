#place tracker
execute at @s run summon marker ~ ~ ~ {Tags:["spawn_tracker"]}
execute at @s run tp @e[tag=spawn_tracker,type=marker,tag=!old,sort=nearest,limit=1] @s
scoreboard players operation @e[tag=spawn_tracker,type=marker,tag=!old,sort=nearest,limit=1] ID += @s ID
tag @e[tag=spawn_tracker,type=marker,tag=!old,sort=nearest,limit=1] add old