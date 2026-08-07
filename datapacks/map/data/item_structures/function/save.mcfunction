execute store result score #x1 vect_x run data get entity @e[tag=start_point,limit=1] Pos[0]
execute store result score #system vect_x run data get entity @e[tag=end_point,limit=1] Pos[0]
scoreboard players operation #system vect_x -= #x1 vect_x

execute if score #system vect_x matches ..0 run scoreboard players operation #x1 vect_x += #system vect_x
execute if score #system vect_x matches ..0 run scoreboard players operation #system vect_x *= .n1 .num

execute store result score #y1 vect_y run data get entity @e[tag=start_point,limit=1] Pos[1]
scoreboard players add #y1 vect_y 1
execute store result score #system vect_y run data get entity @e[tag=end_point,limit=1] Pos[1]
scoreboard players add #system vect_y 1
scoreboard players operation #system vect_y -= #y1 vect_y

execute if score #system vect_y matches ..0 run scoreboard players operation #y1 vect_y += #system vect_y
execute if score #system vect_y matches ..0 run scoreboard players operation #system vect_y *= .n1 .num

execute store result score #z1 vect_z run data get entity @e[tag=start_point,limit=1] Pos[2]
execute store result score #system vect_z run data get entity @e[tag=end_point,limit=1] Pos[2]
scoreboard players operation #system vect_z -= #z1 vect_z

execute if score #system vect_z matches ..0 run scoreboard players operation #z1 vect_z += #system vect_z
execute if score #system vect_z matches ..0 run scoreboard players operation #system vect_z *= .n1 .num

scoreboard players add #system vect_x 1
scoreboard players add #system vect_y 1
scoreboard players add #system vect_z 1
summon marker ~ ~ ~ {Tags:["positioner"]}
execute store result entity @e[tag=positioner,limit=1] Pos[0] double 1 run scoreboard players get #x1 vect_x
execute store result entity @e[tag=positioner,limit=1] Pos[1] double 1 run scoreboard players get #y1 vect_y
execute store result entity @e[tag=positioner,limit=1] Pos[2] double 1 run scoreboard players get #z1 vect_z

execute at @e[tag=positioner] run function item_structures:zprivate/save
kill @e[tag=positioner]