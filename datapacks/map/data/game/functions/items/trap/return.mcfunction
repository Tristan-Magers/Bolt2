function game:id/player

tag @s add kill
tellraw @p[tag=id_share] {"text":"Can't place there!","color":"dark_gray"}
give @p[tag=id_share] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Trap","italic":false,"color":"gray"}',entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 1