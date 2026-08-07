# initialize door
$execute positioned $(pos) rotated $(rotation) 0 run function bcm:util/tp_here_rotated
$execute if score .1 .num matches $(isRed) run tag @s add red
tag @s add door

# loop
data remove storage bcm tmp.doors[-1]
execute if data storage bcm tmp.doors[-1] summon marker run function bcm:place/door_auto with storage bcm tmp.doors[-1]