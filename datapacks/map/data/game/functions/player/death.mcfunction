#
clear @s arrow

execute at @s[tag=hasflag,team=red] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag","drop"]}
execute at @s[tag=hasflag,team=blue] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag","drop"]}

tag @s remove hasflag

#
particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 .5 7 force

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
