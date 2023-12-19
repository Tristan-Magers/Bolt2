#
scoreboard players add @s timer 1

tp @s ^ ^ ^0.25

execute at @s[scores={timer=2..160}] run particle minecraft:enchanted_hit ~ ~-0.02 ~

#execute if entity @s[x=262.5,y=-49.5,z=-252.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 5
execute if entity @s[x=262.5,y=-49.5,z=-252.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=5] run function game:menu/p_display/dead_head_start
execute if entity @s[x=262.5,y=-49.5,z=-252.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000
#execute if entity @s[x=259.5,y=-49.5,z=-255.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 6
execute if entity @s[x=259.5,y=-49.5,z=-255.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=6] run function game:menu/p_display/dead_head_start
execute if entity @s[x=259.5,y=-49.5,z=-255.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000

#execute if entity @s[x=262.5,y=-45.5,z=-252.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 1
execute if entity @s[x=262.5,y=-45.5,z=-252.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=1] run function game:menu/p_display/dead_head_start
execute if entity @s[x=262.5,y=-45.5,z=-252.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000
#execute if entity @s[x=259.5,y=-45.5,z=-255.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 2
execute if entity @s[x=259.5,y=-45.5,z=-255.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=2] run function game:menu/p_display/dead_head_start
execute if entity @s[x=259.5,y=-45.5,z=-255.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000

#execute if entity @s[x=262.5,y=-41.5,z=-252.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 3
execute if entity @s[x=262.5,y=-41.5,z=-252.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=3] run function game:menu/p_display/dead_head_start
execute if entity @s[x=262.5,y=-41.5,z=-252.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000
#execute if entity @s[x=259.5,y=-41.5,z=-255.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 4
execute if entity @s[x=259.5,y=-41.5,z=-255.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=4] run function game:menu/p_display/dead_head_start
execute if entity @s[x=259.5,y=-41.5,z=-255.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000

#execute if entity @s[x=262.5,y=-49.5,z=-221.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 11
execute if entity @s[x=262.5,y=-49.5,z=-221.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=11] run function game:menu/p_display/dead_head_start
execute if entity @s[x=262.5,y=-49.5,z=-221.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000
#execute if entity @s[x=259.5,y=-49.5,z=-218.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 12
execute if entity @s[x=259.5,y=-49.5,z=-218.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=12] run function game:menu/p_display/dead_head_start
execute if entity @s[x=259.5,y=-49.5,z=-218.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000

#execute if entity @s[x=262.5,y=-45.5,z=-221.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 7
execute if entity @s[x=262.5,y=-45.5,z=-221.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=7] run function game:menu/p_display/dead_head_start
execute if entity @s[x=262.5,y=-45.5,z=-221.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000
#execute if entity @s[x=259.5,y=-45.5,z=-218.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 8
execute if entity @s[x=259.5,y=-45.5,z=-218.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=8] run function game:menu/p_display/dead_head_start
execute if entity @s[x=259.5,y=-45.5,z=-218.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000

#execute if entity @s[x=262.5,y=-41.5,z=-221.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 9
execute if entity @s[x=262.5,y=-41.5,z=-221.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=9] run function game:menu/p_display/dead_head_start
execute if entity @s[x=262.5,y=-41.5,z=-221.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000
#execute if entity @s[x=259.5,y=-41.5,z=-218.5,dx=2,dy=3,dz=2,scores={timer=..160}] run say 10
execute if entity @s[x=259.5,y=-41.5,z=-218.5,dx=2,dy=3,dz=2,scores={timer=..160}] as @e[type=giant,tag=10] run function game:menu/p_display/dead_head_start
execute if entity @s[x=259.5,y=-41.5,z=-218.5,dx=2,dy=3,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=264.9,y=-53,z=-248.0,dx=2,dy=2,dz=2,scores={timer=..160}] run function game:menu/map_prev
execute if entity @s[x=264.9,y=-53,z=-248.0,dx=2,dy=2,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=264.9,y=-53,z=-245.0,dx=2,dy=2,dz=2,scores={timer=..160}] run function game:menu/map_next
execute if entity @s[x=264.9,y=-53,z=-245.0,dx=2,dy=2,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=264.9,y=-53,z=-225.0,dx=2,dy=2,dz=2,scores={timer=..160}] run function game:menu/mode_next
execute if entity @s[x=264.9,y=-53,z=-225.0,dx=2,dy=2,dz=2] run scoreboard players set @s timer 1000

execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..160}] if score .running .data = .1 .num run title @a[tag=lobby] title {"text":"Game in progress","color":"gray","font":"fancy"}

execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..160}] if score .running .data = .0 .num if score .start_cd .data >= .0 .num run title @a title {"text":"Start Canceled","color":"gray","font":"fancy"}
execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..160}] if score .running .data = .0 .num if score .start_cd .data >= .11 .num run scoreboard players set .start_cd .data -5
execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20,scores={timer=..160}] if score .running .data = .0 .num unless score .start_cd .data >= .0 .num unless score .start_cd .data = .n5 .num run scoreboard players set .start_cd .data 71
execute if entity @s[x=259.5,y=-55,z=-245.5,dx=5,dy=-1,dz=20] run scoreboard players set @s timer 1000

execute as @s[scores={timer=..160}] at @s run function game:menu/hitscan_step

kill @s