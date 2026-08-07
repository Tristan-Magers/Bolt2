# return 1 = pos 1 unset
# return 2 = pos 2 unset
# return 3 = selected area

# don't change other render boxes
$tag @e[type=#bcm:place,tag=render_box,tag=$(type)] add correct_type

# set position
execute if entity @s[tag=pos1] as @e[type=marker,tag=correct_type,tag=pos1,tag=!init] run function bcm:place/delete
execute if entity @s[tag=pos2] as @e[type=marker,tag=correct_type,tag=pos2,tag=!init] run function bcm:place/delete
tag @s remove init

tp ~ ~ ~

execute unless entity @n[type=marker,tag=correct_type,tag=pos1] run return 1
execute unless entity @n[type=marker,tag=correct_type,tag=pos2] run return 2

# render structure bounding box
$execute unless entity @e[type=block_display,tag=render_box,tag=correct_type] run function bcm:render_box/summon {block:"$(block)",type:"$(type)"}

# start point (LNW corner)
execute store result storage bcm tmp.start.x double .01 store result score .x1 .calc run data get entity @n[type=marker,tag=correct_type,tag=pos1] Pos[0] 100
execute store result storage bcm tmp.start.y double .01 store result score .y1 .calc run data get entity @n[type=marker,tag=correct_type,tag=pos1] Pos[1] 100
execute store result storage bcm tmp.start.z double .01 store result score .z1 .calc run data get entity @n[type=marker,tag=correct_type,tag=pos1] Pos[2] 100
execute store result score .x2 .calc run data get entity @n[type=marker,tag=correct_type,tag=pos2] Pos[0] 100
execute store result score .y2 .calc run data get entity @n[type=marker,tag=correct_type,tag=pos2] Pos[1] 100
execute store result score .z2 .calc run data get entity @n[type=marker,tag=correct_type,tag=pos2] Pos[2] 100
execute if score .x1 .calc > .x2 .calc store result storage bcm tmp.start.x double .01 run scoreboard players operation .x1 .calc >< .x2 .calc
execute if score .y1 .calc > .y2 .calc store result storage bcm tmp.start.y double .01 run scoreboard players operation .y1 .calc >< .y2 .calc
execute if score .z1 .calc > .z2 .calc store result storage bcm tmp.start.z double .01 run scoreboard players operation .z1 .calc >< .z2 .calc
execute as @e[type=block_display,tag=correct_type] run function bcm:render_box/1 with storage bcm tmp.start
function bcm:util/xyz_string_abs with storage bcm tmp.start
$data modify storage bcm abs.$(type).start set from storage bcm tmp.pos

# size
scoreboard players add .x2 .calc 100
scoreboard players add .y2 .calc 100
scoreboard players add .z2 .calc 100
execute store result storage bcm tmp.size.x float .01 run scoreboard players operation .x2 .calc -= .x1 .calc
execute store result storage bcm tmp.size.y float .01 run scoreboard players operation .y2 .calc -= .y1 .calc
execute store result storage bcm tmp.size.z float .01 run scoreboard players operation .z2 .calc -= .z1 .calc
execute as @e[type=block_display,tag=correct_type,tag=!x] run data modify entity @s transformation.scale[0] set from storage bcm tmp.size.x
execute as @e[type=block_display,tag=correct_type,tag=!y] run data modify entity @s transformation.scale[1] set from storage bcm tmp.size.y
execute as @e[type=block_display,tag=correct_type,tag=!z] run data modify entity @s transformation.scale[2] set from storage bcm tmp.size.z
execute as @e[type=block_display,tag=correct_type,tag=2] at @s run function bcm:render_box/2 with storage bcm tmp.size

# move display origin to center of face then translate back, to decrease average distance to players
execute store result storage bcm tmp.center.x float .5 run data get storage bcm tmp.size.x
execute store result storage bcm tmp.center.y float .5 run data get storage bcm tmp.size.y
execute store result storage bcm tmp.center.z float .5 run data get storage bcm tmp.size.z
execute as @e[type=block_display,tag=correct_type] at @s run function bcm:render_box/center_origin with storage bcm tmp.center

# get entity selector
execute store result storage bcm tmp.selector.dx int 1 run data get storage bcm tmp.size.x .999999999
execute store result storage bcm tmp.selector.dy int 1 run data get storage bcm tmp.size.y .999999999
execute store result storage bcm tmp.selector.dz int 1 run data get storage bcm tmp.size.z .999999999
function bcm:util/entity_selector_string with storage bcm tmp.selector
$data modify storage bcm map.$(type).area set from storage bcm tmp.selector

# if save, update wall height display
execute if entity @s[tag=save] as @n[type=block_display,tag=render_box,tag=wall_height] run function bcm:render_box/update_wall_height_display

# cleanup
data remove storage bcm tmp
tag @e[type=#bcm:place] remove correct_type
return 3