# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {macro:"$(time)789$(warmup)",time:45,warmup:5}

# link player to generator entity
execute if block ~ ~ ~ birch_wall_sign[facing=north] positioned ~ ~-.5 ~1 run tag @n[type=block_display,tag=generator] add this
execute if block ~ ~ ~ birch_wall_sign[facing=east] positioned ~-1 ~-.5 ~ run tag @n[type=block_display,tag=generator] add this
execute if block ~ ~ ~ birch_wall_sign[facing=south] positioned ~ ~-.5 ~-1 run tag @n[type=block_display,tag=generator] add this
execute if block ~ ~ ~ birch_wall_sign[facing=west] positioned ~1 ~-.5 ~ run tag @n[type=block_display,tag=generator] add this
execute as @n[type=block_display,tag=generator,tag=this] if entity @s[tag=editing] as @p run function bcm:fail/actionbar {input:'"This generator is already being edited"'}
execute as @n[type=block_display,tag=generator,tag=this] if entity @s[tag=editing] run return run tag @s remove this
execute at @s as @n[type=block_display,tag=generator,tag=this] run function bcm:dialog/item_generator_entity

# show dialog
scoreboard players enable @s set_item_generator
execute store success score .success set_item_generator run function bcm:dialog/item_generator_macro with storage bcm macro
execute if score .success set_item_generator matches 1 run return 1

# catch error
trigger set_item_generator set -2
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}