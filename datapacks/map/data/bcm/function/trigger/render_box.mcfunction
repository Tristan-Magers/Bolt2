## parse input right to left
# save selection
execute store result score .value set_render_box run scoreboard players remove @s set_render_box 1
execute store result score display.save set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=block_display,tag=render_box,tag=save] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

# spawns
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.spawn set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=block_display,tag=render_box,tag=red_spawn] store result entity @s view_range float 10 run scoreboard players get .value set_render_box
execute as @e[type=block_display,tag=render_box,tag=blue_spawn] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

# spawn points
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.spawnpoint set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=block_display,tag=spawnpoint] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

# glow flags
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.flags set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=block_display,tag=place,tag=flag] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

# glow generators
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.gens set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=block_display,tag=generator] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

# max wall height
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.wall_height set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=block_display,tag=render_box,tag=wall_height] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

# intro camera
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.camera set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute as @e[type=item_display,tag=intro_camera] store result entity @s view_range float 10 run scoreboard players get .value set_render_box

scoreboard players reset @s set_render_box