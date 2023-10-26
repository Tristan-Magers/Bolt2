scoreboard players add @s aj.shutter.animation.open_curled.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.shutter.animation.open_curled.local_anim_time
function animated_java:shutter/zzzzzzzz/animations/open_curled/apply_frame_as_root
execute if score @s aj.shutter.animation.open_curled.local_anim_time matches 10.. run function animated_java:shutter/zzzzzzzz/animations/open_curled/end