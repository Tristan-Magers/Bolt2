# this should not change the position
execute align xyz run tp @s ~.5 ~ ~.5

execute at @s run forceload add ~ ~

execute if entity @s[tag=render_box] align xyz run return run function bcm:render_box/set_pos
execute if entity @s[tag=place] run return run function bcm:place/object
execute if entity @s[tag=tmp_new_door] run return run function bcm:place/door
execute if entity @s[tag=gate] run return run function bcm:place/gate

# this should never run
kill @s
execute as @p run return run function bcm:fail/tellraw {input:'"ERROR: invalid map editor marker"'}