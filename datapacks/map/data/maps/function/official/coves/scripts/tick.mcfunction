tag @a remove in_red_spawn
tag @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6] add in_red_spawn

execute unless score .mode .data = .6 .num run tag @a[x=-395,y=7,z=-625,distance=..7,tag=!in_red_spawn] add area1
execute unless score .mode .data = .6 .num run tag @a[x=-395,y=7,z=-625,distance=..7] remove area2

#execute unless score .mode .data = .6 .num run tag @a[x=-385,y=6,z=-614,distance=..7] add area2
execute unless score .mode .data = .6 .num run tag @a[x=-385,y=6,z=-614,distance=..7] remove area1

#execute unless score .mode .data = .6 .num run title @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue] title {"text":"Enemy Spawn"}

execute unless score .mode .data = .6 .num run title @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue,tag=area1] times 2 20 2
execute unless score .mode .data = .6 .num run title @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue,tag=area1] title {"text":"Enemy Spawn"}
execute unless score .mode .data = .6 .num run title @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue,tag=area1] subtitle {"text":"Can't enter from here"}
execute unless score .mode .data = .6 .num run tp @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue,tag=area1] -396 7 -620
execute unless score .mode .data = .6 .num run tp @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue,tag=area2] -388.5 7.5 -613.5

#execute unless score .mode .data = .6 .num run tag @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=blue] add danger

tag @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=red,scores={respawn=1..}] add not_left
execute as @a[team=red] unless entity @s[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6] run tag @s remove not_left
scoreboard players set @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=red,tag=not_left] invul 48

tag @a[z=-612,y=7,x=-397,dz=-6,dy=5,dx=6,team=red,tag=not_left] add inspawn

execute if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @a[z=-90,y=7,x=-397,dz=-6,dy=5,dx=6,team=red] add inspawn






tag @a remove in_blue_spawn
tag @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6] add in_blue_spawn

execute unless score .mode .data = .6 .num run tag @a[x=-395,y=7,z=-662,distance=..7,tag=!in_blue_spawn] add area1
execute unless score .mode .data = .6 .num run tag @a[x=-395,y=7,z=-662,distance=..7] remove area2

#execute unless score .mode .data = .6 .num run tag @a[x=-385,y=6,z=-673,distance=..7] add area2
execute unless score .mode .data = .6 .num run tag @a[x=-385,y=6,z=-673,distance=..7] remove area1

#execute unless score .mode .data = .6 .num run title @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red] title {"text":"Enemy Spawn"}

execute unless score .mode .data = .6 .num run title @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red,tag=area1] times 2 20 2
execute unless score .mode .data = .6 .num run title @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red,tag=area1] title {"text":"Enemy Spawn"}
execute unless score .mode .data = .6 .num run title @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red,tag=area1] subtitle {"text":"Can't enter from here"}
execute unless score .mode .data = .6 .num run tp @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red,tag=area1] -396 7 -668
execute unless score .mode .data = .6 .num run tp @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red,tag=area2] -388.5 7.5 -673.5

#execute unless score .mode .data = .6 .num run tag @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=red] add danger

tag @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=blue,scores={respawn=1..}] add not_left
execute as @a[team=blue] unless entity @s[z=-676,y=7,x=-397,dz=6,dy=5,dx=6] run tag @s remove not_left
scoreboard players set @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=blue,tag=not_left] invul 48

tag @a[z=-676,y=7,x=-397,dz=6,dy=5,dx=6,team=blue,tag=not_left] add inspawn

execute if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @a[z=-676,y=5,x=-397,dz=6,dy=5,dx=6,team=blue] add inspawn
