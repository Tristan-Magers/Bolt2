function game:id/dynamic {"selector":"@e[type=slime]"}
execute if entity @e[type=slime,tag=id_share] run tellraw @s[scores={spawn_message_delay=..0}] [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]
execute if entity @e[type=slime,tag=id_share] run scoreboard players set @s spawn_message_delay 60
execute if entity @e[type=slime,tag=id_share] run give @s panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 1
execute if entity @e[type=slime,tag=id_share] run tag @s add used_spawn
kill @e[type=slime,tag=id_share]

scoreboard players operation @e[type=slime,limit=1,sort=nearest,tag=!old] ID = @s ID