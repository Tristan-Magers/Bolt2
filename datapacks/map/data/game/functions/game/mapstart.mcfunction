kill @e[type=minecraft:creeper]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:magma_cube]
kill @e[tag=wall]

kill @e[tag=redflag]
kill @e[tag=blueflag]

execute if score .map .data = .1 .num run function game:map/towers/start
execute if score .map .data = .2 .num run function game:map/caves/start
execute if score .map .data = .3 .num run function game:map/divide/start
execute if score .map .data = .4 .num run function game:map/corners/start
execute if score .map .data = .5 .num run function game:map/hex/start
execute if score .map .data = .6 .num run function game:map/valley/start
execute if score .map .data = .7 .num run function game:map/dream/start

tag @a remove hasflag
tag @a remove hasspawn