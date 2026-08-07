# flags
tag @e[type=block_display,tag=init_delay] add init
tag @e[type=block_display,tag=init_delay] remove init_delay

# generators
data modify storage bcm map.tmp_generators set from storage bcm map.generators
execute if data storage bcm map.tmp_generators[] at @n[type=marker,tag=load_point] run function bcm:place/generator_auto_loop
data remove storage bcm map.tmp_generators

# doors
tag @e[type=marker,tag=door_delay] add door
tag @e[type=marker,tag=door_delay] remove door_delay

scoreboard players set .hard select_area 0