function game:id/player

tag @s add kill
tellraw @p[tag=id_share] {"text":"Can't place there!","color":"dark_gray"}
give @p[tag=id_share] panda_spawn_egg[custom_model_data={strings:["0"]},can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Trap","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 1