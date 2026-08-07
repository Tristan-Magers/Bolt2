# create new or move existing spawnpoint
execute unless entity @n[type=block_display,tag=blue_spawnpoint] run summon block_display ~ ~ ~ {view_range:0f,Tags:[blue_spawnpoint,spawnpoint],block_state:{Name:"player_head"},Glowing:1b,glow_color_override:5592575}
execute unless entity @n[type=marker,tag=blue_spawnpoint] run summon marker ~ ~ ~ {Tags:[blue_spawnpoint,spawnpoint]}
tp @n[type=block_display,tag=blue_spawnpoint] ~ ~1.62 ~ ~ ~
tp @n[type=marker,tag=blue_spawnpoint] ~ ~ ~ ~ ~
data modify entity @n[type=block_display,tag=blue_spawnpoint] transformation.translation set value [.5f,-.25f,.5f]
data modify entity @n[type=block_display,tag=blue_spawnpoint] transformation.left_rotation set value [0f,1f,0f,0f]

# visiblity state
execute store result entity @n[type=block_display,tag=blue_spawnpoint] view_range float 1 run scoreboard players get display.spawnpoint set_render_box

# save to storage, require decimal point
data modify storage bcm macro.x set string entity @n[type=marker,tag=blue_spawnpoint] Pos[0] 0 -1
data modify storage bcm macro.y set string entity @n[type=marker,tag=blue_spawnpoint] Pos[1] 0 -1
data modify storage bcm macro.z set string entity @n[type=marker,tag=blue_spawnpoint] Pos[2] 0 -1
data modify storage bcm macro.yaw set string entity @n[type=marker,tag=blue_spawnpoint] Rotation[0] 0 -1
data modify storage bcm macro.pitch set string entity @n[type=marker,tag=blue_spawnpoint] Rotation[1] 0 -1
data modify storage bcm macro.type set value "blue_spawnpoint"
function bcm:place/point_macro with storage bcm macro

forceload add ~ ~