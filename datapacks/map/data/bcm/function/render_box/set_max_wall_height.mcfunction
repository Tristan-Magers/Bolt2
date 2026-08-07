# kill marker
kill @s

# summon new or tp existing block display
execute unless entity @e[type=block_display,tag=render_box,tag=wall_height] run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:white_stained_glass"},Tags:[wall_height,render_box],transformation:[.1,0,0,0,0,.1,0,0,0,0,.1,0,0,0,0,1]}
tp @e[type=block_display,tag=render_box,tag=wall_height] ~ ~ ~

# copy save selection display's data to wall height display
data modify entity @n[type=block_display,tag=render_box,tag=wall_height] Pos[0] set from entity @n[type=block_display,tag=render_box,tag=save,tag=2,tag=y] Pos[0]
data modify entity @n[type=block_display,tag=render_box,tag=wall_height] Pos[2] set from entity @n[type=block_display,tag=render_box,tag=save,tag=2,tag=y] Pos[2]
data modify entity @n[type=block_display,tag=render_box,tag=wall_height] transformation set from entity @n[type=block_display,tag=render_box,tag=save,tag=2,tag=y] transformation
data modify entity @n[type=block_display,tag=render_box,tag=wall_height] transformation.translation[1] set value -0.05f