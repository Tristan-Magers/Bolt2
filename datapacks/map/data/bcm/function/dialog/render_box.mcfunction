# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {macro:"$(camera)$(wall_height)$(gens)$(flags)$(spawnpoints)$(spawns)$(save)"}

# default values
execute store result storage bcm macro.save float 1 run scoreboard players get display.save set_render_box
execute store result storage bcm macro.spawns float 1 run scoreboard players get display.spawn set_render_box
execute store result storage bcm macro.spawnpoints float 1 run scoreboard players get display.spawnpoint set_render_box
execute store result storage bcm macro.flags float 1 run scoreboard players get display.flags set_render_box
execute store result storage bcm macro.gens float 1 run scoreboard players get display.gens set_render_box
execute store result storage bcm macro.wall_height float 1 run scoreboard players get display.wall_height set_render_box
execute store result storage bcm macro.camera float 1 run scoreboard players get display.camera set_render_box

# view_range (0f or 1f) -> is visible (boolean)
data modify storage bcm macro.save set string entity @n[type=block_display,tag=render_box,tag=save] view_range 0 1
execute if entity @n[type=block_display,tag=render_box,tag=red_spawn] run data modify storage bcm macro.spawns set string entity @n[type=block_display,tag=render_box,tag=red_spawn] view_range 0 1
execute if entity @n[type=block_display,tag=render_box,tag=blue_spawn] run data modify storage bcm macro.spawns set string entity @n[type=block_display,tag=render_box,tag=blue_spawn] view_range 0 1
data modify storage bcm macro.spawnpoints set string entity @n[type=block_display,tag=spawnpoint] view_range 0 1
data modify storage bcm macro.flags set string entity @n[type=block_display,tag=place,tag=flag] view_range 0 1
data modify storage bcm macro.gens set string entity @n[type=block_display,tag=place,tag=generator] view_range 0 1
data modify storage bcm macro.wall_height set string entity @n[type=block_display,tag=render_box,tag=wall_height] view_range 0 1
data modify storage bcm macro.camera set string entity @n[type=item_display,tag=intro_camera] view_range 0 1

# show dialog
scoreboard players enable @s set_render_box
execute store success score .success set_render_box run function bcm:dialog/render_box_macro with storage bcm macro
execute if score .success set_render_box matches 1 run return 1

# catch error
trigger set_render_box set 1
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}