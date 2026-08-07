# load map data to shuba's system
data modify storage minecraft:item_structures save set from storage maps:list tmp.mapThumbnail

# rebuild text box if necessary
execute if data storage maps:list tmp.mapTextBlocks run function game:menu/rebuild_text_box with storage maps:list tmp

# spawn in build 
tag @s add start_point
function item_structures:load
scoreboard players set .is_busy item_structures 1
tag @s remove start_point

# +1 map id plus run next map
execute at @s run tp @s ~2 ~ ~
execute store result storage macro map_id int 1 store result bossbar rebuild_menu value run scoreboard players add .map_icon_counter .data 1
execute if score .map_icon_counter .data < .map_count .data run return run schedule function game:menu/rebuild_menu_scheduler 2t

# remove progress bar when finished
bossbar remove rebuild_menu