execute unless score @s aj.shutter.rig_loaded = @s aj.shutter.rig_loaded run function animated_java:shutter/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:shutter/zzzzzzzz/animations/tick
function #animated_java:shutter/on_tick/as_root