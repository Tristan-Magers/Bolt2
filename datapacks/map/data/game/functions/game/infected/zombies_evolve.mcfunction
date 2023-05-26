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

scoreboard players add .zombie_evolve_level .data 1

execute if score @p[tag=processor] random = .0 .num run scoreboard players set .zombie_evolve_type_0 .data 1
execute if score @p[tag=processor] random = .1 .num run scoreboard players set .zombie_evolve_type_1 .data 1
execute if score @p[tag=processor] random = .2 .num run scoreboard players set .zombie_evolve_type_2 .data 1
execute if score @p[tag=processor] random = .3 .num run scoreboard players set .zombie_evolve_type_3 .data 1
execute if score @p[tag=processor] random = .4 .num run scoreboard players set .zombie_evolve_type_4 .data 1
execute if score @p[tag=processor] random = .5 .num run scoreboard players set .zombie_evolve_type_5 .data 1
execute if score @p[tag=processor] random = .6 .num run scoreboard players set .zombie_evolve_type_6 .data 1
execute if score @p[tag=processor] random = .7 .num run scoreboard players set .zombie_evolve_type_7 .data 1

execute if score @p[tag=processor] random = .0 .num run say Zombies Evolved! [SPEED]
execute if score @p[tag=processor] random = .1 .num run say Zombies Evolved! [JUMP]
execute if score @p[tag=processor] random = .2 .num run say Zombies Evolved! [CLAWS]
execute if score @p[tag=processor] random = .3 .num run say Zombies Evolved! [MINIONS]
execute if score @p[tag=processor] random = .4 .num run say Zombies Evolved! [BOOST]
execute if score @p[tag=processor] random = .5 .num run say Zombies Evolved! [VISION]
execute if score @p[tag=processor] random = .6 .num run say Zombies Evolved! [ARMOR]
execute if score @p[tag=processor] random = .7 .num run say Zombies Evolved! [ACID]

execute as @a[team=red,tag=playing] at @s run function game:game/infected/zombie_bonuses

tag @a remove processor