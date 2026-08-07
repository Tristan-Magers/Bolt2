## safety checks
scoreboard players set .can_save_map .calc 1

# all areas set?
data modify storage bcm map.save.start set from storage bcm abs.save.start
execute unless score .save select_area matches 3 store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No save area set"'}
execute unless score .red_spawn select_area matches 3 store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No red spawn area set"'}
execute unless score .blue_spawn select_area matches 3 store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No blue spawn area set"'}
# not required: spawn areas completely inside save area?
execute as @e[type=marker,tag=render_box,tag=!save] run function bcm:map/area_check/save_soft

# max wall height set and inside save area?
execute store result score .wh .calc run data get entity @n[type=block_display,tag=render_box,tag=wall_height] Pos[1] 100
execute store result score .y1 .calc run data get entity @n[type=marker,tag=render_box,tag=save,tag=pos1] Pos[1] 100
execute store result score .y2 .calc run data get entity @n[type=marker,tag=render_box,tag=save,tag=pos2] Pos[1] 100
execute if score .y2 .calc < .y1 .calc run scoreboard players operation .y1 .calc >< .y2 .calc
execute unless entity @n[type=block_display,tag=render_box,tag=wall_height] store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No max wall height set"'}
#execute unless entity @n[type=block_display,tag=render_box,tag=wall_height] run tellraw @s {text:"No max wall height set, defaulting to top of save area",color:"yellow"}
#execute unless entity @n[type=block_display,tag=render_box,tag=wall_height] run scoreboard players operation .wh .calc = .y2 .calc
execute if score .wh .calc > .y2 .calc store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: Max wall height is outside (above) the save area"'}
execute if score .wh .calc < .y1 .calc store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: Max wall height is outside (under) the save area"'}

# 180-block height restriction (for resettability purposes)
scoreboard players operation .y .calc = .y2 .calc
scoreboard players operation .y .calc -= .y1 .calc
execute if score .y .calc matches 18001.. store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: It\'s too tall! (Max allowed height is 180 blocks)"'}

# spawnpoints set?
execute unless entity @n[type=marker,tag=red_spawnpoint] store success score .can_save_map .calc run function bcm:fail/tellraw {input:'["Failed to save map: No red spawn ",{italic:true,text:"point"}]'}
execute unless entity @n[type=marker,tag=blue_spawnpoint] store success score .can_save_map .calc run function bcm:fail/tellraw {input:'["Failed to save map: No blue spawn ",{italic:true,text:"point"}]'}
# spawnpoints inside save area?
execute as @e[type=marker,tag=spawnpoint] run function bcm:map/area_check/save_hard
execute as @e[type=marker,tag=red_spawnpoint] unless function bcm:map/area_check/red_spawn as @p run function bcm:fail/warning/tellraw {input:'["Warning: ",{nbt:"error.text",storage:"bcm",interpret:true},"is outside red spawn area"]'}
execute as @e[type=marker,tag=blue_spawnpoint] unless function bcm:map/area_check/blue_spawn as @p run function bcm:fail/warning/tellraw {input:'["Warning: ",{nbt:"error.text",storage:"bcm",interpret:true},"is outside blue spawn area"]'}

# flags set?
execute unless entity @n[type=block_display,tag=red_flag] store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No red flag"'}
execute unless entity @n[type=block_display,tag=blue_flag] store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No blue flag"'}
# flags inside save area?
execute as @e[type=block_display,tag=flag] run function bcm:map/area_check/save_hard

# intro camera set?
execute unless entity @n[type=marker,tag=intro_camera] store success score .can_save_map .calc run function bcm:fail/tellraw {input:'"Failed to save map: No map intro camera"'}
# intro camera inside save area?
execute as @e[type=marker,tag=intro_camera] run function bcm:map/area_check/save_hard

# if any of the above checks fail, don't save
execute if score .can_save_map .calc matches 0 run return fail


## save map
# disable ability to change area selections
scoreboard players set .enabled select_area 0

# relative wall height
execute store result storage bcm map.max_wall_height int 0.01 run scoreboard players operation .wh .calc -= .y1 .calc

# convert absolute positions to relative for spawn areas, spawnpoints, and intro camera
function bcm:map/save/relative with storage bcm map.save

# don't save targets & crates as part of map structure
execute if entity @e[type=#bcm:place,tag=target_or_crate] run tellraw @a[tag=verbose] "temporarily setting air blocks at flags, and possible target & crate locations (they're not part of the map structure)"
execute unless entity @e[type=#bcm:place,tag=target_or_crate] run tellraw @a[tag=verbose] "temporarily setting air blocks at flags (they're not part of the map structure)"
execute as @e[type=#bcm:place,tag=target_or_crate] at @s run setblock ~ ~ ~ air replace

# flags
execute as @e[type=block_display,tag=flag] at @s run setblock ~ ~ ~ air replace
execute as @n[type=block_display,tag=red_flag] at @s run function bcm:map/save/flag {color:"red"}
execute as @n[type=block_display,tag=blue_flag] at @s run function bcm:map/save/flag {color:"blue"}

# item generators
data modify storage bcm map.generators set value []
execute as @e[type=block_display,tag=generator] at @s run function bcm:map/save/generator

# doors
data modify storage bcm doors set value []
execute as @e[type=marker,tag=map_editor,tag=door] at @s run function bcm:map/save/door

# gates
data modify storage bcm map.gates set value []
execute as @e[type=block_display,tag=map_editor,tag=gate] at @s run function bcm:map/save/gate

## all code past this command only runs if including block changes
execute if score .include_blocks save_map matches 0 run return run function bcm:map/save/skip_blocks

# y offset
execute as @e[type=marker,tag=render_box,tag=save] at @s run tp ~ ~-.9 ~
tag @n[type=marker,tag=render_box,tag=save,tag=pos1] add start_point
tag @n[type=marker,tag=render_box,tag=save,tag=pos2] add end_point

# timer
function bcm:util/start_timer

# save blocks
scoreboard players set .print_messages item_structures 1
function item_structures:save
tag @e[type=marker,tag=render_box,tag=save] remove start_point
tag @e[type=marker,tag=render_box,tag=save] remove end_point

# time estimate (after saving begins for volume calculation)
scoreboard players operation .l .calc = #system vect_x
scoreboard players operation .l .calc *= #system vect_y
scoreboard players operation .l .calc *= #system vect_z
scoreboard players operation .l .calc /= .save_blocks/s .calc
scoreboard players operation .s .calc = .l .calc
scoreboard players operation .l .calc /= .60 .num
scoreboard players operation .s .calc %= .60 .num
execute if score .print_messages item_structures matches 1 if score .l .calc matches 0 run tellraw @a ["Estimated Time to Save: ",{score:{name:".s",objective:".calc"}},"s"]
execute if score .print_messages item_structures matches 1 if score .l .calc matches 1.. run tellraw @a ["Estimated Time to Save: ",{score:{name:".l",objective:".calc"}},"m ",{score:{name:".s",objective:".calc"}},"s"]