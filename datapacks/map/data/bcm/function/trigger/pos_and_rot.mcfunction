## parse input right to left
# input format: <pitch>789<yaw><a>

# block alignment: 1=don't align, 2=align to center, 3=align to corner
execute store success score .is_negative .calc if score @s set_pos_and_rot matches ..-1
execute if score .is_negative .calc matches 1 run scoreboard players operation @s set_pos_and_rot *= .n1 .num
scoreboard players operation .value .calc = @s set_pos_and_rot
scoreboard players operation .value .calc %= .10 .num
execute if score .value .calc matches 2 at @s align xyz run tp ~.5 ~ ~.5
execute if score .value .calc matches 3 at @s align xyz run tp ~ ~ ~
scoreboard players operation @s set_pos_and_rot /= .10 .num

# yaw: [0,360] - unknown length 1 to 3 digits, followed by 789
data remove storage bcm macro
scoreboard players operation .value .calc = @s set_pos_and_rot
scoreboard players set .max .calc 1000
scoreboard players set .separator .calc 789
execute store result storage bcm macro.yaw int 1 run function bcm:util/next_packed_arg

# pitch: [-90,90]
execute if score .is_negative .calc matches 0 store result storage bcm macro.pitch int 1 run scoreboard players get .value .calc
execute if score .is_negative .calc matches 1 store result storage bcm macro.pitch int -1 run scoreboard players get .value .calc

# tp
#tellraw @s {nbt:"macro",storage:"bcm"}
execute at @s run function bcm:trigger/pos_and_rot_macro with storage bcm macro

scoreboard players reset @s set_pos_and_rot