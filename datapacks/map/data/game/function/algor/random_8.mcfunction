tag @e[tag=!ran_mark,tag=random] remove random

tag @s add random

execute unless entity @e[tag=ran_mark] run summon marker ~ ~ ~ {Tags:["random","temp","ran_mark"]}

scoreboard players set @e[tag=random] random 0

scoreboard players add @e[tag=random,limit=1,sort=random] random 1
scoreboard players add @e[tag=random,limit=1,sort=random] random 2
scoreboard players add @e[tag=random,limit=1,sort=random] random 4

tag @e[tag=ran_mark] add kill