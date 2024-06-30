give @s snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 1

scoreboard players remove @s drop_snowball 1

execute as @s[scores={drop_snowball=1..}] run function game:player/give/grenade