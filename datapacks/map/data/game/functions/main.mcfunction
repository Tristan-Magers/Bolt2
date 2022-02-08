gamemode adventure @a[gamemode=survival]

kill @e[type=item]

execute as @a run attribute @s minecraft:generic.max_health base set 2

#lobby
effect give @a[x=-43,y=-60,z=16,distance=..10] minecraft:resistance 2 10 true

#red spawn
effect give @a[x=-86,z=53,y=-53.5,dx=7,dy=4,dz=-7] minecraft:resistance 1 10
effect give @a[x=-78,z=53,y=-53.5,dx=2.5,dy=4,dz=-7] minecraft:resistance 1 10
effect give @a[x=-84,z=46,y=-53.5,dx=4,dy=4,dz=-3] minecraft:resistance 1 10

#blue spawn
effect give @a[x=-86,z=-10,y=-53.5,dx=7,dy=4,dz=7] minecraft:resistance 1 10
effect give @a[x=-84,z=-3,y=-53.5,dx=4,dy=4,dz=2.5] minecraft:resistance 1 10
effect give @a[x=-78,z=-10,y=-53.5,dx=2.5,dy=4,dz=6] minecraft:resistance 1 10

execute as @e[type=minecraft:falling_block] at @s if block ~ ~-1 ~ air run data merge entity @s {Motion:[0.0,-10.0,0.0]}

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

clear @a[scores={arrowReload=42..}] arrow
item replace entity @a[scores={arrowReload=40..,arrowCount=0}] hotbar.8 with minecraft:arrow
item replace entity @a[scores={arrowReload=40..,arrowCount=1}] hotbar.8 with minecraft:arrow 2
item replace entity @a[scores={arrowReload=40..,arrowCount=2}] hotbar.8 with minecraft:arrow 3
scoreboard players set @a[scores={arrowReload=40..}] arrowReload 0

effect give @a[scores={health=1..19}] minecraft:instant_health 1 10 true

scoreboard players set @a[scores={deaths=1..}] respawn 70
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

item replace entity @a[tag=!hasflag] armor.head with minecraft:air

clear @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]},team=blue] red_banner
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]},team=blue] armor.head with minecraft:red_banner

clear @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_banner",Slot:103b}]},team=red] blue_banner
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

execute as @a[scores={crossbowTime=200}] at @s run tellraw @a [{"selector":"@s"},{"text":" activated","color":"white"},{"text":" CROSSBOW","color":"green"}]

scoreboard players add @a[scores={crossbowReload=1..}] crossbowReload 1
scoreboard players set @a[scores={crossbowUse=1..}] crossbowReload 1
tag @a[scores={crossbowReload=3..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] add reloadCross
clear @a[tag=reloadCross] crossbow
item replace entity @a[tag=reloadCross] weapon.mainhand with crossbow{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
scoreboard players set @a[tag=reloadCross] crossbowReload 0

tag @a remove reloadCross
scoreboard players set @a crossbowUse 0

title @a[scores={crossbowTime=240}] actionbar [{"text":"","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=218}] actionbar [{"text":"⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=206}] actionbar [{"text":"⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=194}] actionbar [{"text":"⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=182}] actionbar [{"text":"⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=170}] actionbar [{"text":"⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=168}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=156}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=144}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=132}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=120}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=108}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=96}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=84}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=72}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=60}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=48}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=36}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=24}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛","color":"dark_green"}]
title @a[scores={crossbowTime=12}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛","color":"dark_green"}]
title @a[scores={crossbowTime=1}] actionbar [{"text":"","color":"gray"},{"text":"","color":"dark_green"}]

clear @a[scores={crossbowTime=1}] crossbow
scoreboard players set @a[scores={crossbowTime=1}] crossbowReload 0
scoreboard players remove @a[scores={crossbowTime=1..}] crossbowTime 1

#map
clear @a minecraft:filled_map