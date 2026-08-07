# fail if game running
execute if score .running .data matches 1 run return run title @a[tag=lobby] title {text:"Game in progress",color:gray,font:fancy}

# cancel edit countdown if ongoing
execute if score .edit_cd .data matches 11.. run title @a title {text:"Edit Canceled",color:gray,font:fancy}
execute if score .edit_cd .data matches 11.. run return run scoreboard players set .edit_cd .data -1

# override start countdown (no early return)
execute if score .start_cd .data matches 11.. run title @a subtitle {text:"Start Canceled",color:gray,font:fancy}
execute if score .start_cd .data matches 11.. run scoreboard players set .start_cd .data -5

# begin edit countdown
scoreboard players set .edit_cd .data 110

# WHAT I'M WORKING ON
# edit text for button
#summon minecraft:text_display 265.1875 -52.875 -238.0625 {alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {bold: 0b, color: "#EEEEEE", font: "minecraft:fancy", text: " EDIT  "}, text_opacity: 255, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.999996f, 7.5f, 7.4999986f], translation: [0.0f, 0.0f, 0.0f]}}