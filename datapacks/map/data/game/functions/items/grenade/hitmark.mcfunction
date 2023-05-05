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

execute as @s[scores={timer=16..}] at @s run particle minecraft:explosion_emitter ~ ~0.6 ~ 0.5 0.5 0.5 0 6 force
execute as @s[scores={timer=16..}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute as @s[scores={timer=16..}] at @s positioned ~ ~1.4 ~ run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel

### KILL PLAYERS AND EXPLOSION (controls tellraw text as well)

scoreboard players operation @a ID -= @s ID

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[scores={ID=0},team=red] killStreak 1
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[scores={ID=0},team=blue] killStreak 1

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed] unless entity @a[scores={ID=0,killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"white"},{"selector":"@a[scores={ID=0}]"},{"text":"'s ","color":"gray"},{"text":"Grenade","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[distance=..4.8,scores={respawn=..0,invul=..0}]"}]
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed] if entity @a[scores={ID=0,killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"white"},{"selector":"@a[scores={ID=0}]"},{"text":"'s ","color":"gray"},{"text":"Grenade","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[distance=..4.8,scores={respawn=..0,invul=..0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@p[scores={ID=0}]","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players remove @a[scores={ID=0},team=red] killStreak 1
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players remove @a[scores={ID=0},team=blue] killStreak 1

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[scores={ID=0},team=red] kill 1
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[scores={ID=0},team=blue] kill 1

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[scores={ID=0},team=red] stats_ger_kills 1
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[scores={ID=0},team=blue] stats_ger_kills 1

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run tag @a[distance=..4.8,scores={respawn=..0,invul=..0}] add exploded
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run tag @a[distance=..4.8,scores={respawn=..0,invul=..0}] add killed
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if entity @a[distance=..4.8] run effect give @a[distance=..4.8,scores={respawn=..0,invul=..0}] minecraft:instant_damage 1 100 true

### HIT TRAGET

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ if score .mode .data = .7 .num run function game:items/grenade/target

scoreboard players operation @a ID += @s ID

### KILL ENTITIES ON EXPLOSION

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run effect give @e[distance=..4.8,type=magma_cube] glowing 10 10 true
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run effect give @e[distance=..4.8,type=slime] glowing 10 10 true
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run effect give @e[distance=..4.8,type=creeper] glowing 10 10 true

execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run kill @e[distance=..4.8,type=magma_cube]
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run kill @e[distance=..4.8,type=slime]
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run kill @e[distance=..4.8,type=creeper]
execute as @s[scores={timer=16..}] at @s positioned ~ ~0.6 ~ run kill @e[distance=..3.0,type=minecraft:falling_block]

### SOUNDS

execute as @s[scores={timer=-7}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=-6}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=-5}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=-4}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=-3}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=-2}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=-1}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=0}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=1}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=2}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=4}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.1 0.6
execute as @s[scores={timer=6}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=8}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=10}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=12}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.4 0.6
execute as @s[scores={timer=13}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.5 0.6
execute as @s[scores={timer=14}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.7 0.6
execute as @s[scores={timer=15}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.8 0.6
execute as @s[scores={timer=16}] at @s positioned ~ ~0.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6 0.6

### TITLE TEXT

execute as @s at @s positioned ~ ~0.6 ~ run title @a[distance=..4.8,scores={respawn=..0}] times 0 3 0
execute as @s at @s positioned ~ ~0.6 ~ run title @a[distance=..4.8,scores={respawn=..0}] title {"text":"! ! !"}
execute as @s at @s positioned ~ ~0.6 ~ run title @a[distance=..4.8,scores={respawn=..0}] subtitle {"text":"GRENADE"}

kill @s[scores={timer=16..}]