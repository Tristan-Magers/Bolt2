# exclude generators outside save area
execute unless function bcm:map/area_check/save run return fail

# calculate relative pos
data remove storage bcm macro
execute store result score .x .calc run data get entity @s Pos[0]
execute store result score .y .calc run data get entity @s Pos[1]
execute store result score .z .calc run data get entity @s Pos[2]
execute store result storage bcm macro.x int 1 run scoreboard players operation .x .calc -= .x1 .calc
execute store result storage bcm macro.y int 1 run scoreboard players operation .y .calc -= .y1 .calc
execute store result storage bcm macro.z int 1 run scoreboard players operation .z .calc -= .z1 .calc
function bcm:util/xyz_string with storage bcm macro

# get generator settings
execute store result storage bcm tmp.generator_duration short 1 run scoreboard players get @s bcm_generator_time
execute store result storage bcm tmp.generator_warmup short 1 run scoreboard players get @s bcm_generator_warmup

# get rotation
execute store result storage bcm tmp.rotation float 1 run data get entity @s Rotation[0]

# save to array
data modify storage bcm map.generators append from storage bcm tmp
data remove storage bcm tmp