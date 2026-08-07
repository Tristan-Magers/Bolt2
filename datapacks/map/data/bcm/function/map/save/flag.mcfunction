# calculate relative pos
data remove storage bcm macro
execute store result score .x .calc run data get entity @s Pos[0]
execute store result score .y .calc run data get entity @s Pos[1]
execute store result score .z .calc run data get entity @s Pos[2]
scoreboard players remove .y .calc 1
execute store result storage bcm macro.x int 1 run scoreboard players operation .x .calc -= .x1 .calc
execute store result storage bcm macro.y int 1 run scoreboard players operation .y .calc -= .y1 .calc
execute store result storage bcm macro.z int 1 run scoreboard players operation .z .calc -= .z1 .calc
function bcm:util/xyz_string with storage bcm macro

# save
$data modify storage bcm map.$(color)_flag set from storage bcm tmp.pos
data remove storage bcm tmp