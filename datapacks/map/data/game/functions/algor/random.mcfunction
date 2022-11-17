tag @e remove random

tag @s add random

summon marker ~ ~ ~ {Tags:["random","temp"]}

scoreboard players set @e[tag=random] random 0

scoreboard players add @e[tag=random,limit=1,sort=random] random 1
scoreboard players add @e[tag=random,limit=1,sort=random] random 2
scoreboard players add @e[tag=random,limit=1,sort=random] random 4
scoreboard players add @e[tag=random,limit=1,sort=random] random 8
scoreboard players add @e[tag=random,limit=1,sort=random] random 16
scoreboard players add @e[tag=random,limit=1,sort=random] random 32
scoreboard players add @e[tag=random,limit=1,sort=random] random 64

kill @e[type=marker,tag=random,tag=temp]