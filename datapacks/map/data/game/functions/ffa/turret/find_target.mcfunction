#> Find potential targets
scoreboard players operation @a ID -= @s ID
tag @s add targeting
# Change commented line to allow function on entities
# execute at @a[distance=..24,gamemode=!spectator,sort=nearest] unless score @p deflectTimer matches 1.. unless score @p ID matches 0 run function game:ffa/turret/sort_targets
execute at @e[distance=..24,sort=nearest] unless score @e[sort=nearest,limit=1] deflectTimer matches 1.. unless score @e[sort=nearest,limit=1] ID matches 0 run function game:ffa/turret/sort_targets
tag @s remove targeting

#> Target setup
tag @e[sort=nearest,tag=targetSpawn] add targeted
scoreboard players operation @e[tag=targetSpawn,sort=nearest] ID.target = @s ID
execute if entity @e[tag=targetSpawn] run tag @s add hasTarget

#> FX
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:entity.iron_golem.repair master @a ~1 ~ ~ 1 2
tag @e[tag=targetSpawn] remove targetSpawn