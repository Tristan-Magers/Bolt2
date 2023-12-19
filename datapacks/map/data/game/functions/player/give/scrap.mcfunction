give @s minecraft:netherite_scrap{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}} 1

scoreboard players remove @s drop_scrap 1

execute as @s[scores={drop_scrap=1..}] run function game:player/give/scrap

function game:player/scrap_correct