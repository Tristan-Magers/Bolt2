# is this position relative or absolute?
data modify storage bcm tmp.is_relative set string storage bcm tmp.targets[-1].pos 0 1
execute store success score .success .calc run data modify storage bcm tmp.is_relative set value "~"
# if relative
execute if score .success .calc matches 0 run data modify storage bcm macro.pos set from storage bcm map.save.start
execute if score .success .calc matches 0 run function bcm:util/tp with storage bcm macro
$execute if score .success .calc matches 0 run tp @s $(pos)
# if absolute
$execute if score .success .calc matches 1 run function bcm:map/edit/tp_convert {pos:"$(pos)"}

# replace conflicting target
execute at @s if entity @e[type=marker,tag=editor_target,distance=..0.1] run scoreboard players add targets.replace .calc 1
execute at @s run kill @e[type=marker,tag=editor_target,distance=..0.1]

# initialize
data merge entity @s {Tags:["map_editor","place","editor_target","target_or_crate"]}
execute at @s run setblock ~ ~ ~ target strict

# loop
data remove storage bcm tmp.targets[-1]
execute if data storage bcm tmp.targets[] summon marker run function bcm:place/target_auto with storage bcm tmp.targets[-1]