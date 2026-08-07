#
#tag @a remove inspawn

#red spawn
#towers
#scoreboard players set @a[x=-86,z=-10,y=-50.5,dx=7,dy=4,dz=7] invul 40
#scoreboard players set @a[x=-84,z=-3,y=-50.5,dx=4,dy=4,dz=2.5] invul 40
#scoreboard players set @a[x=-78,z=-10,y=-50.5,dx=2.5,dy=4,dz=6] invul 40

#tag @a[x=-86,z=-10,y=-50.5,dx=7,dy=4,dz=7] add inspawn
#tag @a[x=-84,z=-3,y=-50.5,dx=4,dy=4,dz=2.5] add inspawn
#tag @a[x=-78,z=-10,y=-50.5,dx=2.5,dy=4,dz=6] add inspawn

# TOWERS HAS WEIRD INVULN TIMES FOR INFECTION
#execute if score .mode .data = .6 .num run scoreboard players set @a[x=-86,z=-10,y=-50.5,dx=7,dy=4,dz=7] invul 70
#execute if score .mode .data = .6 .num run scoreboard players set @a[x=-84,z=-3,y=-50.5,dx=4,dy=4,dz=2.5] invul 70
#execute if score .mode .data = .6 .num run scoreboard players set @a[x=-78,z=-10,y=-50.5,dx=2.5,dy=4,dz=6] invul 70

#caves

# UTTER COVES
#tag @a remove in_red_spawn
#tag @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6] add in_red_spawn

#execute unless score .mode .data = .6 .num run tag @a[x=-188,y=-54,z=-103,distance=..7,tag=!in_red_spawn] add area1
#execute unless score .mode .data = .6 .num run tag @a[x=-188,y=-54,z=-103,distance=..7] remove area2

#execute unless score .mode .data = .6 .num run tag @a[x=-178,y=-55,z=-92,distance=..7] add area2
#execute unless score .mode .data = .6 .num run tag @a[x=-178,y=-55,z=-92,distance=..7] remove area1

#execute unless score .mode .data = .6 .num run title @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue] title {"text":"Enemy Spawn"}

#execute unless score .mode .data = .6 .num run title @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue,tag=area1] times 2 20 2
#execute unless score .mode .data = .6 .num run title @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue,tag=area1] title {"text":"Enemy Spawn"}
#execute unless score .mode .data = .6 .num run title @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue,tag=area1] subtitle {"text":"Can't enter from here"}
#execute unless score .mode .data = .6 .num run tp @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue,tag=area1] -189 -54.0 -98
#execute unless score .mode .data = .6 .num run tp @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue,tag=area2] -181.5 -54.50 -91.5

#execute unless score .mode .data = .6 .num run tag @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=blue] add danger

#tag @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=red,scores={respawn=1..}] add not_left
#execute as @a[team=red] unless entity @s[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6] run tag @s remove not_left
#scoreboard players set @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=red,tag=not_left] invul 48

#tag @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=red,tag=not_left] add inspawn

#execute if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @a[z=-90,y=-54,x=-190,dz=-6,dy=5,dx=6,team=red] add inspawn

#divide
#scoreboard players set @a[x=-139,y=6,z=361,distance=..100,dx=20,dy=10,dz=-10] invul 40

#tag @a[x=-139,y=6,z=361,distance=..100,dx=20,dy=10,dz=-10] add inspawn

#hex
#scoreboard players set @a[x=-354,y=-55,z=-48,dx=9,dy=10,dz=-11,team=red] invul 44

#tag @a[x=-354,y=-55,z=-48,dx=9,dy=10,dz=-11,team=red] add inspawn

#tiny town
#scoreboard players set @a[x=-226,y=-40,z=-456,dx=-5,dy=-10,dz=4.5,team=red] invul 41
#scoreboard players set @a[x=-226,y=-40,z=-456,dx=-5,dy=-5,dz=4.5,team=red] no_slow 10
#effect give @a[x=-226,y=-40,z=-456,dx=-5,dy=-5,dz=4.5,team=red] minecraft:slowness 1 0 true

#tag @a[x=-226,y=-40,z=-456,dx=-5,dy=-10,dz=4.5,team=red] add inspawn

#valley
#scoreboard players set @a[x=-401,y=-49,z=57,dx=15,dy=10,dz=10,team=red] invul 40

#tag @a[x=-401,y=-49,z=57,dx=15,dy=10,dz=10,team=red] add inspawn

#garden
#scoreboard players set @a[x=-19,y=-54,z=-249,dx=7,dy=7,dz=-12,team=red] invul 35

#tag @a[x=-19,y=-54,z=-249,dx=7,dy=7,dz=-12,team=red] add inspawn

#lookout
#scoreboard players set @a[x=3,y=-35,z=250,dx=-8,dy=7,dz=-18,team=red] invul 40

#tag @a[x=3,y=-35,z=250,dx=-8,dy=7,dz=-18,team=red] add inspawn

#river
#scoreboard players set @a[x=-529,y=-19,z=-260,dx=9,dy=10,dz=-9,team=red] invul 40

#tag @a[x=-529,y=-19,z=-260,dx=9,dy=10,dz=-9,team=red] add inspawn

#
#scoreboard players set @a[x=-406,y=-45,z=207,dx=-12,dy=10,dz=-7,team=red] invul 30

#tag @a[x=-406,y=-45,z=207,dx=-12,dy=10,dz=-7,team=red] add inspawn




#blue spawn
#towers
#scoreboard players set @a[x=-86,z=53,y=-50.5,dx=7,dy=4,dz=-7] invul 40
#scoreboard players set @a[x=-78,z=53,y=-50.5,dx=2.5,dy=4,dz=-7] invul 40
#scoreboard players set @a[x=-84,z=46,y=-50.5,dx=4,dy=4,dz=-3] invul 40

#tag @a[x=-86,z=53,y=-50.5,dx=7,dy=4,dz=-7] add inspawn
#tag @a[x=-78,z=53,y=-50.5,dx=2.5,dy=4,dz=-7] add inspawn
#tag @a[x=-84,z=46,y=-50.5,dx=4,dy=4,dz=-3] add inspawn

#caves
#tag @a remove in_blue_spawn
#tag @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6] add in_blue_spawn

#execute unless score .mode .data = .6 .num run tag @a[x=-188,y=-54,z=-140,distance=..7,tag=!in_blue_spawn] add area1
#execute unless score .mode .data = .6 .num run tag @a[x=-188,y=-54,z=-140,distance=..7] remove area2

#execute unless score .mode .data = .6 .num run tag @a[x=-178,y=-55,z=-151,distance=..7] add area2
#execute unless score .mode .data = .6 .num run tag @a[x=-178,y=-55,z=-151,distance=..7] remove area1

#execute unless score .mode .data = .6 .num run title @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red] title {"text":"Enemy Spawn"}

#xecute unless score .mode .data = .6 .num run title @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red,tag=area1] times 2 20 2
#execute unless score .mode .data = .6 .num run title @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red,tag=area1] title {"text":"Enemy Spawn"}
#execute unless score .mode .data = .6 .num run title @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red,tag=area1] subtitle {"text":"Can't enter from here"}
#execute unless score .mode .data = .6 .num run tp @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red,tag=area1] -189 -54.0 -146
#execute unless score .mode .data = .6 .num run tp @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red,tag=area2] -181.5 -54.50 -151.5

#execute unless score .mode .data = .6 .num run tag @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=red] add danger

#tag @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=blue,scores={respawn=1..}] add not_left
#execute as @a[team=blue] unless entity @s[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6] run tag @s remove not_left
#scoreboard players set @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=blue,tag=not_left] invul 48

#tag @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=blue,tag=not_left] add inspawn

#execute if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @a[z=-154,y=-54,x=-190,dz=6,dy=5,dx=6,team=blue] add inspawn

#divide
#scoreboard players set @a[x=-139,y=6,z=404,distance=..100,dx=20,dy=10,dz=10] invul 40

#tag @a[x=-139,y=6,z=404,distance=..100,dx=20,dy=10,dz=10] add inspawn

#hex
#scoreboard players set @a[x=-325,y=-55,z=-94,dx=-11,dy=10,dz=9,team=blue] invul 44

#tag @a[x=-325,y=-55,z=-94,dx=-11,dy=10,dz=9,team=blue] add inspawn

#tiny town
#scoreboard players set @a[x=-226,y=-40,z=-408,dx=-5,dy=-10,dz=-4.5,team=blue] invul 41
#scoreboard players set @a[x=-226,y=-40,z=-408,dx=-5,dy=-5,dz=-4.5,team=blue] no_slow 10
#effect give @a[x=-226,y=-40,z=-408,dx=-5,dy=-5,dz=-4.5,team=blue] minecraft:slowness 1 0 true

#tag @a[x=-226,y=-40,z=-408,dx=-5,dy=-10,dz=-4.5,team=blue] add inspawn

#valley
#scoreboard players set @a[x=-401,y=-49,z=-23,dx=15,dy=10,dz=-10,team=blue] invul 40

#tag @a[x=-401,y=-49,z=-23,dx=15,dy=10,dz=-10,team=blue] add inspawn

#garden
#scoreboard players set @a[x=17,y=-54,z=-351,dx=-7,dy=7,dz=12,team=blue] invul 35

#tag @a[x=17,y=-54,z=-351,dx=-7,dy=7,dz=12,team=blue] add inspawn

#lookout
#scoreboard players set @a[x=-83,y=-35,z=250,dx=8,dy=7,dz=-18,team=blue] invul 40

#tag @a[x=-83,y=-35,z=250,dx=8,dy=7,dz=-18,team=blue] add inspawn

#river
#scoreboard players set @a[x=-487,y=-19,z=-346,dx=-9,dy=10,dz=9,team=blue] invul 40

#tag @a[x=-487,y=-19,z=-346,dx=-9,dy=10,dz=9,team=blue] add inspawn

#lighthouse
#scoreboard players set @a[x=-486,y=-45,z=187,dx=12,dy=10,dz=7,team=blue] invul 30

#tag @a[x=-486,y=-45,z=187,dx=12,dy=10,dz=7,team=blue] add inspawn