# .overwrite & .include_blocks are boolean
scoreboard players operation .overwrite save_map = @s save_map
scoreboard players operation .overwrite save_map %= .2 .num
scoreboard players operation .include_blocks save_map = @s save_map
scoreboard players operation .include_blocks save_map /= .10 .num
scoreboard players reset @s save_map

# save unless system busy
execute if score .is_busy item_structures matches 1 run function bcm:fail/tellraw {input:'"item structure system is busy loading or saving something else. please wait a few seconds, then try saving your map again. tell shuba if this error persists."'}
execute if score .is_busy item_structures matches 0 run function bcm:map/save