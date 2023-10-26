tag @a remove trap_dif
tag @a remove wall_dif
tag @a remove magma_dif
tag @a remove slime_dif

execute as @a store result score @s trapCount run clear @s minecraft:panda_spawn_egg{CustomModelData:0} 0
execute as @a store result score @s wallCount run clear @s minecraft:panda_spawn_egg{CustomModelData:1} 0
execute as @a store result score @s magmaCount run clear @s minecraft:panda_spawn_egg{CustomModelData:2} 0
execute as @a store result score @s slimeCount run clear @s minecraft:panda_spawn_egg{CustomModelData:3} 0

execute as @a unless score @s wallCountT = @s wallCount run tag @a add wall_dif
execute as @a unless score @s trapCountT = @s trapCount run tag @a add trap_dif
execute as @a unless score @s magmaCountT = @s magmaCount run tag @a add magma_dif
execute as @a unless score @s slimeCountT = @s slimeCount run tag @a add slime_dif

execute as @a run scoreboard players operation @s wallCountT = @s wallCount
execute as @a run scoreboard players operation @s trapCountT = @s trapCount
execute as @a run scoreboard players operation @s magmaCountT = @s magmaCount
execute as @a run scoreboard players operation @s slimeCountT = @s slimeCount