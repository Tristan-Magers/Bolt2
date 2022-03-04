tp @s ~ ~ ~ ~4 0
execute as @s[team=red] run particle minecraft:wax_on ^ ^.1 ^3.65 0 0 0 0 1 force @a[team=red]
execute as @s[team=red] run particle minecraft:wax_off ^ ^.1 ^4.8 0 0 0 0 1 force @a[team=red]

execute as @s[team=blue] run particle minecraft:wax_on ^ ^.1 ^3.65 0 0 0 0 1 force @a[team=blue]
execute as @s[team=blue] run particle minecraft:wax_off ^ ^.1 ^4.8 0 0 0 0 1 force @a[team=blue]

scoreboard players remove @s t5 1

execute as @s[scores={t5=1..}] at @s run function game:items/trap/particle_rec