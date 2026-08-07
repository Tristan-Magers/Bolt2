# y offset
execute as @e[type=marker,tag=render_box,tag=save] at @s run tp ~ ~.9 ~

execute as @e[type=block_display,tag=red_flag] at @s run setblock ~ ~ ~ red_banner strict
execute as @e[type=block_display,tag=blue_flag] at @s run setblock ~ ~ ~ blue_banner strict
execute as @e[type=marker,tag=editor_target] at @s run setblock ~ ~ ~ target strict
execute as @e[type=interaction,tag=editor_crate] at @s run setblock ~ ~ ~ deepslate_copper_ore strict
scoreboard players set .enabled select_area 1

# time
function bcm:util/end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["Final Save Time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]

# improve save ETA
# get real save rate
scoreboard players operation .rate .calc = #system vect_x
scoreboard players operation .rate .calc *= #system vect_y
scoreboard players operation .rate .calc *= #system vect_z
scoreboard players operation .rate .calc *= .10 .num
scoreboard players operation .rate .calc /= .ms_total .calc
scoreboard players operation .rate .calc *= .100 .num
execute if score .print_messages item_structures matches 1 run tellraw @a[tag=verbose] ["Average Save Rate: ",{score:{name:".rate",objective:".calc"}}," blocks/s"]
# % difference
scoreboard players operation .r .calc = .rate .calc
scoreboard players operation .r .calc *= .100 .num
scoreboard players operation .r .calc /= .save_blocks/s .calc
scoreboard players remove .r .calc 100
execute if score .print_messages item_structures matches 1 if score .r .calc matches 0.. run tellraw @a[tag=verbose] ["Saved ",{score:{name:".r",objective:".calc"}},"% Faster than Estimated"]
scoreboard players operation .r .calc *= .n1 .num
execute if score .print_messages item_structures matches 1 if score .r .calc matches 1.. run tellraw @a[tag=verbose] ["Saved ",{score:{name:".r",objective:".calc"}},"% Slower than Estimated"]
# new estimate = avg(old est., real), if >1s
execute if score .ms_total .calc matches 1000.. run scoreboard players operation .save_blocks/s .calc += .rate .calc
execute if score .ms_total .calc matches 1000.. run scoreboard players operation .save_blocks/s .calc /= .2 .num

# copy data to export path
data modify storage bcm export set from storage bcm map
data modify storage bcm registry_export set from storage bcm registry
data modify storage item_structures export set from storage item_structures save

# tell players to export
tellraw @a ["YOU'RE NOT DONE YET! Click ",{underlined:true,click_event:{action:"run_command",command:"trigger export_map set 1"},text:"here"}," or type \"/trigger export_map\" to get an item with the map's data on it, which you can save permanently."]

# overwrite existing map automatically?
execute if score .overwrite save_map matches 1 run data modify storage bcm macro.mapName set from storage bcm mapNameEditing
execute if score .overwrite save_map matches 1 run function bcm:map/constructor with storage bcm macro
execute if score .overwrite save_map matches 1 run function bcm:map/overwrite with storage bcm macro