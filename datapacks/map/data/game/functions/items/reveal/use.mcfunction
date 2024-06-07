execute as @s[team=red] run scoreboard players set @e[team=blue] glowing 120
execute as @s[team=blue] run scoreboard players set @e[team=red] glowing 120
execute as @s[team=red] run effect give @e[team=blue,type=!pig] minecraft:glowing 6 10 true
execute as @s[team=red] run effect give @e[type=slime] minecraft:glowing 6 10 true
execute as @s[team=blue] run effect give @e[team=red,type=!pig] minecraft:glowing 6 10 true
execute as @s[team=blue] run effect give @e[type=magma_cube] minecraft:glowing 6 10 true

execute as @s[team=red] run title @a[team=blue] times 6 20 14
execute as @s[team=blue] run title @a[team=red] times 6 20 14
execute as @s[team=red] run title @a[team=blue] title {"text":"!! REVEALED !!","bold":true}
execute as @s[team=blue] run title @a[team=red] title {"text":"!! REVEALED !!","bold":true}

execute as @s[team=red] as @a[team=blue,tag=playing] at @s run playsound minecraft:entity.elder_guardian.death master @s ~ ~ ~ 1 1
execute as @s[team=blue] as @a[team=red,tag=playing] at @s run playsound minecraft:entity.elder_guardian.death master @s ~ ~ ~ 1 1

execute as @s[team=red] as @a[team=blue,tag=playing] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute as @s[team=blue] as @a[team=red,tag=playing] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1

execute as @s[team=red] as @a[team=red,tag=playing] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
execute as @s[team=red] as @a[team=red,tag=playing] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 0.5

execute as @s[team=blue] as @a[team=blue,tag=playing] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
execute as @s[team=blue] as @a[team=blue,tag=playing] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 0.5

execute as @s[team=red] as @a[team=blue,tag=playing] at @s run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 1 1 force @s
execute as @s[team=blue] as @a[team=red,tag=playing] at @s run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 1 1 force @s

scoreboard players set @s useMap 0

tellraw @a [{"selector":"@s"},{"text":" used","color":"white"},{"text":" REVEAL","color":"light_purple"}]

#
clear @s minecraft:filled_map

#
scoreboard players set @s delay_reveal 90