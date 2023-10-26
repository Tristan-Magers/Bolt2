#
summon marker ~ ~ ~ {Tags:["ui_icon"],CustomName:'[{"translate":"\\u0001","font":"map"},{"translate":"space.0","font":"space"}]'}

#
execute store result score @s icon_y run data get entity @s Pos[0] 222.8
execute store result score @s icon_x run data get entity @s Pos[2] 222.8

scoreboard players operation @s icon_x /= .100 .num
scoreboard players operation @s icon_y /= .100 .num

#scoreboard players remove @s icon_y 1

scoreboard players add @s icon_x 34
scoreboard players add @s icon_y 198
scoreboard players operation @s icon_x *= .n1 .num

scoreboard players set @s[scores={icon_y=..0}] icon_y 0
scoreboard players set @s[scores={icon_y=100..}] icon_y 100

#scoreboard players set @s icon_x -160

function game:ui/make_icon

#
bossbar set minecraft:minimap name {"selector":"@e[tag=ui_icon]","separator":""}

kill @e[tag=ui_icon,type=marker]