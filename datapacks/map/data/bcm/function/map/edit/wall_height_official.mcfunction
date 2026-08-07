# tags
tag @s add init
tag @s add map_editor
tag @s add render_box
tag @s add wall_height

# go to build origin
data modify storage bcm tmp.pos set from storage item_structures save.origin
function bcm:util/tp with storage bcm tmp

# go to max wall height in build then translate to editor
data modify storage bcm tmp.x set value "~"
data modify storage bcm tmp.y set from storage bcm map.max_wall_height
data modify storage bcm tmp.z set value "~"
function bcm:util/xyz_string_abs with storage bcm tmp
execute at @s run function bcm:map/edit/tp_convert with storage bcm tmp
data remove storage bcm tmp