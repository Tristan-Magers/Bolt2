give @s panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Trap","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 1

scoreboard players remove @s drop_creeper 1

execute as @s[scores={drop_creeper=1..}] run function game:player/give/trap