# create dialog action
data modify storage maps:list custom_random_dialog.action set value {\
    label: [\
        " - ",\
        {text: "Disabled", color: red}\
    ],\
    action: {\
        type: "minecraft:run_command"\
    }\
}
$data modify storage maps:list custom_random_dialog.action.label prepend value "$(mapName)"
$scoreboard players set .dialog_enabled custom_random_dialog $(enabled)
execute if score .dialog_enabled custom_random_dialog matches 1 run data modify storage maps:list custom_random_dialog.action.label[2] set value {text:"Enabled",color:green}

# trigger num
execute store result storage maps:list custom_random_dialog.trigger_num int 1 run scoreboard players add .dialog custom_random_dialog 1
function game:menu/custom_random/set_trigger_num with storage maps:list custom_random_dialog

# add to list if in correct set
execute if score .custom_maps_enabled .data matches 0 unless data storage maps:list custom_random_dialog.maps[0].isItemMap run data modify storage maps:list custom_random_dialog.actions append from storage maps:list custom_random_dialog.action
execute if score .custom_maps_enabled .data matches 1 if data storage maps:list custom_random_dialog.maps[0].isItemMap run data modify storage maps:list custom_random_dialog.actions append from storage maps:list custom_random_dialog.action

# next map
data remove storage maps:list custom_random_dialog.maps[0]
execute if data storage maps:list custom_random_dialog.maps[0] run function game:menu/custom_random/loop with storage maps:list custom_random_dialog.maps[0]