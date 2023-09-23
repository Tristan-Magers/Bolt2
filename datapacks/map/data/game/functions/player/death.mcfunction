#
scoreboard players set @s invul 20

#
execute as @s[team=blue,nbt={Inventory:[{id:"minecraft:netherite_scrap"}]}] if score .mode .data = .6 .num at @s positioned ~ ~1 ~ run summon item ~ ~ ~ {Team:"purple",Glowing:1b,Motion:[0.0,0.3,0.00],Age:5600,PickupDelay:32767,Tags:["no_kill","death_obj","scrap"],Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}}}}
execute as @s[team=red] if score .mode .data = .6 .num at @s positioned ~ ~1 ~ run summon item ~ ~ ~ {Team:"purple",Glowing:1b,Motion:[0.0,0.3,0.00],Age:5600,PickupDelay:32767,Tags:["no_kill","death_obj","scrap"],Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}}}}
team join gold @e[type=minecraft:item,tag=scrap]

#
tag @a remove me
tag @s add me

tag @s remove no_killer
tag @s[scores={KILL_ID=0}] add no_killer

scoreboard players set .success .calc 0
execute store success score .success .calc run effect clear @s minecraft:poison

tag @s remove killed_by_poison
execute if score .success .calc = .1 .num run tag @s[tag=poison_range] add killed_by_poison

tag @s remove killed_by_zombie
execute on attacker as @s[type=zombie_villager] run scoreboard players operation @p[tag=no_killer,tag=me] KILL_ID = @s ID
execute on attacker as @s[type=zombie_villager] run tag @p[tag=no_killer,tag=me] add killed_by_zombie

tag @s remove killed_by_claw
execute as @a[tag=!me,scores={sword_break=1..}] at @s run tag @p[tag=no_killer,tag=me,distance=..8] add killed_by_claw
execute as @a[tag=!me,scores={sword_break=1..}] if entity @p[tag=no_killer,tag=me,distance=..8] run scoreboard players operation @p[tag=no_killer,tag=me,distance=..8] KILL_ID = @s ID

scoreboard players operation @a ID -= @s KILL_ID

execute as @s[tag=killed_by_poison] run tellraw @a [{"text":"☣ ","color":"dark_green"},{"selector":"@p[scores={ID=0}]"},{"text":"'s Acid disolved ","color":"white"},{"selector":"@s"}]
execute as @s[tag=killed_by_zombie] run tellraw @a [{"text":"☻ ","color":"dark_green"},{"selector":"@p[scores={ID=0}]"},{"text":"'s Minion bit ","color":"white"},{"selector":"@s"}]
execute as @s[tag=killed_by_claw] run tellraw @a [{"text":"⚚ ","color":"gray"},{"selector":"@p[scores={ID=0}]"},{"text":" Clawed ","color":"white"},{"selector":"@s"}]

execute as @s[tag=killed_by_poison,team=blue] run scoreboard players add @p[scores={ID=0}] kills 1
execute as @s[tag=killed_by_zombie,team=blue] run scoreboard players add @p[scores={ID=0}] kills 1
execute as @s[tag=killed_by_claw,team=blue] run scoreboard players add @p[scores={ID=0}] kills 1

scoreboard players operation @a ID += @s KILL_ID

#
gamemode spectator @s
execute as @s at @s run tp @s ~ ~ ~ ~ 0
clear @s arrow
clear @s iron_ingot
clear @s bow
give @s bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
effect give @s minecraft:wither 1 1
scoreboard players set @s time_dead 0
scoreboard players set @s respawn 70
scoreboard players set @s respawning_time 0

execute if score .blue_players .data matches 1 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=blue] respawn 45
execute if score .blue_players .data matches 1 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=blue] respawn 40
execute if score .blue_players .data matches 1 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=blue] respawn 35
execute if score .red_players .data matches 1 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=red] respawn 45
execute if score .red_players .data matches 1 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=red] respawn 40
execute if score .red_players .data matches 1 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=red] respawn 35

execute if score .blue_players .data matches 2 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=blue] respawn 60
execute if score .blue_players .data matches 2 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=blue] respawn 50
execute if score .blue_players .data matches 2 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=blue] respawn 40
execute if score .red_players .data matches 2 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=red] respawn 60
execute if score .red_players .data matches 2 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=red] respawn 50
execute if score .red_players .data matches 2 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=red] respawn 40

execute if score .blue_players .data matches 1 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 100
execute if score .blue_players .data matches 1 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 130
execute if score .blue_players .data matches 1 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 160
execute if score .red_players .data matches 1 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 100
execute if score .red_players .data matches 1 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 130
execute if score .red_players .data matches 1 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 160

execute if score .blue_players .data matches 2 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 90
execute if score .blue_players .data matches 2 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 110
execute if score .blue_players .data matches 2 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 130
execute if score .red_players .data matches 2 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 90
execute if score .red_players .data matches 2 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 110
execute if score .red_players .data matches 2 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 130

execute if score .blue_players .data matches 3 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 80
execute if score .blue_players .data matches 3 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 90
execute if score .blue_players .data matches 3 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 100
execute if score .red_players .data matches 3 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 80
execute if score .red_players .data matches 3 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 90
execute if score .red_players .data matches 3 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 100

execute as @s run scoreboard players remove @s respawn_assist 180
execute as @s run scoreboard players operation @s respawn_assist /= .6 .num
execute as @s run scoreboard players operation @s respawn += @s respawn_assist
scoreboard players set @s[scores={deaths=1..,respawn=..31}] respawn 31

execute if score .mode .data = .6 .num as @s[team=blue] run title @a times 5 20 10
execute if score .mode .data = .6 .num as @s[team=blue] run title @a title {"text":" "}
execute if score .mode .data = .6 .num as @s[team=blue] run title @a subtitle {"text":"☠ Survivor Died ☠"}
execute if score .mode .data = .6 .num as @s[team=blue] as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 2

execute if score .mode .data = .6 .num run clear @s[team=blue]
execute if score .mode .data = .6 .num run tag @s[team=blue] add blue_
execute if score .mode .data = .6 .num run team join red @s[team=blue]
execute if score .mode .data = .6 .num run scoreboard players set @s respawn 20
execute if score .mode .data = .6 .num if score .zombie_evolve_level .data = .1 .num run scoreboard players add @s respawn 15
execute if score .mode .data = .6 .num if score .zombie_evolve_level .data = .2 .num run scoreboard players add @s respawn 15
execute if score .mode .data = .6 .num if score .zombie_evolve_level .data = .3 .num run scoreboard players add @s respawn 15
execute if score .mode .data = .6 .num if score .zombie_evolve_level .data >= .4 .num run scoreboard players add @s respawn 15
execute if score .mode .data = .6 .num if score .team_dif .data >= .n2 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .team_dif .data >= .n1 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .team_dif .data >= .0 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .team_dif .data >= .1 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .team_dif .data >= .2 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .team_dif .data >= .3 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .team_dif .data >= .4 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .players_in .data = .2 .num run scoreboard players add @s respawn 30
execute if score .mode .data = .6 .num if score .players_in .data = .3 .num run scoreboard players add @s respawn 10
execute if score .mode .data = .6 .num if score .players_in .data = .5 .num run scoreboard players add @s respawn 40
execute if score .mode .data = .6 .num if score .players_in .data = .6 .num run scoreboard players add @s respawn 50
execute if score .mode .data = .6 .num if score .players_in .data >= .7 .num run scoreboard players add @s respawn 30

scoreboard players set @s deaths 0

#
clear @s arrow

execute at @s[tag=hasflag,team=red] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag","drop"]}
execute at @s[tag=hasflag,team=blue] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag","drop"]}

tag @s remove hasflag

#
particle minecraft:flash ~ ~1 ~
particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 .5 7 force

playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt_freeze master @a
playsound minecraft:entity.player.death master @a ~ ~ ~ 1 0.65
playsound minecraft:entity.evoker.death master @a ~ ~ ~ 0.4 1.7
playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 0.15 2

execute as @s[scores={death_ani=0}] at @s positioned ~ ~1 ~ run summon item ^0.1 ^-0.1 ^0.1 {Motion:[-0.16,0.3,0.06],Age:5800,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:bow",Count:1b}}
execute as @s[scores={death_ani=0},team=red] at @s positioned ~ ~1 ~ run summon item ^0.2 ^0.1 ^-0.2 {Motion:[0.14,0.25,-0.07],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=0},team=red] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^ ^0.2 {Motion:[0.09,0.2,0.15],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=0},team=blue] at @s positioned ~ ~1 ~ run summon item ^0.2 ^0.1 ^-0.2 {Motion:[0.14,0.25,-0.07],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:22015}}}}
execute as @s[scores={death_ani=0},team=blue] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^ ^0.2 {Motion:[0.09,0.2,0.15],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}}}

execute as @s[scores={death_ani=1}] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^-0.1 ^0.1 {Motion:[-0.14,0.3,-0.06],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:bow",Count:1b}}
execute as @s[scores={death_ani=1},team=red] at @s positioned ~ ~1 ~ run summon item ^-0.2 ^0.1 ^0.2 {Motion:[0.12,0.25,0.09],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=1},team=red] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^ ^0.1 {Motion:[0.04,0.2,-0.13],Age:5800,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=1},team=blue] at @s positioned ~ ~1 ~ run summon item ^-0.2 ^0.1 ^0.2 {Motion:[0.12,0.25,0.09],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:22015}}}}
execute as @s[scores={death_ani=1},team=blue] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^ ^0.1 {Motion:[0.04,0.2,-0.13],Age:5800,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}}}

execute as @s[scores={death_ani=2}] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^-0.1 ^-0.1 {Motion:[0.14,0.3,-0.06],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:bow",Count:1b}}
execute as @s[scores={death_ani=2},team=red] at @s positioned ~ ~1 ~ run summon item ^-0.2 ^0.1 ^0.2 {Motion:[0.12,0.25,0.09],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=2},team=red] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^ ^0.1 {Motion:[-0.09,0.2,-0.13],Age:5800,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=2},team=blue] at @s positioned ~ ~1 ~ run summon item ^-0.2 ^0.1 ^0.2 {Motion:[0.12,0.25,0.09],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:22015}}}}
execute as @s[scores={death_ani=2},team=blue] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^ ^0.1 {Motion:[-0.09,0.2,-0.13],Age:5800,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}}}

execute as @s[scores={death_ani=3}] at @s positioned ~ ~1 ~ run summon item ^0.1 ^-0.1 ^-0.1 {Motion:[0.14,0.3,0.08],Age:5800,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:bow",Count:1b}}
execute as @s[scores={death_ani=3},team=red] at @s positioned ~ ~1 ~ run summon item ^0.2 ^0.2 ^-0.2 {Motion:[-0.12,0.25,0.1],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=3},team=red] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^-0.1 ^0.0 {Motion:[0.12,0.2,-0.13],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}}}
execute as @s[scores={death_ani=3},team=blue] at @s positioned ~ ~1 ~ run summon item ^0.2 ^0.2 ^-0.2 {Motion:[-0.12,0.25,0.1],Age:5820,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:22015}}}}
execute as @s[scores={death_ani=3},team=blue] at @s positioned ~ ~1 ~ run summon item ^-0.1 ^-0.1 ^0.0 {Motion:[0.12,0.2,-0.13],Age:5810,PickupDelay:32767,Tags:["no_kill","death_obj"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}}}

#
tag @s remove me