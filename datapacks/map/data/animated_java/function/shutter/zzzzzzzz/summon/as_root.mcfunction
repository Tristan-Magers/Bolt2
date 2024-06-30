execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.shutter.rig_loaded 1
scoreboard players operation @s aj.shutter.export_version = aj.shutter.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:shutter/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.shutter.variant.blue aj.id run function animated_java:shutter/zzzzzzzz/apply_variant/blue/as_root
execute if score #variant aj.i = $aj.shutter.variant.red aj.id run function animated_java:shutter/zzzzzzzz/apply_variant/red/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shutter.animation.open_flat aj.id run function animated_java:shutter/zzzzzzzz/animations/open_flat/apply_frame_as_root
execute if score #animation aj.i = $aj.shutter.animation.open_flat aj.id run scoreboard players operation @s aj.shutter.animation.open_flat.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shutter.animation.close_flat aj.id run function animated_java:shutter/zzzzzzzz/animations/close_flat/apply_frame_as_root
execute if score #animation aj.i = $aj.shutter.animation.close_flat aj.id run scoreboard players operation @s aj.shutter.animation.close_flat.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shutter.animation.open_curled aj.id run function animated_java:shutter/zzzzzzzz/animations/open_curled/apply_frame_as_root
execute if score #animation aj.i = $aj.shutter.animation.open_curled aj.id run scoreboard players operation @s aj.shutter.animation.open_curled.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shutter.animation.close_curled aj.id run function animated_java:shutter/zzzzzzzz/animations/close_curled/apply_frame_as_root
execute if score #animation aj.i = $aj.shutter.animation.close_curled aj.id run scoreboard players operation @s aj.shutter.animation.close_curled.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shutter.animation.open_up aj.id run function animated_java:shutter/zzzzzzzz/animations/open_up/apply_frame_as_root
execute if score #animation aj.i = $aj.shutter.animation.open_up aj.id run scoreboard players operation @s aj.shutter.animation.open_up.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shutter.animation.close_up aj.id run function animated_java:shutter/zzzzzzzz/animations/close_up/apply_frame_as_root
execute if score #animation aj.i = $aj.shutter.animation.close_up aj.id run scoreboard players operation @s aj.shutter.animation.close_up.local_anim_time = #frame aj.i
execute at @s run function #animated_java:shutter/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i