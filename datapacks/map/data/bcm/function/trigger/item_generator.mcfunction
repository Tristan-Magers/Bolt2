## find selected generator
tag @s add this
execute as @e[type=block_display,tag=generator,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned


## parse input right to left
# input format: <time>789<warmup>

# warmup: [0,180] - unknown length 1 to 3 digits, followed by 789
scoreboard players operation .value .calc = @s set_item_generator
scoreboard players set .max .calc 1000
scoreboard players set .separator .calc 789
execute store result score @n[type=block_display,tag=owned] bcm_generator_warmup run function bcm:util/next_packed_arg

# time: [1,180]
scoreboard players operation @n[type=block_display,tag=owned] bcm_generator_time = .value .calc

# update sign text
execute as @n[type=block_display,tag=owned] at @s positioned ^ ^ ^1 run function bcm:place/generator_text


## cleanup
# player
tag @s remove this
scoreboard players reset @s set_item_generator

# generator
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned