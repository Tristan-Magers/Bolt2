# copy x & z of scale, translation, and pos from save area y display to max wall height display
data modify entity @s transformation.scale[0] set from storage bcm tmp.size.x
data modify entity @s transformation.scale[2] set from storage bcm tmp.size.z
data modify entity @s transformation.translation[0] set from entity @n[type=block_display,tag=render_box,tag=save,tag=y] transformation.translation[0]
data modify entity @s transformation.translation[2] set from entity @n[type=block_display,tag=render_box,tag=save,tag=y] transformation.translation[2]
data modify entity @s Pos[0] set from entity @n[type=block_display,tag=render_box,tag=save,tag=y] Pos[0]
data modify entity @s Pos[2] set from entity @n[type=block_display,tag=render_box,tag=save,tag=y] Pos[2]