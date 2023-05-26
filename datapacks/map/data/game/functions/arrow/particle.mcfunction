scoreboard players operation @a ID -= @s ID

execute at @s run particle minecraft:spit ~ ~ ~ 0.2 0.1 0.2 0.06 5 force @a[scores={ID=1..}]
execute at @s run particle minecraft:spit ~ ~ ~ 0.2 0.1 0.2 0.06 5 force @a[scores={ID=..-1}]

execute as @s[scores={bow_texture=0}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[scores={ID=0}]

execute as @s[scores={bow_texture=1}] at @s run particle minecraft:witch ~ ~ ~ 0.3 0.3 0.3 0.15 8 force @a[scores={ID=0}]

execute as @s[scores={bow_texture=2}] at @s run particle minecraft:item carrot ~ ~ ~ 0.2 0.2 0.2 0.15 8 force @a[scores={ID=0}]
execute as @s[scores={bow_texture=3}] at @s run particle minecraft:wax_off ~ ~ ~ 0.3 0.3 0.3 0.1 7 force @a[scores={ID=0}]
execute as @s[scores={bow_texture=4}] at @s run particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.1 6 force @a[scores={ID=0}]

execute as @s[scores={bow_texture=5..14}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[scores={ID=0}]

execute as @s[scores={bow_texture=15}] at @s run particle minecraft:spit ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[scores={ID=0}]
execute as @s[scores={bow_texture=15}] at @s run particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[scores={ID=0}]

execute as @s[scores={bow_texture=16..}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[scores={ID=0}]

scoreboard players operation @a ID += @s ID