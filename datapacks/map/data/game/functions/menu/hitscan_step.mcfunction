#
scoreboard players add @s timer 1

tp @s ^ ^ ^0.25

execute at @s run particle minecraft:ash ~ ~ ~

execute if entity @s[x=264.9,y=-53,z=-248.0,dx=2,dy=2,dz=2,scores={timer=..150}] run function game:menu/map_prev
execute if entity @s[x=264.9,y=-53,z=-248.0,dx=2,dy=2,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=264.9,y=-53,z=-245.0,dx=2,dy=2,dz=2,scores={timer=..150}] run function game:menu/map_next
execute if entity @s[x=264.9,y=-53,z=-245.0,dx=2,dy=2,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=264.9,y=-53,z=-225.0,dx=2,dy=2,dz=2,scores={timer=..150}] run function game:menu/mode_next
execute if entity @s[x=264.9,y=-53,z=-225.0,dx=2,dy=2,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..150}] if score .running .data = .1 .num run title @a title {"text":"Game in progress","color":"gray"}

execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..150}] if score .running .data = .0 .num if score .start_cd .data >= .0 .num run title @a title {"text":"Start Canceled","color":"gray"}
execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..150}] if score .running .data = .0 .num if score .start_cd .data >= .0 .num run scoreboard players set .start_cd .data -5
execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..150}] if score .running .data = .0 .num unless score .start_cd .data >= .0 .num unless score .start_cd .data = .n5 .num run scoreboard players set .start_cd .data 62
execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20] run scoreboard players set @s timer 1000

execute as @s[scores={timer=..150}] at @s run function game:menu/hitscan_step

kill @s