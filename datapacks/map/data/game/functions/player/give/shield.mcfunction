give @s iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1

scoreboard players remove @s drop_iron 1

execute as @s[scores={drop_iron=1..}] run function game:player/give/shield