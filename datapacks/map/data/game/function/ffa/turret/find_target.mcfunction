# say running find_target.mcfunction ...

#> Find potential targets
function game:id/player

#execute if entity @a[tag=id_share,team=red] run team join red
#execute if entity @a[tag=id_share,team=blue] run team join blue

tag @e remove can_target
tag @e remove dont_target
execute as @s[team=red] run tag @e[team=red] add dont_target
execute as @s[team=blue] run tag @e[team=blue] add dont_target

tag @a[gamemode=!spectator,distance=..19.5,tag=!dont_target,scores={invul=..0},limit=1,sort=nearest] add can_target
tag @a[gamemode=!spectator,distance=..19.5,tag=!dont_target,scores={invul=..0},limit=1,sort=random,tag=!can_target] add can_target
tag @e[type=minecraft:zombie_villager,distance=..19.5,tag=!dont_target,limit=1,sort=nearest] add can_target
tag @e[type=minecraft:zombie_villager,distance=..19.5,tag=!dont_target,limit=1,sort=random,tag=!can_target] add can_target

#tag @e[tag=targeted] remove can_target

tag @s add targeting
execute as @e[tag=can_target,limit=5,sort=nearest] at @s unless score @s invul matches 1.. run function game:ffa/turret/sort_targets
tag @s remove targeting

#> Target setup
tag @s remove minion_target
execute if entity @e[tag=targetSpawn,tag=!targeted] run tag @e[tag=targeted] remove targetSpawn
execute if entity @a[tag=targetSpawn] run tag @e[type=minecraft:zombie_villager] remove targetSpawn
tag @e[sort=nearest,limit=1,tag=targetSpawn] add targeted

execute as @e[tag=targetSpawn,sort=nearest,limit=1,tag=!turret_id] run function game:items/newid_turret

scoreboard players operation @s ID.target = @e[tag=targetSpawn,sort=nearest,limit=1] ID.turret
execute if entity @e[tag=targetSpawn,type=minecraft:zombie_villager] run tag @s add minion_target
execute if entity @e[tag=targetSpawn] run tag @s add hasTarget
execute as @e[tag=targetSpawn,sort=nearest,limit=1] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

#> FX
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:block.note_block.chime master @s ~ ~1 ~ 1 1.9
execute if entity @e[tag=targetSpawn] run playsound minecraft:entity.iron_golem.repair master @a ~1 ~ ~ 1 2

#> Cleanup
tag @e[tag=targetSpawn] remove targetSpawn