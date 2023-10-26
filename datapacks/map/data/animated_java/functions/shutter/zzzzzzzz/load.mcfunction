scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.shutter.export_version dummy
scoreboard objectives add aj.shutter.rig_loaded dummy
scoreboard objectives add aj.shutter.animation.open_flat.local_anim_time dummy
scoreboard objectives add aj.shutter.animation.close_flat.local_anim_time dummy
scoreboard objectives add aj.shutter.animation.open_curled.local_anim_time dummy
scoreboard objectives add aj.shutter.animation.close_curled.local_anim_time dummy
scoreboard objectives add aj.shutter.animation.open_up.local_anim_time dummy
scoreboard objectives add aj.shutter.animation.close_up.local_anim_time dummy
scoreboard objectives add aj.shutter.animation.open_flat.loop_mode dummy
scoreboard objectives add aj.shutter.animation.close_flat.loop_mode dummy
scoreboard objectives add aj.shutter.animation.open_curled.loop_mode dummy
scoreboard objectives add aj.shutter.animation.close_curled.loop_mode dummy
scoreboard objectives add aj.shutter.animation.open_up.loop_mode dummy
scoreboard objectives add aj.shutter.animation.close_up.loop_mode dummy
scoreboard players set $aj.shutter.animation.open_flat aj.id 0
scoreboard players set $aj.shutter.animation.close_flat aj.id 1
scoreboard players set $aj.shutter.animation.open_curled aj.id 2
scoreboard players set $aj.shutter.animation.close_curled aj.id 3
scoreboard players set $aj.shutter.animation.open_up aj.id 4
scoreboard players set $aj.shutter.animation.close_up aj.id 5
scoreboard players set $aj.shutter.variant.blue aj.id 0
scoreboard players set $aj.shutter.variant.red aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.shutter.export_version aj.i -27288155
scoreboard players reset * aj.shutter.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.shutter.root] run function animated_java:shutter/zzzzzzzz/on_load