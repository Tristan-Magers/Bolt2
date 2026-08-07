# absolute -> relative to build
data modify storage bcm macro.pos set from storage item_structures save.origin
function bcm:util/tp with storage bcm macro
execute store result storage bcm tmp.x int -1 run data get entity @s Pos[0]
execute store result storage bcm tmp.y int -1 run data get entity @s Pos[1]
execute store result storage bcm tmp.z int -1 run data get entity @s Pos[2]
function bcm:util/xyz_string with storage bcm tmp
data modify storage bcm abs_to_build.pos set from storage bcm tmp.pos
#tellraw @a ["abs to build: ",{nbt:"abs_to_build.pos",storage:"bcm"}]

# relative to build -> relative to copy
tp @s ~ ~ ~
execute store result storage bcm tmp.x int 1 run data get entity @s Pos[0]
execute store result storage bcm tmp.y int 1 run data get entity @s Pos[1]
execute store result storage bcm tmp.z int 1 run data get entity @s Pos[2]
function bcm:util/xyz_string with storage bcm tmp
data modify storage bcm build_to_copy.pos set from storage bcm tmp.pos
#tellraw @a ["build to copy: ",{nbt:"build_to_copy.pos",storage:"bcm"}]

# put it together: absolute -> relative to copy
tp @s 0 0 0
execute at @s run function bcm:util/tp with storage bcm abs_to_build
execute at @s run function bcm:util/tp with storage bcm build_to_copy
execute store result storage bcm tmp.x int 1 run data get entity @s Pos[0]
execute store result storage bcm tmp.y int 1 run data get entity @s Pos[1]
execute store result storage bcm tmp.z int 1 run data get entity @s Pos[2]
function bcm:util/xyz_string with storage bcm tmp
data modify storage bcm abs_to_rel.pos set from storage bcm tmp.pos
#tellraw @a ["abs to copy: ",{nbt:"abs_to_rel.pos",storage:"bcm"}]

# cleanup
data remove storage bcm tmp
data remove storage bcm macro
data remove storage bcm abs_to_build
data remove storage bcm build_to_copy
kill @s