gamemode adventure @a[gamemode=survival]
effect give @a minecraft:resistance 999 255 true

kill @e[type=item]

execute as @a run attribute @s minecraft:generic.max_health base set 2

execute as @e[type=arrow] run data merge entity @s {damage:1000.0}

#gametime
execute if score .gametime .data >= .1 .num run scoreboard players add .gametime .data 1
execute if score .gametime .data = .40 .num run function game:game/mapstart

#hurtime
scoreboard players set @a hurt 0
execute as @a run execute store result score @s hurt run data get entity @s HurtTime 1
scoreboard players set @a[scores={hurt=9..,invul=..0}] deaths 1

#
scoreboard players add @e[type=arrow] ID 0
execute as @a[scores={bowUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
execute as @a[scores={crossUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
tag @e[type=arrow] add shot
execute as @a at @s run function game:player/arrowcheck
scoreboard players set @a bowUse 0
scoreboard players set @a crossUse 0

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

#spawns
function game:game/spawns

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
execute as @a at @s run function game:player/main

#tags
tag @e[type=slime] add old
tag @e[type=magma_cube] add old
tag @e[type=creeper] add old

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
effect give @e[tag=trap] resistance 999 10 true
execute as @e[tag=trap] run execute store result score @s hurt run data get entity @s HurtTime 1
execute as @e[tag=trap,scores={hurt=..1}] at @s positioned ~ ~0.6 ~ run function game:items/trap/main
effect give @e[tag=trap,scores={hurt=2..}] glowing 10 10 true
kill @e[tag=trap,scores={hurt=2..}]

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

#test
#scoreboard players add @a[tag=!hasflag] speedrun 1

#
kill @e[tag=kill]