scoreboard players set @s aj.shutter.animation.open_up.local_anim_time 0
tag @s remove aj.shutter.animation.open_up
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.shutter.disable_command_keyframes
function animated_java:shutter/zzzzzzzz/animations/open_up/tree/leaf_0
tag @s remove aj.shutter.disable_command_keyframes