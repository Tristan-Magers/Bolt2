# calculate number of x rows in build, increment at end of x row
scoreboard players operation max vect_x = #system vect_y
execute store result bossbar progress max run scoreboard players operation max vect_x *= #system vect_z
execute store result bossbar progress value run scoreboard players set value vect_x 0

bossbar set progress name {text:"Load Progress",color:"green"}
# run this if you want to see it
execute if score .print_messages item_structures matches 1 run bossbar set progress visible true
bossbar set progress players @a