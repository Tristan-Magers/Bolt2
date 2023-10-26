scoreboard players set @s aj.shutter.animation.close_curled.local_anim_time 0
tag @s remove aj.shutter.animation.close_curled
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.shutter.disable_command_keyframes
function animated_java:shutter/zzzzzzzz/animations/close_curled/tree/leaf_0
tag @s remove aj.shutter.disable_command_keyframes