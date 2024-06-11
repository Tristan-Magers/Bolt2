give @s panda_spawn_egg[custom_model_data=2,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',entity_data={id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0}] 1

scoreboard players remove @s drop_magma 1

execute as @s[scores={drop_magma=1..}] run function game:player/give/red_spawn