scoreboard players set @s removeBlind 7
scoreboard players set @s fog_remove 4
scoreboard players set @s[scores={capture_time=10..29}] capture_time 10
effect give @s minecraft:blindness 1 100 true
effect give @s minecraft:slowness 1 1 true

playsound minecraft:item.totem.use master @a ~ ~ ~ 0.6 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.6 100 force

clear @s iron_ingot 1
scoreboard players set @s deaths 0
scoreboard players set @s invul 16
scoreboard players set @s no_cap 26

execute at @s[tag=hasflag] run title @s times 4 10 4
execute at @s[tag=hasflag] run title @s title {"text":"FLAG DROPPED","color":"gold"}

execute at @s[tag=hasflag,team=red] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:blue_banner",count:1}},Tags:["blueflag","flag","drop"]}
execute at @s[tag=hasflag,team=blue] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:red_banner",count:1}},Tags:["redflag","flag","drop"]}

tag @s remove hasflag

effect clear @s minecraft:poison