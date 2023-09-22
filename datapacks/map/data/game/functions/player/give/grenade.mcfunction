give @s snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1

scoreboard players remove @s drop_snowball 1

execute as @s[scores={drop_snowball=1..}] run function game:player/give/grenade