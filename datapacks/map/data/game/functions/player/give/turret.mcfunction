give @s panda_spawn_egg[custom_model_data=4,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Turret","italic":false,"color":"gray"}',entity_data={id:"minecraft:pig",PersistenceRequired:0b,Silent:1b,NoAI:1,IsBaby:0b,Health:10f}] 1

scoreboard players remove @s drop_turret 1

execute as @s[scores={drop_turret=1..}] run function game:player/give/turret