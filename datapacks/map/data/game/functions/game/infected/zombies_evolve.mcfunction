#

tag @a remove processor
tag @p add processor

execute as @p[tag=processor] run function game:algor/random_8

function game:game/infected/ran_check
function game:game/infected/ran_check
function game:game/infected/ran_check
function game:game/infected/ran_check
function game:game/infected/ran_check
function game:game/infected/ran_check
function game:game/infected/ran_check
function game:game/infected/ran_check

#scoreboard players add .zombie_evolve_level .data 1

execute if score @p[tag=processor] random = .0 .num run scoreboard players set .zombie_evolve_type_0 .data 1
execute if score @p[tag=processor] random = .1 .num run scoreboard players set .zombie_evolve_type_1 .data 1
execute if score @p[tag=processor] random = .2 .num run scoreboard players set .zombie_evolve_type_2 .data 1
execute if score @p[tag=processor] random = .3 .num run scoreboard players set .zombie_evolve_type_3 .data 1
execute if score @p[tag=processor] random = .4 .num run scoreboard players set .zombie_evolve_type_4 .data 1
execute if score @p[tag=processor] random = .5 .num run scoreboard players set .zombie_evolve_type_5 .data 1
execute if score @p[tag=processor] random = .6 .num run scoreboard players set .zombie_evolve_type_6 .data 1
execute if score @p[tag=processor] random = .7 .num run scoreboard players set .zombie_evolve_type_7 .data 1
execute if score @p[tag=processor] random = .8 .num run scoreboard players set .zombie_evolve_type_8 .data 1

execute if score @p[tag=processor] random = .0 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Speed","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϰ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .1 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Jump","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϠ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .2 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Claws","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϯ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .3 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Minions","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϪ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .4 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Boost","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϻ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .5 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Vision","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބδ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .6 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Blast Res.","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϮ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .7 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Acid","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϼ","bold":false,"color":"gray"}]
execute if score @p[tag=processor] random = .8 .num run tellraw @a [{"text":"Zombies Evolved!","bold":false,"color":"#71A873"},{"text":" [","bold":false,"color":"white"},{"text":"Spawns","bold":false,"color":"white"},{"text":"]","bold":false,"color":"white"},{"text":"ބބϼ","bold":false,"color":"gray"}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 0.8

scoreboard players operation ބބބބބބ evolutions = .zombie_evolve_level .data
scoreboard players add ބބބބބބ evolutions 1
#scoreboard players set ބބބEVOLUTIONS:ބބބ evolutions 1
execute if score @p[tag=processor] random = .0 .num run scoreboard players operation ϰބބބSpeed evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .1 .num run scoreboard players operation ϠބބބJump evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .2 .num run scoreboard players operation ϯބބބClaws evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .3 .num run scoreboard players operation ϪބބބMinions evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .4 .num run scoreboard players operation ϻބބބBoost evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .5 .num run scoreboard players operation δބބބVision evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .6 .num run scoreboard players operation ϮބބބBlastބބRes. evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .7 .num run scoreboard players operation ϼބބބAcid evolutions = .zombie_evolve_level .data
execute if score @p[tag=processor] random = .8 .num run scoreboard players operation ϼބބބSpawns evolutions = .zombie_evolve_level .data

team join gray ބބބEVOLUTIONS:ބބބ
team join gray ϮބބބBlastބބRes.
team join gray ϰބބބSpeed
team join gray ϻބބބBoost
team join gray ϠބބބJump
team join gray ϯބބބClaws
team join gray ϪބބބMinions
team join gray δބބބVision
team join gray ϼބބބAcid
team join gray ϼބބބSpawns

execute as @a[team=red,tag=playing] at @s run function game:game/infected/zombie_bonuses

tag @a remove processor