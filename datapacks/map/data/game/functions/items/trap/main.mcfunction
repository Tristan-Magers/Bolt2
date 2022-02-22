#
execute as @s at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~

data merge entity @s {Size:0,Silent:1,NoAI:1,Health:1}

execute as @s[scores={timer=0},team=red,tag=hidden] at @s if entity @a[team=blue,distance=..4.8] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~
execute as @s[scores={timer=0},team=blue,tag=hidden] at @s if entity @a[team=red,distance=..4.8] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~

execute as @s[scores={timer=0},team=red] at @s unless entity @a[team=blue,distance=..4.8] run effect give @s minecraft:invisibility 999 10 true
execute as @s[scores={timer=0},team=blue] at @s unless entity @a[team=red,distance=..4.8] run effect give @s minecraft:invisibility 999 10 true

execute as @s[scores={timer=0},team=red] at @s if entity @a[team=blue,distance=..4.8] run effect clear @s minecraft:invisibility
execute as @s[scores={timer=0},team=blue] at @s if entity @a[team=red,distance=..4.8] run effect clear @s minecraft:invisibility

execute as @s[scores={timer=0},team=red] at @s unless entity @a[team=blue,distance=..4.8] run tag @s add hidden
execute as @s[scores={timer=0},team=blue] at @s unless entity @a[team=red,distance=..4.8] run tag @s add hidden

execute as @s[scores={timer=0},team=red] at @s if entity @a[team=blue,distance=..4.8] run tag @s remove hidden
execute as @s[scores={timer=0},team=blue] at @s if entity @a[team=red,distance=..4.8] run tag @s remove hidden

scoreboard players add @s timer 0
scoreboard players add @s[scores={timer=1..}] timer 1

execute as @s[scores={timer=0},team=red] at @s if entity @a[team=blue,distance=..3.7] run scoreboard players set @s timer 1
execute as @s[scores={timer=0},team=blue] at @s if entity @a[team=red,distance=..3.7] run scoreboard players set @s timer 1

effect give @s[scores={timer=1..}] minecraft:glowing 30 30 true

execute as @s[scores={timer=21..}] at @s run particle minecraft:explosion_emitter ~ ~1.6 ~ 0.5 0.5 0.5 0 6 force
execute as @s[scores={timer=21..}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute as @s[scores={timer=21..}] at @s run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel
execute as @s[scores={timer=21..}] at @s if entity @a[distance=..4.8] run effect give @a[distance=..4.8,scores={respawn=..0}] minecraft:instant_damage 1 100 true

scoreboard players operation @a ID -= @s ID
execute as @s[scores={timer=2}] at @s run tellraw @a[scores={ID=0}] [{"text":"[Trap Triggered]","color":"gray"}]

execute as @s[scores={timer=21..}] at @s if entity @a[distance=..4.8] run effect give @a[distance=..4.8,scores={respawn=..0}] minecraft:instant_damage 1 100 true
execute as @s[scores={timer=21..}] at @s if entity @a[distance=..4.8] run tellraw @a [{"selector":"@a[scores={ID=0}]"},{"text":"'s Trap hit ","color":"white"},{"selector":"@a[distance=..4.8,scores={respawn=..0}]"}]
execute as @s[scores={timer=21..}] at @s if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0},team=blue] run scoreboard players add @a[scores={ID=0},team=red] kill 1
execute as @s[scores={timer=21..}] at @s if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0},team=red] run scoreboard players add @a[scores={ID=0},team=blue] kill 1
scoreboard players operation @a ID += @s ID

execute as @s[scores={timer=21..}] at @s run effect give @e[distance=..4.8,type=magma_cube] glowing 10 10 true
execute as @s[scores={timer=21..}] at @s run effect give @e[distance=..4.8,type=slime] glowing 10 10 true
execute as @s[scores={timer=21..}] at @s run effect give @e[distance=..4.8,type=creeper] glowing 10 10 true

execute as @s[scores={timer=21..}] at @s run tag @e[distance=..4.8,type=creeper] add kill
execute as @s[scores={timer=21..}] at @s run tag @e[distance=..4.8,type=magma_cube] add kill
execute as @s[scores={timer=21..}] at @s run tag @e[distance=..4.8,type=slime] add kill
execute as @s[scores={timer=21..}] at @s run kill @e[distance=..3.0,type=minecraft:falling_block]

execute as @s[scores={timer=1}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute as @s[scores={timer=2}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=4}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute as @s[scores={timer=6}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=8}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.1
execute as @s[scores={timer=10}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=12}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.1
execute as @s[scores={timer=14}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=16}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.4
execute as @s[scores={timer=18}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6
execute as @s[scores={timer=20}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.7
execute as @s[scores={timer=21}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute as @s[scores={timer=22}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6
execute as @s[scores={timer=23}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6

execute as @s[scores={timer=1},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute as @s[scores={timer=3},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute as @s[scores={timer=5},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute as @s[scores={timer=7},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute as @s[scores={timer=9},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute as @s[scores={timer=11},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute as @s[scores={timer=13},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute as @s[scores={timer=15},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute as @s[scores={timer=17},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute as @s[scores={timer=19},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute as @s[scores={timer=21},team=red] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7

execute as @s[scores={timer=1},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute as @s[scores={timer=3},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute as @s[scores={timer=5},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute as @s[scores={timer=7},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute as @s[scores={timer=9},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute as @s[scores={timer=11},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute as @s[scores={timer=13},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute as @s[scores={timer=15},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute as @s[scores={timer=17},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute as @s[scores={timer=19},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute as @s[scores={timer=21},team=blue] at @s run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7

execute as @s[scores={timer=1..}] at @s run title @a[distance=..4.8,scores={respawn=..0}] times 0 3 0
execute as @s[scores={timer=1..}] at @s run title @a[distance=..4.8,scores={respawn=..0}] title {"text":"! ! !"}
execute as @s[scores={timer=1..}] at @s run title @a[distance=..4.8,scores={respawn=..0}] subtitle {"text":"TRAP","color":"gray"}

kill @s[scores={timer=21..}]

scoreboard players add @s t4 1
execute as @s[scores={t4=4}] at @s run function game:items/trap/particle
execute as @s[scores={t4=14}] at @s run function game:items/trap/particle
#scoreboard players set @s[scores={t4=200..}] t4 0