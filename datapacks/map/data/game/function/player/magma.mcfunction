function game:id/dynamic {"selector":"@e[type=magma_cube]"}
execute if entity @e[type=magma_cube,tag=id_share] run tellraw @s[scores={spawn_message_delay=..0}] [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]
execute if entity @e[type=magma_cube,tag=id_share] run scoreboard players set @s spawn_message_delay 60
execute if entity @e[type=magma_cube,tag=id_share] run give @s panda_spawn_egg[custom_model_data={strings:["2"]},can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0}] 1
execute if entity @e[type=magma_cube,tag=id_share] run tag @s add used_spawn
kill @e[type=magma_cube,tag=id_share]

scoreboard players operation @e[type=magma_cube,limit=1,sort=nearest,tag=!old] ID = @s ID