# attempt to unstuck if inside block
execute at @s unless block ~ ~ ~ #air unless block ~ ~ ~ #bcm:place run tp @s ~ ~1 ~

execute if entity @s[tag=red_flag] at @s store result score flag.red place_object run return run function bcm:place/red_flag
execute if entity @s[tag=blue_flag] at @s store result score flag.blue place_object run return run function bcm:place/blue_flag
execute if entity @s[tag=generator] at @s store result score .generator place_object run return run function bcm:place/generator
execute if entity @s[tag=editor_target] at @s run return run function bcm:place/target
execute if entity @s[tag=editor_crate] at @s run return run function bcm:place/crate

# this should never run
kill @s
execute as @p run return run function bcm:fail/tellraw {input:'"ERROR: invalid object placer marker"'}