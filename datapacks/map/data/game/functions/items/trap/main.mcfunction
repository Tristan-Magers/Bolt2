#
execute if entity @s[scores={t4=1}] at @s run function game:items/lower
execute if entity @s[scores={t4=4}] at @s run tp @s ~ ~-0.6 ~

scoreboard players add @s t4 1
execute if entity @s[scores={t4=5}] at @s run function game:items/trap/particle
execute if entity @s[scores={t4=14}] at @s run function game:items/trap/particle
#scoreboard players set @s[scores={t4=200..}] t4 0

data merge entity @s {Size:0,Silent:1,NoAI:1,Health:1}

execute if entity @s[scores={timer=0},team=red,tag=hidden] at @s if entity @a[team=blue,distance=..4.8] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~
execute if entity @s[scores={timer=0},team=blue,tag=hidden] at @s if entity @a[team=red,distance=..4.8] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~

execute if entity @s[scores={timer=0,t4=6..},team=red] at @s unless entity @a[team=blue,distance=..4.8] run effect give @s minecraft:invisibility 999 10 true
execute if entity @s[scores={timer=0,t4=6..},team=blue] at @s unless entity @a[team=red,distance=..4.8] run effect give @s minecraft:invisibility 999 10 true

execute if entity @s[scores={timer=0,t4=6..},team=red] at @s if entity @a[team=blue,distance=..4.8] run effect clear @s minecraft:invisibility
execute if entity @s[scores={timer=0,t4=6..},team=blue] at @s if entity @a[team=red,distance=..4.8] run effect clear @s minecraft:invisibility

execute if entity @s[scores={timer=0},team=red] at @s unless entity @a[team=blue,distance=..4.8] run tag @s add hidden
execute if entity @s[scores={timer=0},team=blue] at @s unless entity @a[team=red,distance=..4.8] run tag @s add hidden

execute if entity @s[scores={timer=0},team=red] at @s if entity @a[team=blue,distance=..4.8] run tag @s remove hidden
execute if entity @s[scores={timer=0},team=blue] at @s if entity @a[team=red,distance=..4.8] run tag @s remove hidden

scoreboard players add @s timer 0
scoreboard players add @s[scores={timer=1..}] timer 1

execute if entity @s[scores={timer=0},team=red] at @s if entity @a[team=blue,distance=..3.65] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=0},team=blue] at @s if entity @a[team=red,distance=..3.65] run scoreboard players set @s timer 1

effect give @s[scores={timer=1..}] minecraft:glowing 30 30 true

execute if entity @s[scores={timer=19..}] at @s run particle minecraft:explosion_emitter ~ ~1.6 ~ 0.5 0.5 0.5 0 6 force
execute if entity @s[scores={timer=19..}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=19..}] at @s run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel
execute if entity @s[scores={timer=19..}] at @s if entity @a[distance=..4.8] run effect give @a[distance=..4.8,scores={respawn=..0}] minecraft:instant_damage 1 100 true

scoreboard players operation @a ID -= @s ID
execute if entity @s[scores={timer=1}] at @s run tellraw @a[scores={ID=0}] [{"text":"[Trap Triggered]","color":"gray"}]

execute if entity @s[scores={timer=19..}] at @s if entity @a[distance=..4.8] run effect give @a[distance=..4.8,scores={respawn=..0,invul=..0}] minecraft:instant_damage 1 100 true
execute if entity @s[scores={timer=19..}] at @s if entity @a[distance=..4.8,scores={respawn=..0,invul=..0}] run tellraw @a [{"selector":"@a[scores={ID=0}]"},{"text":"'s Trap hit ","color":"white"},{"selector":"@a[distance=..4.8,scores={respawn=..0}]"}]
execute if entity @s[scores={timer=19..}] at @s if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue] run scoreboard players add @a[scores={ID=0},team=red] kill 1
execute if entity @s[scores={timer=19..}] at @s if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red] run scoreboard players add @a[scores={ID=0},team=blue] kill 1
scoreboard players operation @a ID += @s ID

execute if entity @s[scores={timer=19..}] at @s run effect give @e[distance=..4.8,type=magma_cube] glowing 10 10 true
execute if entity @s[scores={timer=19..}] at @s run effect give @e[distance=..4.8,type=slime] glowing 10 10 true
execute if entity @s[scores={timer=19..}] at @s run effect give @e[distance=..4.8,type=creeper] glowing 10 10 true

execute if entity @s[scores={timer=19..}] at @s run tag @e[distance=..4.8,type=creeper] add kill
execute if entity @s[scores={timer=19..}] at @s run tag @e[distance=..4.8,type=magma_cube] add kill
execute if entity @s[scores={timer=19..}] at @s run tag @e[distance=..4.8,type=slime] add kill
execute if entity @s[scores={timer=19..}] at @s run kill @e[distance=..3.0,type=minecraft:falling_block]

execute if entity @s[scores={timer=1}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=2}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=4}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=6}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=8}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.1
execute if entity @s[scores={timer=10}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=12}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=14}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=16}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.7
execute if entity @s[scores={timer=18}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.9

#execute if entity @s[scores={timer=21}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
#execute if entity @s[scores={timer=22}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6
#execute if entity @s[scores={timer=23}] at @s run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6

execute if entity @s[scores={timer=1},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=3},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=5},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=7},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=9},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=11},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=13},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=15},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=17},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=19},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=21},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7

execute if entity @s[scores={timer=1},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=3},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=5},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=7},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=9},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=11},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=13},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=15},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=17},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=19},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=21},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7

execute if entity @s[scores={timer=1..}] at @s run title @a[distance=..4.8,scores={respawn=..0}] times 0 3 0
execute if entity @s[scores={timer=1..}] at @s run title @a[distance=..4.8,scores={respawn=..0}] title {"text":"! ! !"}
execute if entity @s[scores={timer=1..}] at @s run title @a[distance=..4.8,scores={respawn=..0}] subtitle {"text":"TRAP","color":"gray"}

kill @s[scores={timer=19..}]

