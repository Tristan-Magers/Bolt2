#
tag @a add up_stop
tag @e[type=creeper] add up_stop
tag @e[type=slime] add up_stop
tag @e[type=magma_cube] add up_stop
tag @e[tag=turret_head] add up_stop

tag @e[type=creeper] add up_stop2
tag @e[type=slime] add up_stop3
tag @e[type=magma_cube] add up_stop3
tag @e[tag=turret_head] add up_stop4

#
tag @e[type=creeper] add low_position
tag @e[tag=grenadehit] add low_position
tag @e[tag=blueflag,tag=drop] add low_position
tag @e[tag=redflag,tag=drop] add low_position

#
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:small_dripleaf
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:short_grass
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:fern
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace light
execute as @s at @s unless block ~ ~ ~ minecraft:azalea run fill ~ ~ ~ ~ ~ ~ minecraft:air replace #minecraft:saplings
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace #minecraft:flowers
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace brown_mushroom
execute as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace dead_bush
execute as @s at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace hanging_roots
execute as @s at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace nether_sprouts

#
tag @e remove suff

#
execute as @a[tag=up_stop,distance=..1] at @s unless block ~ ~1 ~ air run tag @s add suff
execute as @e[tag=up_stop,distance=..0.8] at @s unless block ~ ~1 ~ air run tag @s add suff
execute as @e[tag=up_stop4,distance=..1] at @s unless block ~ ~2.6 ~ air run tag @s add suff

#
tag @s add me
execute unless entity @e[tag=up_stop,tag=suff] as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:gravel replace air

tag @e remove ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~ ~2 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~2 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~2 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~2 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~2 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~ ~1 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~1 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~1 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~1 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~1 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~ ~ ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~ ~0.9 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @e[tag=ingravel,tag=!suff,tag=turret] at @s run function game:ffa/turret/lift
execute as @e[tag=ingravel,tag=!suff] at @s run tp @s ~ ~1 ~

tag @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3] remove test_head_air
tag @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3] remove test_head_air_2
tag @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3] remove test_head_air_3
execute as @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3,tag=ingravel] at @s if block ~0.3 ~1.7 ~0.3 air if block ~0.3 ~1.7 ~-0.3 air if block ~-0.3 ~1.7 ~0.3 air if block ~-0.3 ~1.7 ~-0.3 air run tag @s add test_head_air
execute as @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3,tag=ingravel] at @s if block ~0.3 ~1.1 ~0.3 air if block ~0.3 ~1.1 ~-0.3 air if block ~-0.3 ~1.1 ~0.3 air if block ~-0.3 ~1.1 ~-0.3 air run tag @s add test_head_air_2
execute as @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3,tag=ingravel] at @s if block ~0.3 ~0.6 ~0.3 air if block ~0.3 ~0.6 ~-0.3 air if block ~-0.3 ~0.6 ~0.3 air if block ~-0.3 ~0.6 ~-0.3 air run tag @s add test_head_air_3

tag @e[tag=up_stop2] remove test_head_air
tag @e[tag=up_stop2] remove test_head_air_2
tag @e[tag=up_stop2] remove test_head_air_3
execute as @e[tag=up_stop2,tag=ingravel] at @s if block ~0.3 ~2.7 ~0.3 air if block ~0.3 ~2.7 ~-0.3 air if block ~-0.3 ~2.7 ~0.3 air if block ~-0.3 ~2.7 ~-0.3 air run tag @s add test_head_air
execute as @e[tag=up_stop2,tag=ingravel] at @s if block ~0.3 ~2.1 ~0.3 air if block ~0.3 ~2.1 ~-0.3 air if block ~-0.3 ~2.1 ~0.3 air if block ~-0.3 ~2.1 ~-0.3 air run tag @s add test_head_air_2
execute as @e[tag=up_stop2,tag=ingravel] at @s if block ~0.3 ~1.6 ~0.3 air if block ~0.3 ~1.6 ~-0.3 air if block ~-0.3 ~1.6 ~0.3 air if block ~-0.3 ~1.6 ~-0.3 air run tag @s add test_head_air_3

tag @e[tag=up_stop3] remove test_head_air
tag @e[tag=up_stop3] remove test_head_air_2
tag @e[tag=up_stop3] remove test_head_air_3
execute as @e[tag=up_stop3,tag=ingravel] at @s if block ~0.2 ~1.7 ~0.2 air if block ~0.2 ~1.7 ~-0.2 air if block ~-0.2 ~1.7 ~0.2 air if block ~-0.2 ~1.7 ~-0.2 air run tag @s add test_head_air
execute as @e[tag=up_stop3,tag=ingravel] at @s if block ~0.2 ~1.1 ~0.2 air if block ~0.2 ~1.1 ~-0.2 air if block ~-0.2 ~1.1 ~0.2 air if block ~-0.2 ~1.1 ~-0.2 air run tag @s add test_head_air_2
execute as @e[tag=up_stop3,tag=ingravel] at @s if block ~0.2 ~0.6 ~0.2 air if block ~0.2 ~0.6 ~-0.2 air if block ~-0.2 ~0.6 ~0.2 air if block ~-0.2 ~0.6 ~-0.2 air run tag @s add test_head_air_3

tag @s[tag=!test_head_air_2,tag=!test_head_air_3] remove test_head_air

execute as @e[tag=up_stop,tag=ingravel,tag=!test_head_air] at @s run tag @s add suff

#
tag @e remove ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~ ~2 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~2 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~2 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~2 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~2 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~ ~1 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~1 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~0.3 ~1 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~1 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=low_position] at @s if block ~-0.3 ~1 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~ ~ ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~ ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~ ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~ ~0.9 ~ minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~0.9 ~0.3 minecraft:gravel run tag @s add ingravel
execute as @s at @s run execute as @e[distance=..2.5,tag=!me,tag=!low_position] at @s if block ~-0.3 ~0.9 ~-0.3 minecraft:gravel run tag @s add ingravel

execute as @e[tag=ingravel,tag=!suff,tag=turret] at @s run function game:ffa/turret/lift
execute as @e[tag=ingravel] at @s run tp @s ~ ~1 ~

tag @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3] remove test_head_air
tag @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3] remove test_head_air_2
tag @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3] remove test_head_air_3
execute as @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3,tag=ingravel] at @s if block ~0.3 ~1.7 ~0.3 air if block ~0.3 ~1.7 ~-0.3 air if block ~-0.3 ~1.7 ~0.3 air if block ~-0.3 ~1.7 ~-0.3 air run tag @s add test_head_air
execute as @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3,tag=ingravel] at @s if block ~0.3 ~1.1 ~0.3 air if block ~0.3 ~1.1 ~-0.3 air if block ~-0.3 ~1.1 ~0.3 air if block ~-0.3 ~1.1 ~-0.3 air run tag @s add test_head_air_2
execute as @e[tag=up_stop,tag=!up_stop2,tag=!up_stop3,tag=ingravel] at @s if block ~0.3 ~0.6 ~0.3 air if block ~0.3 ~0.6 ~-0.3 air if block ~-0.3 ~0.6 ~0.3 air if block ~-0.3 ~0.6 ~-0.3 air run tag @s add test_head_air_3

tag @e[tag=up_stop2] remove test_head_air
tag @e[tag=up_stop2] remove test_head_air_2
tag @e[tag=up_stop2] remove test_head_air_3
execute as @e[tag=up_stop2,tag=ingravel] at @s if block ~0.3 ~2.7 ~0.3 air if block ~0.3 ~2.7 ~-0.3 air if block ~-0.3 ~2.7 ~0.3 air if block ~-0.3 ~2.7 ~-0.3 air run tag @s add test_head_air
execute as @e[tag=up_stop2,tag=ingravel] at @s if block ~0.3 ~2.1 ~0.3 air if block ~0.3 ~2.1 ~-0.3 air if block ~-0.3 ~2.1 ~0.3 air if block ~-0.3 ~2.1 ~-0.3 air run tag @s add test_head_air_2
execute as @e[tag=up_stop2,tag=ingravel] at @s if block ~0.3 ~1.6 ~0.3 air if block ~0.3 ~1.6 ~-0.3 air if block ~-0.3 ~1.6 ~0.3 air if block ~-0.3 ~1.6 ~-0.3 air run tag @s add test_head_air_3

tag @e[tag=up_stop3] remove test_head_air
tag @e[tag=up_stop3] remove test_head_air_2
tag @e[tag=up_stop3] remove test_head_air_3
execute as @e[tag=up_stop3,tag=ingravel] at @s if block ~0.2 ~1.7 ~0.2 air if block ~0.2 ~1.7 ~-0.2 air if block ~-0.2 ~1.7 ~0.2 air if block ~-0.2 ~1.7 ~-0.2 air run tag @s add test_head_air
execute as @e[tag=up_stop3,tag=ingravel] at @s if block ~0.2 ~1.1 ~0.2 air if block ~0.2 ~1.1 ~-0.2 air if block ~-0.2 ~1.1 ~0.2 air if block ~-0.2 ~1.1 ~-0.2 air run tag @s add test_head_air_2
execute as @e[tag=up_stop3,tag=ingravel] at @s if block ~0.2 ~0.6 ~0.2 air if block ~0.2 ~0.6 ~-0.2 air if block ~-0.2 ~0.6 ~0.2 air if block ~-0.2 ~0.6 ~-0.2 air run tag @s add test_head_air_3

tag @s[tag=!test_head_air_2,tag=!test_head_air_3] remove test_head_air

execute as @e[tag=up_stop,tag=ingravel,tag=!test_head_air] at @s run tag @s add suff

#
scoreboard players set @a[tag=suff] invul 2
scoreboard players set @a[tag=suff] wall_invul 2
execute if entity @e[tag=suff] run scoreboard players set @s timer 20

tag @e remove suff

#
execute as @s at @s run tp @s ~ ~1 ~
playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.2 1
execute as @s at @s unless block ~ ~ ~ air run kill @s
tag @s remove me