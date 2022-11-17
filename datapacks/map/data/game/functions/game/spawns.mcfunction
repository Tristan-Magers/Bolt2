#red spawn
#towers
scoreboard players set @a[x=-86,z=53,y=-50.5,dx=7,dy=4,dz=-7] invul 40
scoreboard players set @a[x=-78,z=53,y=-50.5,dx=2.5,dy=4,dz=-7] invul 40
scoreboard players set @a[x=-84,z=46,y=-50.5,dx=4,dy=4,dz=-3] invul 40

#caves
tag @a[x=-156,y=-54,z=40,distance=..7] add area1
tag @a[x=-156,y=-54,z=40,distance=..7] remove area2

tag @a[x=-146,y=-55,z=51,distance=..7] add area2
tag @a[x=-146,y=-55,z=51,distance=..7] remove area1

title @a[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6,team=blue] title {"text":"Enemy Spawn"}

tp @a[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6,team=blue,tag=area1] -157 -54.0 45
tp @a[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6,team=blue,tag=area2] -149.5 -54.50 51.5

tag @a[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6,team=blue] add danger

tag @a[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6,team=red,scores={respawn=1..}] add not_left
execute as @a[team=red] unless entity @s[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6] run tag @s remove not_left
scoreboard players set @a[z=53,y=-54,x=-158,dz=-6,dy=5,dx=6,team=red,tag=not_left] invul 48

#divide
scoreboard players set @a[x=-219,y=-54,z=-8,distance=..100,dx=20,dy=10,dz=-10] invul 40

#hex
scoreboard players set @a[x=-354,y=-55,z=-48,dx=9,dy=10,dz=-11,team=red] invul 44

#valley
scoreboard players set @a[x=-401,y=-49,z=57,dx=15,dy=10,dz=10,team=red] invul 40

#blue spawn
#towers
scoreboard players set @a[x=-86,z=-10,y=-50.5,dx=7,dy=4,dz=7] invul 40
scoreboard players set @a[x=-84,z=-3,y=-50.5,dx=4,dy=4,dz=2.5] invul 40
scoreboard players set @a[x=-78,z=-10,y=-50.5,dx=2.5,dy=4,dz=6] invul 40

#caves
tag @a[x=-156,y=-54,z=3,distance=..7] add area1
tag @a[x=-156,y=-54,z=3,distance=..7] remove area2

tag @a[x=-146,y=-55,z=-8,distance=..7] add area2
tag @a[x=-146,y=-55,z=-8,distance=..7] remove area1

title @a[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6,team=red] title {"text":"Enemy Spawn"}

tp @a[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6,team=red,tag=area1] -157 -54.0 -3
tp @a[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6,team=red,tag=area2] -149.5 -54.50 -8.5

tag @a[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6,team=red] add danger

tag @a[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6,team=blue,scores={respawn=1..}] add not_left
execute as @a[team=blue] unless entity @s[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6] run tag @s remove not_left
scoreboard players set @a[z=-11,y=-54,x=-158,dz=6,dy=5,dx=6,team=blue,tag=not_left] invul 48

#divide
scoreboard players set @a[x=-219,y=-54,z=35,distance=..100,dx=20,dy=10,dz=10] invul 40

#hex
scoreboard players set @a[x=-325,y=-55,z=-94,dx=-11,dy=10,dz=9,team=blue] invul 44

#valley
scoreboard players set @a[x=-401,y=-49,z=-23,dx=15,dy=10,dz=-10,team=blue] invul 40
