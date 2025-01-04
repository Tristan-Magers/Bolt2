#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run particle minecraft:ash ~ ~ ~ 0.2 0.2 0.2 0.3 10 force
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:entity.creeper.death master @a
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 2
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.7 2
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run scoreboard players set @s timer 0
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run kill @s
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run kill @e[type=arrow,distance=..1.1]

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

execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 0.5 1.5
execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 0.7 2
execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.9 2
execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2
execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 0.6 2

execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 0
execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.5

execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run particle minecraft:lava ~ ~0.2 ~ 0.1 0.1 0.1 0.1 3
execute as @s[scores={t2=1},tag=!wall_pass] at @s positioned ~ ~1.6 ~ run particle minecraft:flash ~ ~0.6 ~ 0 0 0 0 1 force

execute as @s[scores={t2=3}] at @s run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 1 0.8
execute as @s[scores={t2=4}] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.6 0.8

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

### TRIGGERED EFFECTS
effect give @s[scores={timer=..-1}] minecraft:glowing 30 30 true
effect clear @s[scores={timer=0}] minecraft:glowing

team join gray @s[scores={timer=..0}]
team leave @s[scores={timer=1..}]

effect give @s[scores={timer=1}] minecraft:glowing 30 30 true
effect clear @s[scores={timer=4}] minecraft:glowing
effect give @s[scores={timer=7}] minecraft:glowing 30 30 true
effect clear @s[scores={timer=10}] minecraft:glowing
effect give @s[scores={timer=12}] minecraft:glowing 30 30 true

### EXPLODE EFFECTS

execute as @s[scores={timer=17..}] at @s run particle minecraft:explosion_emitter ~ ~0.6 ~ 0.5 0.5 0.5 0 6 force
execute as @s[scores={timer=17..}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.4 ~ store result score .result .calc run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel

### KILL PLAYERS AND EXPLOSION (controls tellraw text as well)

tag @a remove gre_immune
execute if score .mode .data = .6 .num run tag @a[team=blue] add gre_immune
execute if score .mode .data = .6 .num if score .zombie_evolve_type_6 .data = .1 .num run tag @a[team=red] add gre_immune

function game:id/player

execute as @s[scores={timer=17..}] at @s if score .mode .data matches 1 if score .tmi .data matches 0 run scoreboard players operation @p[tag=id_share] track_walls_broken += .result .calc
execute as @s[scores={timer=17..}] as @p[tag=id_share,scores={track_walls_broken=20..},tag=locked_27] run function game:player/unlock/27

### HIT TRAGET

execute as @s[scores={timer=17..}] at @s positioned ~ ~0.6 ~ if score .mode .data = .7 .num run function game:items/grenade/target

### EXPLODING

execute as @s[tag=!dead] at @s positioned ~ ~0.75 ~ run function game:items/grenade/exploding
execute as @s[tag=!dead] at @s positioned ~ ~1.25 ~ run function game:items/grenade/exploding
#execute as @s at @s positioned ~ ~1.6 ~ run function game:items/grenade/exploding

####

tag @a remove gre_immune

kill @s[scores={timer=17..}]