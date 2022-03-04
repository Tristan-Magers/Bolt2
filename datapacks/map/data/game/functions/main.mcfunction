gamemode adventure @a[gamemode=survival]
effect give @a minecraft:resistance 999 255 true

kill @e[type=item]

execute as @a run attribute @s minecraft:generic.max_health base set 2

execute as @e[type=arrow] run data merge entity @s {damage:1000.0}

#hurtime
scoreboard players set @a hurt 0
execute as @a run execute store result score @s hurt run data get entity @s HurtTime 1
scoreboard players set @a[scores={hurt=9,invul=..0}] deaths 1

#
scoreboard players add @e[type=arrow] ID 0
execute as @a[scores={bowUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
execute as @a[scores={crossUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
tag @e[type=arrow] add shot
execute as @a at @s run function game:player/arrowcheck
scoreboard players set @a bowUse 0
scoreboard players set @a crossUseUse 0

# death messages
execute as @a[team=red,scores={killP=1..}] run tellraw @a[team=red] [{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9}]"}]
execute as @a[team=blue,scores={killP=1..}] run tellraw @a[team=blue] [{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9}]"}]

execute as @a[team=red,scores={killP=1..}] run tellraw @a[team=blue] [{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9}]"}]
execute as @a[team=blue,scores={killP=1..}] run tellraw @a[team=red] [{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9}]"}]

scoreboard players set @a killP 0

#team count
scoreboard players set .redplayers .data 0
scoreboard players set .blueplayers .data 0
scoreboard players set .teamdif .data 0

execute as @a[team=red] run scoreboard players add .redplayers .data 1
execute as @a[team=blue] run scoreboard players add .blueplayers .data 1

scoreboard players operation .teamdif .data = .redplayers .data
scoreboard players operation .teamdif .data -= .blueplayers .data

#lobby
scoreboard players set @a[x=-43,y=-60,z=16,distance=..10] invul 40

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

#divide
scoreboard players set @a[x=-219,y=-54,z=-8,distance=..100,dx=20,dy=10,dz=-10] invul 40

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

#divide
scoreboard players set @a[x=-219,y=-54,z=35,distance=..100,dx=20,dy=10,dz=10] invul 40

#walls
execute as @e[type=minecraft:falling_block] at @s run function game:items/lower
execute as @e[type=minecraft:falling_block] at @s run setblock ~ ~ ~ gravel
kill @e[type=minecraft:falling_block]

#spawn placing
tag @e[type=minecraft:magma_cube] add spawn
tag @e[type=slime] add spawn

execute as @e[tag=spawn] at @s run function game:items/spawn/main

#walls
execute as @e[type=bat] at @s run summon marker ~ ~ ~ {Tags:["wall"]}
tp @e[type=bat] ~ ~-1000 ~
kill @e[type=bat]
execute as @e[tag=wall] at @s run function game:items/wall/main

#grenade
execute as @e[tag=grenademark] at @s run function game:items/grenade/check
execute as @e[type=snowball] at @s run function game:items/grenade/main
execute as @e[tag=grenadehit] at @s run function game:items/grenade/hitmark

#arrow
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function game:arrow/land

#players
effect give @a minecraft:night_vision 999999 10 true
effect give @a minecraft:weakness 999999 10 true
effect give @a minecraft:saturation 999999 10 true

scoreboard players add @a ID 0

execute if entity @a[scores={ID=0}] run scoreboard players add .new ID 1
execute if entity @a[scores={ID=0}] run scoreboard players operation @p[scores={ID=0}] ID = .new ID

execute as @a store result score @s arrowCount run clear @s arrow 0
scoreboard players add @a[scores={arrowCount=..2}] arrowReload 1
scoreboard players set @a[scores={arrowCount=3..}] arrowReload 0

clear @a[scores={arrowReload=40..}] arrow
item replace entity @a[scores={arrowReload=40..,arrowCount=0}] hotbar.8 with minecraft:arrow
item replace entity @a[scores={arrowReload=40..,arrowCount=1}] hotbar.8 with minecraft:arrow 2
item replace entity @a[scores={arrowReload=40..,arrowCount=2}] hotbar.8 with minecraft:arrow 3
scoreboard players set @a[scores={arrowReload=40..}] arrowReload 0

effect give @a[scores={health=1..19}] minecraft:instant_health 1 10 true

scoreboard players add @a invul 0
scoreboard players remove @a[scores={invul=1..}] invul 1

item replace entity @a[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] armor.head with minecraft:chainmail_helmet
item replace entity @a[scores={invul=1}] armor.head with minecraft:air

effect give @a[scores={deaths=1..}] minecraft:wither 1 1
scoreboard players set @a[scores={deaths=1..}] respawn 70
execute if score .teamdif .data >= .1 .num run scoreboard players set @a[scores={deaths=1..},team=red] respawn 110
execute if score .teamdif .data >= .2 .num run scoreboard players set @a[scores={deaths=1..},team=red] respawn 150
execute if score .teamdif .data >= .3 .num run scoreboard players set @a[scores={deaths=1..},team=red] respawn 190
execute if score .teamdif .data <= .n1 .num run scoreboard players set @a[scores={deaths=1..},team=blue] respawn 110
execute if score .teamdif .data <= .n2 .num run scoreboard players set @a[scores={deaths=1..},team=blue] respawn 150
execute if score .teamdif .data <= .n3 .num run scoreboard players set @a[scores={deaths=1..},team=blue] respawn 190
scoreboard players set @a deaths 0

execute as @a[scores={respawn=1..}] at @s run function game:player/ded
scoreboard players add @a respawn 0

execute as @a[scores={kill=1..}] at @s run function game:player/kill

execute as @a at @s run function game:player/spawncheck

execute as @a[scores={placeSlime=1..}] at @s positioned ^ ^ ^1.6 run function game:player/slime
execute as @a[scores={placeMagma=1..}] at @s positioned ^ ^ ^1.6 run function game:player/magma
execute as @a[scores={placeCreeper=1..}] at @s positioned ^ ^ ^1.6 run function game:player/creeper

scoreboard players set @a placeSlime 0
scoreboard players set @a placeMagma 0
scoreboard players set @a placeCreeper 0
tag @e[type=slime] add old
tag @e[type=magma_cube] add old
tag @e[type=creeper] add old

scoreboard players add @a[tag=hasflag] flagtime 1
effect give @a[tag=hasflag,scores={flagtime=1}] glowing 1 1 true
title @a[tag=hasflag,scores={flagtime=1}] actionbar {"text":"! ! ! GLOWING ! ! !","color":"gold"}
title @a[tag=hasflag,scores={flagtime=20}] actionbar {"text":"","color":"gold"}
execute as @a[tag=hasflag,scores={flagtime=1}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.4 1.2
scoreboard players set @a[tag=hasflag,scores={flagtime=50..}] flagtime 0
scoreboard players set @a[tag=!hasflag] flagtime 0

#flags
execute as @e[tag=redflag] at @s run function game:flags/main
execute as @e[tag=blueflag] at @s run function game:flags/main

clear @a[tag=!hasflag] red_banner
clear @a[tag=!hasflag] blue_banner

item replace entity @a[tag=!hasflag,scores={invul=..0}] armor.head with minecraft:air

clear @a[tag=!hasflag,team=blue] red_banner
item replace entity @a[tag=!hasflag,team=blue,scores={invul=..0}] armor.head with minecraft:air
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]},team=blue] armor.head with minecraft:red_banner

clear @a[tag=!hasflag,team=red] blue_banner
item replace entity @a[tag=!hasflag,team=red,scores={invul=..0}] armor.head with minecraft:air
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_banner",Slot:103b}]},team=red] armor.head with minecraft:blue_banner

#trap
execute as @e[tag=trap] at @s run function game:items/trap/main

#reveal
execute as @a[scores={useMap=1..}] run function game:items/reveal/use

#bow correct
give @a[nbt=!{Inventory:[{id:"minecraft:bow"}]},team=blue] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
give @a[nbt=!{Inventory:[{id:"minecraft:bow"}]},team=red] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1

#crossbow test
scoreboard players add @a crossbowTime 0
scoreboard players add @a[scores={crossbowTime=0},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:1b}}}] crossbowTime 240

scoreboard players add @a[scores={crossbowReload=1..}] crossbowReload 1
scoreboard players set @a[scores={crossbowUse=1..}] crossbowReload 1
tag @a[scores={crossbowReload=2..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] add reloadCross
#clear @a[tag=reloadCross] crossbow
item replace entity @a[tag=reloadCross] weapon.mainhand with crossbow{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
scoreboard players set @a[tag=reloadCross] crossbowReload 0

tag @a remove reloadCross
scoreboard players set @a crossbowUse 0

execute as @a[scores={crossbowTime=1..}] at @s run function game:items/crossbow/active

#danger area
scoreboard players set @a[tag=!danger] danger 0
scoreboard players add @a[tag=danger] danger 1
execute as @a[scores={danger=1}] at @s run title @s times 2 10 10
execute as @a[scores={danger=1}] at @s run title @s title {"text":"! DANGER AREA !"}
execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 1
execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 2
effect give @a[scores={danger=18..}] minecraft:instant_damage 1 100 true
tag @a remove danger

#map
clear @a minecraft:filled_map

#ladders
execute as @a at @s if block ~ ~0.2 ~ minecraft:ladder run effect give @s minecraft:levitation 1 9 true
execute as @a at @s unless block ~ ~0.2 ~ minecraft:ladder run effect clear @s minecraft:levitation

#
kill @e[tag=kill]