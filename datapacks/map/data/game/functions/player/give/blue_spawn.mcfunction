give @s panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 1

scoreboard players remove @s drop_slime 1

execute as @s[scores={drop_slime=1..}] run function game:player/give/blue_spawn