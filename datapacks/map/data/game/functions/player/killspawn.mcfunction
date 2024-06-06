function game:id/spawn

give @s[tag=hasspawn,team=blue] panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 1
give @s[tag=hasspawn,team=red] panda_spawn_egg[custom_model_data=2,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0}] 1
tellraw @s[tag=hasspawn] [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]

kill @e[tag=spawn,tag=id_share]

tag @s remove hasspawn
tag @s remove spawn