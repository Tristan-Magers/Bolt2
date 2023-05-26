#
scoreboard players add .zombie_evolve_timer .timer 1

execute if score .zombie_evolve_timer .timer >= .800 .num run scoreboard players add .zombie_evolve_level .data 1
execute if score .zombie_evolve_timer .timer >= .800 .num run function game:game/infected/zombies_evolve
execute if score .zombie_evolve_timer .timer >= .800 .num run scoreboard players set .zombie_evolve_timer .timer 200

scoreboard players set .zombie_crate_spawn_count .data 0
scoreboard players set .zombie_crate_count .data 0
execute as @e[tag=crate] run scoreboard players add .zombie_crate_count .data 1
execute as @e[tag=crate_marker,tag=spawning] run scoreboard players add .zombie_crate_spawn_count .data 1

execute unless entity @e[tag=crate_marker,tag=!spawning,tag=3] run tag @e[tag=crate_marker,tag=!spawning,tag=2] add 3
execute unless entity @e[tag=crate_marker,tag=!spawning,tag=2] run tag @e[tag=crate_marker,tag=!spawning,tag=1] add 2

execute if score .zombie_crate_spawn_count .data = .0 .num if score .zombie_crate_count .data = .0 .num run tag @e[tag=crate_marker,limit=1,sort=random,tag=!spawning,tag=3] add spawning
execute if score .zombie_crate_spawn_count .data = .0 .num if score .zombie_crate_count .data = .1 .num run tag @e[tag=crate_marker,limit=1,sort=random,tag=!spawning,tag=2] add spawning
execute if score .zombie_crate_spawn_count .data = .0 .num if score .zombie_crate_count .data = .2 .num run tag @e[tag=crate_marker,limit=1,sort=random,tag=!spawning] add spawning

scoreboard players add @e[tag=crate_marker,tag=spawning] t4 1
execute if score .zombie_crate_spawn_count .data = .0 .num run scoreboard players set @e[tag=crate_marker,tag=spawning,scores={t4=..100}] t4 140
execute as @e[tag=crate_marker,scores={t4=300..}] at @s run function game:game/infected/crates/spawn
