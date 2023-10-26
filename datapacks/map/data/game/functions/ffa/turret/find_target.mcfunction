# say running find_target.mcfunction ...

#> Find potential targets
function game:id/player

tag @s add targeting
execute at @a[gamemode=!spectator,distance=..24,tag=!targeted] unless score @p deflectTimer matches 1.. unless entity @p[tag=id_share] unless score @p invul matches 1.. run execute as @p run function game:ffa/turret/sort_targets
tag @s remove targeting

#> Target setup
tag @e[sort=nearest,limit=1,tag=targetSpawn] add targeted
scoreboard players operation @e[tag=targetSpawn,sort=nearest,limit=1] ID.target = @s ID
execute if entity @e[tag=targetSpawn] run tag @s add hasTarget

#> FX
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:entity.iron_golem.repair master @a ~1 ~ ~ 1 2

#> Cleanup
tag @e[tag=targetSpawn] remove targetSpawn