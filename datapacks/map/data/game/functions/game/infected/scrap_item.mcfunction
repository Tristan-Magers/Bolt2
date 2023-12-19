execute as @s at @s positioned ~ ~-1 ~ run give @p[team=blue,gamemode=adventure,distance=..1.2] minecraft:netherite_scrap{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}} 1
execute as @s at @s positioned ~ ~-1 ~ as @p[team=blue,gamemode=adventure,distance=..1.2] run function game:player/scrap_correct
execute as @s at @s positioned ~ ~-1 ~ if entity @a[team=blue,gamemode=adventure,distance=..1.2] run kill @s
execute as @s at @s run give @p[team=blue,gamemode=adventure,distance=..1.2] minecraft:netherite_scrap{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}} 1
execute as @s at @s as @p[team=blue,gamemode=adventure,distance=..1.2] run function game:player/scrap_correct
execute as @s at @s if entity @a[team=blue,gamemode=adventure,distance=..1.2] run kill @s
effect give @s minecraft:glowing infinite 10 true
