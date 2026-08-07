advancement revoke @s only game:creative_tools

# area selectors
execute store success score #bool .calc run clear @s painting[painting/variant=alban]
execute if score #bool .calc matches 1 run function bcm:give/select_area/save1
execute store success score #bool .calc run clear @s painting[painting/variant=aztec]
execute if score #bool .calc matches 1 run function bcm:give/select_area/save2
execute store success score #bool .calc run clear @s painting[painting/variant=aztec2]
execute if score #bool .calc matches 1 run function bcm:give/select_area/spawn_red1
execute store success score #bool .calc run clear @s painting[painting/variant=bomb]
execute if score #bool .calc matches 1 run function bcm:give/select_area/spawn_red2
execute store success score #bool .calc run clear @s painting[painting/variant=kebab]
execute if score #bool .calc matches 1 run function bcm:give/select_area/spawn_blue1
execute store success score #bool .calc run clear @s painting[painting/variant=meditative]
execute if score #bool .calc matches 1 run function bcm:give/select_area/spawn_blue2

# flags
execute store success score #bool .calc run clear @s painting[painting/variant=plant]
execute if score #bool .calc matches 1 run function bcm:give/place/red_flag
execute store success score #bool .calc run clear @s painting[painting/variant=wasteland]
execute if score #bool .calc matches 1 run function bcm:give/place/blue_flag

# teleport locations
execute store success score #bool .calc run clear @s painting[painting/variant=graham]
execute if score #bool .calc matches 1 run function bcm:give/place/red_spawnpoint
execute store success score #bool .calc run clear @s painting[painting/variant=prairie_ride]
execute if score #bool .calc matches 1 run function bcm:give/place/blue_spawnpoint
execute store success score #bool .calc run clear @s painting[painting/variant=wanderer]
execute if score #bool .calc matches 1 run function bcm:give/place/intro_camera

# doors
execute store success score #bool .calc run clear @s painting[painting/variant=courbet]
execute if score #bool .calc matches 1 run function bcm:give/place/red_door
execute store success score #bool .calc run clear @s painting[painting/variant=creebet]
execute if score #bool .calc matches 1 run function bcm:give/place/blue_door
execute store success score #bool .calc run clear @s painting[painting/variant=pool]
execute if score #bool .calc matches 1 run function bcm:give/place/gate

# game objects
execute store success score #bool .calc run clear @s painting[painting/variant=sea]
execute if score #bool .calc matches 1 run function bcm:give/place/generator
execute store success score #bool .calc run clear @s painting[painting/variant=sunset]
execute if score #bool .calc matches 1 run function bcm:give/place/target
execute store success score #bool .calc run clear @s painting[painting/variant=baroque]
execute if score #bool .calc matches 1 run function bcm:give/place/crate

# uncategorized
execute store success score #bool .calc run clear @s painting[painting/variant=bust]
execute if score #bool .calc matches 1 run function bcm:give/set_max_wall_height
execute store success score #bool .calc run clear @s painting[painting/variant=humble]
execute if score #bool .calc matches 1 run function bcm:give/master_menu