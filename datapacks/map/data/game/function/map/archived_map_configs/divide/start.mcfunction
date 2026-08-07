fill -112 0 409 -230 10 355 air replace gravel
fill -112 0 409 -230 10 355 air replace target
fill -112 0 409 -230 10 355 air replace emerald_block

# old blue flag, -211 -57 30      old red flag, -211, -57, -4
# offset is 80 60 369
#execute if score .mode .data = .1 .num run summon armor_stand -131 3 399 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:blue_banner",count:1}},Tags:["blueflag","flag"]}
#execute if score .mode .data = .1 .num run summon armor_stand -131 3 365 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:red_banner",count:1}},Tags:["redflag","flag"]}

data merge block -129 7 359 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}
data merge block -133 7 405 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -133 7 404 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -129 7 360 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .6 .num run execute positioned -131 3 399 run function game:game/infected/generator/spawn
execute if score .mode .data = .6 .num run function game:map/divide/crates

#
execute if score .mode .data = .7 .num run function game:map/divide/target

#
#execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill


# divide is .map .data = 3

# CHECKLIST FOR MOVING MAP:
# . spawn locations (ded)
# . spawn invul boxes
# . biomes
# . gens
# . load spots (load)
# . spectator boundries
# . intro cutscene spots (start)
# . spawn area detection spots
# . flags (map/start)
# . remove gravel/targets (map/start)
# X doors
# . wall height cap (walls/main)
# . spectator join position (spec/join)
# - infection modes spots 
# - targets