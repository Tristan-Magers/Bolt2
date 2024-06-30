scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.shutter.animation.open_curled.local_anim_time 0
scoreboard players set @s aj.shutter.animation.open_curled.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:shutter/zzzzzzzz/animations/open_curled/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.shutter.animation.open_curled