# get maps
data remove storage maps:list custom_random_dialog
data modify storage maps:list custom_random_dialog.maps set from storage maps:list maps
data remove storage maps:list custom_random_dialog.maps[{mapName:"RANDOM"}]

# process maps
scoreboard players set .dialog custom_random_dialog 0
execute if data storage maps:list custom_random_dialog.maps[0] run function game:menu/custom_random/loop with storage maps:list custom_random_dialog.maps[0]

# show dialog
scoreboard players enable @s custom_random_dialog
function game:menu/custom_random/show with storage maps:list custom_random_dialog

# refresh for others in dialog
execute as @a[scores={custom_random_dialog=0}] run function game:menu/custom_random/show with storage maps:list custom_random_dialog