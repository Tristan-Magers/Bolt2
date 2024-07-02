give @s map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}',lore=['{"text":"See enemy players and placables through walls for 5 seconds","color":"white","italic":false}']] 1

scoreboard players remove @s drop_map 1

execute as @s[scores={drop_map=1..}] run function game:player/give/reveal