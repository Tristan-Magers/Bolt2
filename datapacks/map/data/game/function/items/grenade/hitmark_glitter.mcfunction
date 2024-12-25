#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run particle minecraft:ash ~ ~ ~ 0.2 0.2 0.2 0.3 10 force
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:entity.creeper.death master @a
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 2
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.7 2
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run scoreboard players set @s timer 0
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run kill @s
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run kill @e[type=arrow,distance=..1.1]

scoreboard players set @s[scores={t2=..0}] t2 0
scoreboard players set @s[scores={timer=..0}] timer 0

scoreboard players add @s timer 1
scoreboard players add @s t2 1

#particle minecraft:dripping_obsidian_tear ~ ~ ~

tag @s[scores={mot_y=0..}] add going_up
tag @s[tag=!going_up] add going_down

scoreboard players operation .mod .calc = @s mot_x
scoreboard players operation .mod .calc = .50 .num
execute if score .mod .calc matches 1 run scoreboard players add @s mot_x 1

scoreboard players operation .mod .calc = @s mot_y
scoreboard players operation .mod .calc = .50 .num
execute if score .mod .calc matches 1 run scoreboard players add @s mot_y 1

scoreboard players operation .mod .calc = @s mot_z
scoreboard players operation .mod .calc = .50 .num
execute if score .mod .calc matches 1 run scoreboard players add @s mot_z 1

execute as @s[scores={t2=1}] store result storage minecraft:macro input.mot_x float 0.01999 run scoreboard players get @s mot_x
execute as @s[scores={t2=1}] store result storage minecraft:macro input.mot_y float 0.01999 run scoreboard players get @s mot_y
execute as @s[scores={t2=1}] store result storage minecraft:macro input.mot_z float 0.01999 run scoreboard players get @s mot_z

execute as @s[scores={t2=1}] at @s run function game:items/grenade/adjust

#execute as @s[scores={t2=1},tag=!wall_pass,tag=going_up] at @s if block ~ ~2 ~ barrier if block ~ ~3 ~ air positioned ~ ~4 ~ run function game:items/grenade/macro_new_gernade with storage minecraft:macro input
#execute as @s[scores={t2=1},tag=!wall_pass,tag=going_up] at @s if block ~ ~2 ~ barrier if block ~ ~3 ~ air run tag @s add wall_pass
#execute as @s[scores={t2=1},tag=!wall_pass,tag=going_down] at @s if block ~ ~1 ~ barrier if block ~ ~-0.5 ~ air positioned ~ ~-1 ~ run function game:items/grenade/macro_new_gernade with storage minecraft:macro input
#execute as @s[scores={t2=1},tag=!wall_pass,tag=going_down] at @s if block ~ ~1 ~ barrier if block ~ ~-0.5 ~ air run tag @s add wall_pass
execute as @s[scores={t2=1},tag=wall_pass] at @s run kill @s
execute as @s[scores={t2=1},tag=wall_pass] at @s run tag @s add dead

execute as @s[scores={timer=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:entity.breeze.land master @s ~ ~ ~ 1 1.5
execute as @s[scores={timer=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.bamboo_wood.break master @a ~ ~ ~ 0.5 0
execute as @s[scores={timer=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.wool.break master @a ~ ~ ~ 0.3 2
execute as @s[scores={timer=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.sand.step master @a ~ ~ ~ 0.2 0

execute as @s[scores={timer=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run particle minecraft:flash ~ ~0.6 ~ 0 0 0 0 1 force

execute as @s[scores={timer=1},tag=!wall_pass] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
#execute as @s[scores={timer=1},tag=!wall_pass] at @s run tp @s ~ ~ ~ ~180 0

#effect give @s[scores={timer=1}] minecraft:glowing 30 30 true

###
#execute as @s[scores={timer=0}] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.1 1
#execute as @s[scores={timer=3}] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.1 1.2
#execute as @s[scores={timer=6}] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.1 1.4
#execute as @s[scores={timer=9}] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.1 1.6
#execute as @s[scores={timer=12}] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.1 1.8
#execute as @s[scores={timer=15}] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.1 2

### TEST (currently test extra time if thrown close)

#execute as @s[scores={timer=..0},tag=!long] run tellraw @p {"score":{"name":"@s","objective":"timer"}}
#tag @s add long

### EXPLODE EFFECTS


execute as @s[scores={timer=2}] at @s run particle minecraft:firework ~ ~1.4 ~ .2 .2 .2 0.2 10 force
execute as @s[scores={timer=2}] at @s run particle item{item:"feather"} ~ ~1.4 ~ .2 .2 .2 0.45 20 force
execute as @s[scores={timer=5}] at @s run particle item{item:"feather"} ~ ~2.4 ~ 2.2 1.0 2.2 0 15 force
execute as @s[scores={timer=5}] at @s run particle dust{color:[0.761,0.871,1.000],scale:3} ~ ~1.4 ~ 2 2 2 0 15 normal

#execute as @s[scores={timer=2..}] at @s run particle minecraft:explosion_emitter ~ ~0.6 ~ 0.5 0.5 0.5 0 6 force
execute as @s[scores={timer=3}] at @s run playsound minecraft:block.bubble_column.bubble_pop master @a ~ ~ ~ 1 0
execute as @s[scores={timer=3}] at @s run playsound minecraft:block.bubble_column.bubble_pop master @a ~ ~ ~ 1 0
execute as @s[scores={timer=5..}] at @s run playsound minecraft:entity.creaking.step master @s ~ ~ ~ 1 2
execute as @s[scores={timer=5..}] at @s run playsound minecraft:entity.creaking.attack master @s ~ ~ ~ 0.4 2
execute as @s[scores={timer=3}] at @s run playsound minecraft:block.lava.pop master @a ~ ~ ~ 1 1.5
execute as @s[scores={timer=4}] at @s run playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 0.1 2
#execute as @s[scores={timer=2..}] at @s positioned ~ ~1.4 ~ run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel

execute as @s[scores={timer=5..}] at @s positioned ~ ~0.75 ~ run scoreboard players set @a[distance=..4.8,gamemode=adventure] blind 47
execute as @s[scores={timer=5..}] at @s positioned ~ ~1.25 ~ run scoreboard players set @a[distance=..4.8,gamemode=adventure] blind 47

execute as @a[scores={blind=47,invul=..0}] at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.3 1.4
execute as @a[scores={blind=47,invul=..0}] at @s run playsound minecraft:block.sand.break master @a ~ ~ ~ 1 0
execute as @a[scores={blind=47,invul=..0}] at @s run playsound minecraft:entity.breeze.hurt master @s ~ ~ ~ 0.05 1.8

execute as @a[scores={blind=47},tag=lobby] at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.3 1.4
execute as @a[scores={blind=47},tag=lobby] at @s run playsound minecraft:block.sand.break master @a ~ ~ ~ 1 0
execute as @a[scores={blind=47},tag=lobby] at @s run playsound minecraft:entity.breeze.hurt master @s ~ ~ ~ 0.05 1.8

kill @s[scores={timer=5..}]