#
xp add @s 1 levels

# handle kills
scoreboard players remove @s[scores={kill=1..}] kill 1

scoreboard players add .Kills .metric 1

scoreboard players add @s kills 1
scoreboard players add @s killStreak 1

execute if score .mode .data = .6 .num as @s[team=blue] run scoreboard players add @s stats_inf_kill 1
execute if score .mode .data = .6 .num as @s[team=red] run scoreboard players add @s stats_sur_kill 1

#
#execute if score .tmi .data matches 1 run loot give @s[scores={killStreak=2}] mine 224 -60 -240 air{drop_contents:1b}
#execute if score .tmi .data matches 1 run loot give @s[scores={killStreak=3}] mine 224 -60 -242 air{drop_contents:1b}
#execute if score .tmi .data matches 1 run loot give @s[scores={killStreak=5}] mine 224 -60 -244 air{drop_contents:1b}

# set to zero on modes with no killstreak
execute if score .mode .data = .6 .num run scoreboard players set @s killStreak 0
execute if score .mode .data = .7 .num run scoreboard players set @s killStreak 0

#
execute if score .mode .data = .1 .num run clear @s[scores={kills=1}] written_book
execute if score .mode .data = .1 .num run clear @s[scores={kills=15}] written_book
execute if score .mode .data = .1 .num if score .tmi .data matches 0 run item replace entity @s[scores={kills=1}] hotbar.7 with written_book{title:"Item Book",author:"Bleps",generation:0,resolved:1b,pages:['[{"text":"_ How To Get Items _"},{"text":"\\n\\nKill Streak"},{"text":"\\n2 - Spawn point"},{"text":"\\n3 - Traps"},{"text":"\\n5 - Reveal"},{"text":"\\n\\nKills"},{"text":"\\n4 - Grenade"},{"text":"\\n5 - Walls"},{"text":"\\n15 - Crossbow"},{"text":"\\n\\nFlag Capture"},{"text":"\\nArmor"}]']} 1

# kill items
execute if score .tmi .data matches 0 run give @s[scores={killStreak=2},team=blue] panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 1
execute if score .tmi .data matches 0 run give @s[scores={killStreak=2},team=red] panda_spawn_egg[custom_model_data=2,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0}] 1

execute if score .tmi .data matches 0 run give @s[scores={killStreak=3}] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Trap","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 2
execute if score .tmi .data matches 0 run give @s[scores={killStreak=5}] map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}'] 1
execute if score .tmi .data matches 0 run give @s[scores={killStreak=7}] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Trap","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 2
execute if score .tmi .data matches 0 run give @s[scores={killStreak=10}] map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}'] 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .CrossKills .stats

execute if score .mode .data = .1 .num run give @s[scores={t=0}] crossbow[custom_name='{"text":"Crossbow (11 seconds)","italic":false,"color":"gray"}',Enchantments:[{id:"minecraft:quick_charge",lvl:1s}]] 1
execute if score .mode .data = .7 .num run give @s[scores={t=0,kills=..30}] crossbow[custom_name='{"text":"Crossbow (11 seconds)","italic":false,"color":"gray"}',Enchantments:[{id:"minecraft:quick_charge",lvl:4s}]] 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .GrenadeKills .stats

execute if score .mode .data = .1 .num run give @s[scores={t=0}] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}'] 1
execute if score .mode .data = .7 .num run give @s[scores={t=0,kills=..30}] snowball[custom_name='{"text":"Grenade (can\'t break emerald)","italic":false,"color":"gray"}'] 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .WallKills .stats

give @s[scores={t=0}] panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}'],EntityTag:{id:"minecraft:silverfish",Silent:1b,NoAI:1}] 4

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .BoostKills .stats

execute if score .mode .data = .7 .num run give @s[scores={t=0,kills=..30}] egg[custom_name='{"text":"Boost","italic":false,"color":"gray"}'] 1

#
scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .1Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -240 air{drop_contents:1b}

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .2Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -242 air{drop_contents:1b}

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .3Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -244 air{drop_contents:1b}

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .4Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -246 air{drop_contents:1b}

#
execute if score .mode .data = .7 .num run tellraw @s[scores={kills=30}] [{"text":"30 KILLS!!","color":"yellow"},{"text":" (No more items)","color":"gray"}]

# text
#execute if score .mode .data = .1 .num run tellraw @s[scores={t=0}] [{"text":"5 KILLS BONUS","color":"yellow"},{"text":" (5 Walls)","color":"gray"}]

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=3}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 3 KILL STREAK","color":"gold"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=5}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 5 KILL STREAK","color":"gold"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=7}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 7 KILL STREAK","color":"gold"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=10}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" !10! KILL STREAK","color":"gold"}]

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=15}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 15 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=30}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 30 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=45}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 45 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=60}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 60 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=75}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 75 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=90}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 90 KILLS","color":"yellow"}]

execute as @a[scores={kill=1..}] at @s run function game:player/kill

execute store result score @s[team=red] drop_magma run clear @s panda_spawn_egg{custom_model_data=3}
execute as @s[team=red,scores={drop_magma=1..}] run function game:player/give/red_spawn