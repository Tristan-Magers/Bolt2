give @s map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}',lore=['{"text":"See enemy players and placables","color":"white","italic":false}','{"text":"through walls for 6 seconds","color":"white","italic":false}']] 1

scoreboard players remove @s drop_map 1

execute as @s[scores={drop_map=1..}] run function game:player/give/reveal