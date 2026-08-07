# tag @s add in_map_editor
# execute if entity @s[tag=!bypass_editor_boundary] run summon interaction 0 0 0 {width:13f,height:13f,Tags:[x,min]}
# execute if entity @s[tag=!bypass_editor_boundary] run summon interaction 0 0 0 {width:13f,height:13f,Tags:[x,max]}
# execute if entity @s[tag=!bypass_editor_boundary] run summon interaction 0 0 0 {width:13f,height:13f,Tags:[z,min]}
# execute if entity @s[tag=!bypass_editor_boundary] run summon interaction 0 0 0 {width:13f,height:13f,Tags:[z,max]}

data modify storage bcm macro.pos set from storage bcm map.intro_camera
function bcm:map/edit/tp_convert with storage bcm macro
execute at @s run ride @s mount @n[type=item_display,tag=intro_camera]

clear @s
function #bcm:give

gamemode creative @s