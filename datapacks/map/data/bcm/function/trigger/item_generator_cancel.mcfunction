## find selected generator
tag @s add this
execute as @e[type=block_display,tag=generator,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned


## cleanup
# player
tag @s remove this
scoreboard players reset @s set_item_generator

# generator
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned