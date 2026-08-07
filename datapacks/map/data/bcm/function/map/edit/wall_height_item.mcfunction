# tags
tag @s add init
tag @s add map_editor
tag @s add render_box
tag @s add wall_height

# relative
data modify storage bcm tmp.x set value "0"
data modify storage bcm tmp.y set from storage bcm map.max_wall_height
data modify storage bcm tmp.z set value "0"
function bcm:util/xyz_string with storage bcm tmp
function bcm:util/tp with storage bcm tmp
data remove storage bcm tmp