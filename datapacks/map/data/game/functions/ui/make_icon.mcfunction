#
execute store result storage minecraft:macro input.y int 1 run scoreboard players get @s icon_y

#
execute store result storage minecraft:macro input.x int 1 run scoreboard players get @s icon_x

scoreboard players operation @s icon_x *= .n1 .num
scoreboard players remove @s icon_x 3

execute store result storage minecraft:macro input.x2 int 1 run scoreboard players get @s icon_x

scoreboard players add @s icon_x 3
scoreboard players operation @s icon_x *= .n1 .num

execute if entity @s[type=player] run function game:ui/make_icon_macro with storage minecraft:macro input