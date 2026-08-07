## find selected generator
tag @s add this
execute as @e[type=block_display,tag=generator,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned


## reset settings
# default values
scoreboard players set @n[type=block_display,tag=owned] bcm_generator_time 45
scoreboard players set @n[type=block_display,tag=owned] bcm_generator_warmup 5

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