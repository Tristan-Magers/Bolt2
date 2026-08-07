
#execute at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0 0 0 0 1 force

execute store result score .x1 .calc run data get entity @s Pos[0] 10
execute store result score .y1 .calc run data get entity @s Pos[1] 10
execute store result score .z1 .calc run data get entity @s Pos[2] 10

execute at @s run tp @s ^ ^ ^-1
#execute at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0 0 0 0 1 force

execute store result score .x2 .calc run data get entity @s Pos[0] 10
execute store result score .y2 .calc run data get entity @s Pos[1] 10
execute store result score .z2 .calc run data get entity @s Pos[2] 10

scoreboard players operation .x3 .calc = .x1 .calc
scoreboard players operation .y3 .calc = .y1 .calc
scoreboard players operation .z3 .calc = .z1 .calc

scoreboard players operation .x3 .calc -= .x2 .calc
scoreboard players operation .y3 .calc -= .y2 .calc
scoreboard players operation .z3 .calc -= .z2 .calc
