# get pos
execute store result storage bcm macro.x int 1 run data get entity @s Pos[0]
execute store result storage bcm macro.y int 1 run data get entity @s Pos[1]
execute store result storage bcm macro.z int 1 run data get entity @s Pos[2]

# stringify
function bcm:util/xyz_string_abs with storage bcm macro

# save to array
$data modify storage bcm maps[{registry:{mapName:"$(mapName)"}}].map.load_point set from storage bcm tmp.pos
data remove storage bcm tmp

# tellraw @a "set load point"