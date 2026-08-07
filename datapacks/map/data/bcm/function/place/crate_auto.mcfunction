# is this position relative or absolute?
data modify storage bcm tmp.is_relative set string storage bcm tmp.crates[-1].pos 0 1
execute store success score .success .calc run data modify storage bcm tmp.is_relative set value "~"
# if relative
execute if score .success .calc matches 0 run data modify storage bcm macro.pos set from storage bcm map.save.start
execute if score .success .calc matches 0 run function bcm:util/tp with storage bcm macro
$execute if score .success .calc matches 0 run tp @s $(pos)
# if absolute
$execute if score .success .calc matches 1 run function bcm:map/edit/tp_convert {pos:"$(pos)"}

# crate spawn_chance
$scoreboard players set @s bcm_crate_spawn_chance $(spawn_chance)
function bcm:place/crate_text

# replace conflicting crate
execute at @s if entity @e[type=interaction,tag=editor_crate,distance=..0.1] run scoreboard players add crates.replace .calc 1
execute at @s run kill @e[type=interaction,tag=editor_crate,distance=..0.1]

# initialize
data merge entity @s {Tags:["map_editor","place","editor_crate","target_or_crate"],response:true}
execute at @s run setblock ~ ~ ~ deepslate_copper_ore strict

# loop
data remove storage bcm tmp.crates[-1]
execute if data storage bcm tmp.crates[] summon interaction run function bcm:place/crate_auto with storage bcm tmp.crates[-1]