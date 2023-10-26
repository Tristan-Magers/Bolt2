#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run particle minecraft:ash ~ ~ ~ 0.2 0.2 0.2 0.3 10 force
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:entity.creeper.death master @a
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 2
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.7 2
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run scoreboard players set @s timer 0
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run kill @s
#execute positioned ~ ~1.4 ~ if entity @e[type=arrow,distance=..1.1] run kill @e[type=arrow,distance=..1.1]

scoreboard players add @s timer 1
scoreboard players add @s t2 1

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
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.4 ~ run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel

### KILL PLAYERS AND EXPLOSION (controls tellraw text as well)

tag @a remove gre_immune
execute if score .mode .data = .6 .num run tag @a[team=blue] add gre_immune
execute if score .mode .data = .6 .num if score .zombie_evolve_type_6 .data = .1 .num run tag @a[team=red] add gre_immune

function game:id/player

### HIT TRAGET

execute as @s[scores={timer=17..}] at @s positioned ~ ~0.6 ~ if score .mode .data = .7 .num run function game:items/grenade/target

### EXPLODING

execute as @s at @s positioned ~ ~0.75 ~ run function game:items/grenade/exploding
execute as @s at @s positioned ~ ~1.25 ~ run function game:items/grenade/exploding
#execute as @s at @s positioned ~ ~1.6 ~ run function game:items/grenade/exploding

### HIT TRAGET

execute as @s[scores={timer=17..}] at @s positioned ~ ~1.1 ~ if score .mode .data = .7 .num run function game:items/grenade/target

####

tag @a remove gre_immune

kill @s[scores={timer=17..}]