function game:id/spawn

give @s[tag=hasspawn,team=blue] panda_spawn_egg[custom_model_data={strings:["3"]},can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 1
give @s[tag=hasspawn,team=red] panda_spawn_egg[custom_model_data={strings:["2"]},can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0}] 1
tellraw @s[tag=hasspawn] [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]

kill @e[tag=spawn,tag=id_share]

tag @s remove hasspawn
tag @s remove spawn