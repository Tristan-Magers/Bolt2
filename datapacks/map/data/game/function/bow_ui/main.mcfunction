#
execute as @s[tag=lobby,tag=has_bow_ui] run function game:bow_ui/detect

#
execute as @s[tag=!lobby,tag=has_bow_ui] run function game:bow_ui/clear_inv
execute as @s[tag=lobby,tag=!has_bow_ui] run function game:bow_ui/make_page
execute as @s[nbt={Inventory:[{id:"minecraft:magenta_glazed_terracotta",Slot:34b}]}] as @s[nbt=!{Inventory:[{id:"minecraft:magenta_glazed_terracotta",Slot:35b}]},tag=lobby,tag=has_bow_ui] run function game:bow_ui/next_page
execute as @s[nbt={Inventory:[{id:"minecraft:magenta_glazed_terracotta",Slot:35b}]}] as @s[nbt=!{Inventory:[{id:"minecraft:magenta_glazed_terracotta",Slot:34b}]},tag=lobby,tag=has_bow_ui] run function game:bow_ui/prev_page
execute as @s[nbt=!{Inventory:[{id:"minecraft:magenta_glazed_terracotta",Slot:35b}]}] as @s[nbt=!{Inventory:[{id:"minecraft:magenta_glazed_terracotta",Slot:34b}]},tag=lobby,tag=has_bow_ui] run function game:bow_ui/make_page

#
tag @s[tag=!lobby] remove has_bow_ui
tag @s[tag=lobby] add has_bow_ui

#say test