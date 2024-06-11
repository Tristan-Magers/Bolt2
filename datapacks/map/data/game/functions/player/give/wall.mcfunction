give @s panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}'],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}] 1

scoreboard players remove @s drop_silver 1

execute as @s[scores={drop_silver=1..}] run function game:player/give/wall