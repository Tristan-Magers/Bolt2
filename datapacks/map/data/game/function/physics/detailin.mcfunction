execute if block ~ ~ ~ pink_stained_glass_pane run tag @s add in
execute if block ~ ~ ~ light_gray_stained_glass_pane run tag @s add in

execute if block ~ ~ ~ #minecraft:fences run tag @s add in

execute if block ~ ~ ~ #minecraft:walls run tag @s add in

execute if block ~ ~ ~ redstone_torch run tag @s add in
execute if block ~ ~ ~ fire run tag @s add in
execute if block ~ ~ ~ snow run tag @s add in
execute if block ~ ~ ~ minecraft:short_grass run tag @s add in
execute if block ~ ~ ~ minecraft:small_dripleaf run tag @s add in
execute if block ~ ~ ~ minecraft:fern run tag @s add in
execute if block ~ ~ ~ minecraft:brown_mushroom run tag @s add in
execute if block ~ ~ ~ #minecraft:all_signs run tag @s add in
execute if block ~ ~ ~ #minecraft:flowers run tag @s add in
execute if block ~ ~ ~ #minecraft:banners run tag @s add in
execute if block ~ ~ ~ #minecraft:trapdoors run tag @s add in
execute if block ~ ~ ~ #minecraft:climbable run tag @s add in

execute if block ~ ~.5 ~ #minecraft:slabs[type=top] run tag @s add in
execute if block ~ ~-.5 ~ #minecraft:slabs[type=bottom] run tag @s add in

execute if block ~.25 ~ ~.25 #minecraft:fences if block ~-.25 ~ ~-.25 #minecraft:fences run tag @s remove in

execute if block ~.25 ~ ~.25 #minecraft:walls if block ~-.25 ~ ~-.25 #minecraft:walls run tag @s remove in