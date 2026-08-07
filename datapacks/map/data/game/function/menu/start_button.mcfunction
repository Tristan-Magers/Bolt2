# fail if game running
execute if score .running .data matches 1 run return run title @a[tag=lobby] title {text:"Game in progress",color:gray,font:fancy}

# cancel start countdown if ongoing
execute if score .start_cd .data matches 11.. run title @a title {text:"Start Canceled",color:gray,font:fancy}
execute if score .start_cd .data matches 11.. run return run scoreboard players set .start_cd .data -1

# override edit countdown (no early return)
execute if score .edit_cd .data matches 11.. run title @a subtitle {text:"Edit Canceled",color:gray,font:fancy}
execute if score .edit_cd .data matches 11.. run scoreboard players set .edit_cd .data -1

# begin start countdown
scoreboard players set .start_cd .data 71