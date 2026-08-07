# lever at 233 -47 -260



# if lever is not flipped, end function execution
execute if score .custom_maps_enabled .data matches 0 if block 233 -47 -260 lever[powered=false] run return 0
execute if score .custom_maps_enabled .data matches 1 if block 233 -47 -260 lever[powered=true] run return 0

# flip score to correct value based on lever
execute if score .custom_maps_enabled .data matches 0 if block 233 -47 -260 lever[powered=true] run scoreboard players set .custom_maps_enabled .data 1
execute if score .custom_maps_enabled .data matches 1 if block 233 -47 -260 lever[powered=false] run scoreboard players set .custom_maps_enabled .data 0

# double check and make sure there is an entity there, just in case.
execute positioned 233.0625 -45.75 -259.5 unless entity @n[type=text_display,distance=..0.4] run summon text_display 233.0625 -45.75 -259.5 {alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {text:"Official Maps",color:gray,bold:false}, text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.9999995f, 2.0f, 1.9999995f], translation: [0.0f, 0.0f, 0.0f]},interpolation_duration:4,teleport_duration:4}

execute positioned 233.0625 -47.6875 -259.5 unless entity @n[type=text_display,distance=..0.4] run summon text_display 233.0625 -47.6875 -259.5 {alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {text:"Custom Maps",color:gray,bold:false}, text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.9999995f, 2.0f, 1.9999995f], translation: [0.0f, 0.0f, 0.0f]},interpolation_duration:4,teleport_duration:4}


# set custom map to 0
scoreboard players set .map_display .data 0
execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data

# official maps selected 
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -47.6875 -259.5 run data modify entity @n[type=text_display] transformation.scale set value [2.0, 2.0, 2.0]
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -47.6875 -259.5 run data modify entity @n[type=text_display] start_interpolation set value 0
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -47.6875 -259.5 run data modify entity @n[type=text_display] text set value {text:"Custom Maps",color:gray}
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -47.6875 -259.5 run tp @n[type=text_display] 233.0625 -47.6875 -259.5
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -45.75 -259.5 run data modify entity @n[type=text_display] transformation.scale set value [3.0, 3.0, 3.0]
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -45.75 -259.5 run data modify entity @n[type=text_display] start_interpolation set value 0
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -45.75 -259.5 run data modify entity @n[type=text_display] text set value {text:"Official Maps",color:white}
execute if score .custom_maps_enabled .data matches 0 positioned 233.0625 -45.75 -259.5 run tp @n[type=text_display] 233.0625 -45.90 -259.5

# custom maps selected
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -47.6875 -259.5 run data modify entity @n[type=text_display] transformation.scale set value [3.0, 3.0, 3.0]
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -47.6875 -259.5 run data modify entity @n[type=text_display] start_interpolation set value 0
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -47.6875 -259.5 run data modify entity @n[type=text_display] text set value {text:"Custom Maps",color:white}
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -47.6875 -259.5 run tp @n[type=text_display] 233.0625 -47.8275 -259.5
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -45.75 -259.5 run data modify entity @n[type=text_display] transformation.scale set value [2.0, 2.0, 2.0]
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -45.75 -259.5 run data modify entity @n[type=text_display] start_interpolation set value 0
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -45.75 -259.5 run data modify entity @n[type=text_display] text set value {text:"Official Maps",color:gray}
execute if score .custom_maps_enabled .data matches 1 positioned 233.0625 -45.75 -259.5 run tp @n[type=text_display] 233.0625 -45.75 -259.5




# increase map by 1 if map doesn't match custom map setting. Loops until it is correct.
function game:menu/next_map_loop with storage minecraft:macro

# update visual
function game:menu/map_display with storage minecraft:macro

# edit button text visibility
execute store result entity 9193d285-e55d-4da1-b962-86a964871769 view_range float 1 run scoreboard players get .custom_maps_enabled .data