execute store result score .l .calc run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if score .l .calc matches 31 run function bcm:place/red_spawnpoint
execute if score .l .calc matches 32 run function bcm:place/blue_spawnpoint
execute if score .l .calc matches 33 run function bcm:place/intro_camera
execute if score .l .calc matches 34 run function bcm:dialog/render_box
execute if score .l .calc matches 35 run function bcm:dialog/pos_and_rot
execute if score .l .calc matches 36 if score .is_busy item_structures matches 1 run return run function bcm:fail/tellraw {input:'"item structure system is busy loading or saving something else. please wait a few seconds, then try importing your map again. tell shuba if this error persists."'}
execute if score .l .calc matches 36 run function bcm:map/import
execute if score .l .calc matches 37 run function bcm:editor/leave_to_lobby
execute if score .l .calc matches 38 run function bcm:dialog/master