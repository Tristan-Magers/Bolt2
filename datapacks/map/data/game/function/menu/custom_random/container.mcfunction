scoreboard players set @a t1 0
scoreboard players set @a t2 0

tag @a remove error

execute positioned 234.32 -49.00 -223.08 as @a[distance=..12] store success score @s t1 run clear @s lime_dye
execute positioned 234.32 -49.00 -223.08 as @a[distance=..12] store success score @s t2 run clear @s brown_dye

scoreboard players set .check .calc 0
execute if entity @a[scores={t1=1..}] run scoreboard players set .check .calc 1
execute if entity @a[scores={t2=1..}] run scoreboard players set .check .calc 1
execute if score .delay_10 .timer matches 2 if score .check .calc matches 0 unless items block 235 -49 -226 container.* lime_dye run scoreboard players set .check .calc 1

execute if score .check .calc matches 1 run function game:menu/custom_random/check