execute as @s[team=red] run effect give @e[team=blue] minecraft:glowing 6 10
execute as @s[team=red] run effect give @e[type=slime] minecraft:glowing 6 10
execute as @s[team=blue] run effect give @e[team=red] minecraft:glowing 6 10
execute as @s[team=blue] run effect give @e[type=magma_cube] minecraft:glowing 6 10

execute as @s[team=red] run title @a[team=blue] times 6 20 14
execute as @s[team=blue] run title @a[team=red] times 6 20 14
execute as @s[team=red] run title @a[team=blue] title {"text":"!! REVEALED !!","bold":"true"}
execute as @s[team=blue] run title @a[team=red] title {"text":"!! REVEALED !!","bold":"true"}

scoreboard players set @s useMap 0

tellraw @a [{"selector":"@s"},{"text":" used","color":"white"},{"text":" REVEAL","color":"light_purple"}]