give @s map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}'] 1

scoreboard players remove @s drop_map 1

execute as @s[scores={drop_map=1..}] run function game:player/give/reveal