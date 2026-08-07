execute store result score .x .calc run data get entity @s Pos[0]
execute store result score .z .calc run data get entity @s Pos[2]

execute if score .x .calc matches ..28 run tp @s 40 ~ ~
execute if score .z .calc matches ..28 run tp @s ~ ~ 40
execute if score .x .calc matches 484.. run tp @s 472 ~ ~
execute if score .z .calc matches 484.. run tp @s ~ ~ 472