kill @e[tag=gen]
kill @e[type=item]

kill @e[type=minecraft:creeper]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:magma_cube]
kill @e[tag=wall]
kill @e[tag=spawn_tracker]

kill @e[tag=redflag]
kill @e[tag=blueflag]

execute if score .map .data = .1 .num run function game:map/towers/start
execute if score .map .data = .2 .num run function game:map/caves/start
execute if score .map .data = .3 .num run function game:map/divide/start
execute if score .map .data = .4 .num run function game:map/corners/start
execute if score .map .data = .5 .num run function game:map/hex/start
execute if score .map .data = .6 .num run function game:map/valley/start
execute if score .map .data = .7 .num run function game:map/dream/start
execute if score .map .data = .8 .num run function game:map/bar/start
execute if score .map .data = .9 .num run function game:map/basin/start
execute if score .map .data = .10 .num run function game:map/corners2/start
execute if score .map .data = .11 .num run function game:map/sidelines/start
execute if score .map .data = .12 .num run function game:map/garden/start
execute if score .map .data = .13 .num run function game:map/lookout/start

tag @a remove hasflag
tag @a remove hasspawn