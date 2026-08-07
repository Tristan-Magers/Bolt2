scoreboard players set .is_busy item_structures 1

scoreboard players set #count commands 0
data remove storage minecraft:item_structures save

data merge storage item_structures {save:{size:[0,0,0],blocks:[I;],index:[]},anti_index:[]}
execute store result storage item_structures save.size[0] int 1 run scoreboard players get #system vect_x
execute store result storage item_structures save.size[1] int 1 run scoreboard players get #system vect_y
execute store result storage item_structures save.size[2] int 1 run scoreboard players get #system vect_z
execute if score .print_messages item_structures matches 1 run tellraw @a[tag=verbose] ["size: ",{nbt:"save.size",storage:"item_structures"}]
scoreboard players operation total vect_x = #system vect_x
scoreboard players operation total vect_x *= #system vect_y
scoreboard players operation total vect_x *= #system vect_z
execute if score .print_messages item_structures matches 1 run tellraw @a[tag=verbose] ["volume: ",{score:{name:"total",objective:"vect_x"}}," blocks"]
scoreboard players operation total vect_x *= .100 .num
scoreboard players operation total vect_x /= .max_export_volume item_structures
execute if score .print_messages item_structures matches 1 run tellraw @a[tag=verbose] [{score:{name:"total",objective:"vect_x"}},"% of max recommended export volume (",{score:{name:".max_export_volume",objective:"item_structures"}}," blocks)"]
# print warning even if print messages is off
execute if score total vect_x matches 100.. run tellraw @a [{color:"yellow",text:"NOTICE: structure is really big. after saving it, we'll tell you if it's too big to export or not. but it's probably fine - especially if you have large areas with all one block, including air."}]

# first block can't match "previous" block
data remove storage bs:out block

scoreboard players set id commands -1
scoreboard players set #same_count commands 0

scoreboard players operation #count vect_x = #system vect_x
scoreboard players operation #count vect_y = #system vect_y
scoreboard players operation #count vect_z = #system vect_z

function item_structures:zprivate/save/move