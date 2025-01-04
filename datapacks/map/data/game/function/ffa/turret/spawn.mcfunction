# say running spawn.mcfunction ...

#
function game:items/newid

#> ID + tags
tag @a remove new_t_owner
execute at @s run tag @p[tag=turretSpawn,tag=!hasTurret2] add new_t_owner
execute at @s unless entity @a[tag=new_t_owner] run tag @p[scores={placeTurret=1..},tag=turret_dif,distance=..8] add new_t_owner
execute at @s run scoreboard players operation @s ID = @p[tag=new_t_owner] ID
execute at @s if entity @p[tag=new_t_owner,team=red] run team join red
execute at @s if entity @p[tag=new_t_owner,team=blue] run team join blue
execute as @s[team=] run team join red
tag @p[tag=turretSpawn] add hasTurret
tag @s add turret
tag @p[tag=turretSpawn] remove turretSpawn

tag @a[tag=hasTurret] add hasTurret2

#> Cooldown + NBT
data merge entity @s {NoAI:1b,Silent:1b}
scoreboard players set @s turretCooldown 30
scoreboard players set @s blind -1

#> Health setup
effect give @s minecraft:resistance infinite 5 true
# .num = health
scoreboard players set @s .num 1

#> Down
function game:items/lower
execute at @s run tp @s ~ ~0.3 ~

execute at @s if entity @e[type=pig,distance=..0.4,tag=old2,tag=!chair] run tag @s add cant_place
execute at @s if block ~ -64 ~ redstone_block run tag @s add cant_place
execute at @s if block ~ -64 ~ diamond_block run tag @s add cant_place

execute as @s[tag=cant_place] run tag @s add kill

execute as @s[tag=cant_place] run tellraw @p[scores={placeTurret=1..},tag=turret_dif] {"text":"Can't place there!","color":"dark_gray"}
execute as @s[tag=cant_place] run scoreboard players add @p[scores={placeTurret=1..},tag=turret_dif] drop_turret 1

tag @s add old2

#> Punch detection
#execute at @s run summon interaction ~ ~0.8 ~ {Tags:["turretPunch"]}

#> FX
execute as @s[tag=!kill] run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 2
execute as @s[tag=!kill] run playsound minecraft:entity.blaze.hurt master @a
#particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0 40 force @a

#
execute as @s[tag=!kill,team=red] run summon armor_stand ~ ~-1.5 ~ {Marker:1,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["200"]}}}],Tags:["turret_stand","red"]}
execute as @s[tag=!kill,team=red] run summon armor_stand ~ ~-.5 ~ {Marker:1,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["201"]}}}],Tags:["turret_head","red"]}

execute as @s[tag=!kill,team=blue] run summon armor_stand ~ ~-1.5 ~ {Marker:1,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["210"]}}}],Tags:["turret_stand","blue"]}
execute as @s[tag=!kill,team=blue] run summon armor_stand ~ ~-.5 ~ {Marker:1,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["211"]}}}],Tags:["turret_head","blue"]}

#
execute as @s[tag=!kill] run effect give @s minecraft:invisibility infinite 10 true

#
#execute as @s[tag=kill] run function game:ffa/turret/kill_self