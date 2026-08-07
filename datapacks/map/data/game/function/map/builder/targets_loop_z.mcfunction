$execute positioned $(x) $(y) $(z) if block ~ ~ ~ target run data modify storage targets arr append value {pos:'$(x) $(y) $(z)'}
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ target run tellraw @a 'found target @ $(x) $(y) $(z)'

execute store result storage targets z int 1 run scoreboard players add z tmp 1
execute if score z tmp <= z_max tmp run function game:map/builder/targets_loop_z with storage targets