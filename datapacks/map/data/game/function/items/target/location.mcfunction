execute store result score @s random run random value 0..127

tag @e[tag=target_marker,type=marker] remove ideal
tag @e[tag=target_marker,type=marker] remove valid
tag @e[tag=target_marker,type=marker] remove bad
tag @e[tag=target_marker,type=marker] remove taken

execute as @e[tag=target_marker,type=marker] at @s unless block ~ ~ ~ air run tag @s add taken
execute as @e[tag=target_marker,type=marker] at @s if entity @a[distance=..8,gamemode=!spectator] run tag @s add bad
execute as @e[tag=target_marker,type=marker,scores={t2=1..}] run tag @s add bad
execute as @e[tag=target_marker,type=marker] at @s unless entity @a[distance=..15,gamemode=!spectator] if entity @a[distance=15..48,gamemode=!spectator] run tag @s add valid
execute if score @s random matches 41.. as @e[tag=target_marker,type=marker,tag=valid] at @s unless entity @e[distance=..7,tag=target_marker,type=marker,tag=taken] run tag @s add ideal
execute if score @s random matches ..40 as @e[tag=target_marker,type=marker,tag=valid] at @s if entity @e[distance=1.8..9,tag=target_marker,type=marker,tag=taken] run tag @s add ideal

tag @e[tag=target_marker,type=marker,tag=taken] remove bad
tag @e[tag=target_marker,type=marker,tag=bad] remove valid
tag @e[tag=target_marker,type=marker,tag=!valid] remove ideal

execute unless entity @e[tag=target_marker,type=marker,tag=!taken] run tag @s add fail_spot
execute if entity @e[tag=target_marker,type=marker,tag=!taken] run tp @s @e[tag=target_marker,type=marker,tag=!taken,limit=1,sort=random]
execute if entity @e[tag=target_marker,type=marker,tag=bad] run tp @s @e[tag=target_marker,type=marker,tag=bad,limit=1,sort=random]
execute if entity @e[tag=target_marker,type=marker,tag=valid] run tp @s @e[tag=target_marker,type=marker,tag=valid,limit=1,sort=random]
execute if entity @e[tag=target_marker,type=marker,tag=ideal] run tp @s @e[tag=target_marker,type=marker,tag=ideal,limit=1,sort=random]