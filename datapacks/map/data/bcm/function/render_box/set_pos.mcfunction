execute unless score .enabled select_area matches 1 run kill @s
execute unless score .enabled select_area matches 1 as @p at @s run return run function bcm:fail/tellraw {input:'"Can\'t set this right now"'}

execute if entity @s[tag=save] store result score .save select_area run return run function bcm:render_box/select_area {type:"save",block:"tinted_glass"}
execute if entity @s[tag=red_spawn] store result score .red_spawn select_area run return run function bcm:render_box/select_area {type:"red_spawn",block:"red_stained_glass"}
execute if entity @s[tag=blue_spawn] store result score .blue_spawn select_area run return run function bcm:render_box/select_area {type:"blue_spawn",block:"blue_stained_glass"}

execute if entity @s[tag=wall_height] store result score .wall_height select_area run return run function bcm:render_box/set_max_wall_height

# this should never run
kill @s
execute as @p at @s run return run function bcm:fail/tellraw {input:'"ERROR: invalid render box marker"'}