give @s ender_pearl[custom_name='{"text":"Zoomies (8 Seconds)","italic":false,"color":"gray"}'] 1

scoreboard players remove @s drop_zoom 1

execute as @s[scores={drop_zoom=1..}] run function game:player/give/zoom