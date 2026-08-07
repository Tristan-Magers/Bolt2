# create new or move existing camera point
execute unless entity @n[type=item_display,tag=intro_camera] run summon item_display ~ ~ ~ {view_range:0f,Tags:[intro_camera],item:{id:"minecraft:player_head",components:{profile:{properties:[{value:"ewogICJ0aW1lc3RhbXAiIDogMTc1MTgzNzQ2MjAwNywKICAicHJvZmlsZUlkIiA6ICJkMzJiNzIwYjE5MTQ0MjA5YmY5YTg2NjJmMWJiN2IzMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfQ2FtIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzM0NzgzYTkyZGI2ZjY1ZGM0NjhmYjA2ZDk4M2UxM2ZkNDJjZWYwMzFkMzIzODJiNmU0NjI0ZTQ5Y2FmNzFkZTIiCiAgICB9CiAgfQp9",name:"textures"}]}}},Glowing:1b}
execute unless entity @n[type=marker,tag=intro_camera] run summon marker ~ ~ ~ {Tags:[intro_camera]}
tp @n[type=item_display,tag=intro_camera] ~ ~1.62 ~ ~ 0
tp @n[type=marker,tag=intro_camera] ~ ~ ~ ~ 0
data modify entity @n[type=item_display,tag=intro_camera] transformation.translation set value [0f,.25f,0f]
data modify entity @n[type=item_display,tag=intro_camera] transformation.left_rotation set value [0f,1f,0f,0f]

# visibility state
execute store result entity @n[type=item_display,tag=intro_camera] view_range float 1 run scoreboard players get display.camera set_render_box

# save to storage, require decimal point
data modify storage bcm macro.x set string entity @n[type=marker,tag=intro_camera] Pos[0] 0 -1
data modify storage bcm macro.y set string entity @n[type=marker,tag=intro_camera] Pos[1] 0 -1
data modify storage bcm macro.z set string entity @n[type=marker,tag=intro_camera] Pos[2] 0 -1
data modify storage bcm macro.yaw set string entity @n[type=marker,tag=intro_camera] Rotation[0] 0 -1
#data modify storage bcm macro.pitch set string entity @n[type=marker,tag=intro_camera] Rotation[1] 0 -1
data modify storage bcm macro.pitch set value 0
data modify storage bcm macro.type set value "intro_camera"
function bcm:place/point_macro with storage bcm macro

forceload add ~ ~