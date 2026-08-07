# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {macro:"$(pitch)789$(yaw)$(align)"}

# get current yaw and pitch
# [-180f,180f] -> [0i,360i]
execute store result score .yaw .calc run data get entity @s Rotation[0]
execute if score .yaw .calc matches ..0 run scoreboard players add .yaw .calc 360
execute store result storage bcm macro.yaw int 1 run scoreboard players get .yaw .calc
execute store result storage bcm macro.pitch int 1 run data get entity @s Rotation[1] 1

# show dialog
scoreboard players enable @s set_pos_and_rot
execute store success score .success set_pos_and_rot run function bcm:dialog/pos_and_rot_macro with storage bcm macro
execute if score .success set_pos_and_rot matches 1 run return 1

# catch error
trigger set_pos_and_rot set 1
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}