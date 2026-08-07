##### SPAWNED

execute if entity @s[scores={t4=1}] at @s run function game:items/lower
execute if entity @s[scores={t4=4}] at @s run tp @s ~ ~-0.9 ~

##### CONTROL AND PLANT PARTICLES

scoreboard players add @s t4 1
scoreboard players add @s timer 0

execute as @s[scores={t4=2}] at @s if block ~ -60 ~ redstone_block run tag @s add cant_place
#execute as @s[scores={t4=2}] at @s if block ~ -64 ~ diamond_block run tag @s add cant_place
execute as @s[scores={t4=2}] at @s positioned ~ ~-0.9 ~ if entity @e[type=creeper,distance=..0.2] run tag @s add cant_place

execute if entity @s[scores={t4=2},tag=cant_place] at @s run function game:items/trap/return

execute if entity @s[scores={t4=5}] at @s run function game:items/trap/particle
execute if entity @s[scores={t4=14}] at @s run function game:items/trap/particle
#scoreboard players set @s[scores={t4=200..}] t4 0

data merge entity @s {Size:0,Silent:1b,NoAI:1b,Health:1}

execute as @s[team=red,scores={t4=2},tag=!cant_place] at @s run playsound minecraft:entity.creeper.hurt master @a[team=red] ~ ~ ~ 0.75 0.9
execute as @s[team=blue,scores={t4=2},tag=!cant_place] at @s run playsound minecraft:entity.creeper.hurt master @a[team=blue] ~ ~ ~ 0.75 0.9
execute as @s[team=red,scores={t4=2},tag=!cant_place] at @s run playsound minecraft:entity.creeper.hurt master @a[team=red] ~ ~ ~ 0.75 1.1
execute as @s[team=blue,scores={t4=2},tag=!cant_place] at @s run playsound minecraft:entity.creeper.hurt master @a[team=blue] ~ ~ ~ 0.75 1.1
execute as @s[team=red,scores={t4=2},tag=!cant_place] at @s run playsound minecraft:block.tripwire.attach master @a[team=red] ~ ~ ~ 0.8 0.9
execute as @s[team=blue,scores={t4=2},tag=!cant_place] at @s run playsound minecraft:block.tripwire.attach master @a[team=blue] ~ ~ ~ 0.8 0.9

##### VISIBILITY AND TRIGGER CHECK

execute if entity @s[tag=play_primed,tag=!play_primed2] at @s positioned ~ ~0.4 ~ run playsound minecraft:entity.creeper.primed master @a ~ ~ ~

tag @s[tag=play_primed] add play_primed2
tag @s[tag=!play_primed] remove play_primed2

execute if entity @s[scores={timer=0},team=red,tag=hidden] at @s positioned ~ ~0.4 ~ unless entity @a[team=blue,gamemode=adventure,distance=..4.9] run tag @s remove play_primed
execute if entity @s[scores={timer=0},team=blue,tag=hidden] at @s positioned ~ ~0.4 ~ unless entity @a[team=red,gamemode=adventure,distance=..4.9] run tag @s remove play_primed

execute if entity @s[scores={timer=0},team=red,tag=hidden] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,gamemode=adventure,distance=..4.9] run tag @s add play_primed
execute if entity @s[scores={timer=0},team=blue,tag=hidden] at @s positioned ~ ~0.4 ~ if entity @a[team=red,gamemode=adventure,distance=..4.9] run tag @s add play_primed

execute if entity @s[scores={timer=0,t4=6..},team=red] at @s positioned ~ ~0.4 ~ unless entity @a[team=blue,gamemode=adventure,distance=..4.9] run effect give @s minecraft:invisibility 999 10 true
execute if entity @s[scores={timer=0,t4=6..},team=blue] at @s positioned ~ ~0.4 ~ unless entity @a[team=red,gamemode=adventure,distance=..4.9] run effect give @s minecraft:invisibility 999 10 true

execute if entity @s[scores={timer=0,t4=6..},team=red] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,gamemode=adventure,distance=..4.9] run effect clear @s minecraft:invisibility
execute if entity @s[scores={timer=0,t4=6..},team=blue] at @s positioned ~ ~0.4 ~ if entity @a[team=red,gamemode=adventure,distance=..4.9] run effect clear @s minecraft:invisibility

execute if entity @s[scores={timer=0},team=red] at @s positioned ~ ~0.4 ~ unless entity @a[team=blue,gamemode=adventure,distance=..4.9] run tag @s add hidden
execute if entity @s[scores={timer=0},team=blue] at @s positioned ~ ~0.4 ~ unless entity @a[team=red,gamemode=adventure,distance=..4.9] run tag @s add hidden

execute if entity @s[scores={timer=0},team=red] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,gamemode=adventure,distance=..4.9] run tag @s remove hidden
execute if entity @s[scores={timer=0},team=blue] at @s positioned ~ ~0.4 ~ if entity @a[team=red,gamemode=adventure,distance=..4.9] run tag @s remove hidden

scoreboard players add @s timer 0
scoreboard players add @s[scores={timer=1..}] timer 1

execute if entity @s[scores={timer=0,t4=4..},team=red] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,gamemode=adventure,distance=..3.65] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=0,t4=4..},team=blue] at @s positioned ~ ~0.4 ~ if entity @a[team=red,gamemode=adventure,distance=..3.65] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=0,t4=4..},team=red] at @s positioned ~ ~0.4 ~ if entity @e[type=zombie_villager,distance=..3.65,team=blue] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=0,t4=4..},team=blue] at @s positioned ~ ~0.4 ~ if entity @e[type=zombie_villager,distance=..3.65,team=red] run scoreboard players set @s timer 1

##### WHAT HAPPENS WHEN TRIGGERED

effect give @s[scores={timer=1..}] minecraft:glowing 30 30 true

# EXPLODE EFFECT AND BLOCK REMOVAL

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run particle minecraft:explosion_emitter ~ ~1.6 ~ 0.5 0.5 0.5 0 6 force
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel

# EXPLODES KILLING PLAYERS (controls tellraw in chat for this occurance as well)

tag @a remove gre_immune
execute if score .mode .data = .6 .num run tag @a[team=blue] add gre_immune
execute if score .mode .data = .6 .num if score .zombie_evolve_type_6 .data = .1 .num run tag @a[team=red] add gre_immune

function game:id/player

execute if entity @s[scores={timer=1}] at @s positioned ~ ~0.4 ~ run tellraw @a[tag=id_share] [{"text":"[Trap Triggered]","color":"gray"}]
execute if entity @s[scores={timer=1}] as @a[tag=id_share] at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 0.77 2
execute if entity @s[scores={timer=1}] as @a[tag=id_share] at @s run playsound minecraft:ui.stonecutter.select_recipe master @s ~ ~ ~ 0.77 1.7
execute if entity @s[scores={timer=1}] as @a[tag=id_share] at @s run playsound minecraft:block.suspicious_gravel.break master @s ~ ~ ~ 0.33 0
execute if entity @s[scores={timer=1}] as @a[tag=id_share] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.77 2

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[tag=id_share,team=red] killStreak 1
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[tag=id_share,team=blue] killStreak 1

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] as @a[tag=id_share,team=red] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0.5
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] as @a[tag=id_share,team=blue] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0.5

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed,tag=!gre_immune] unless entity @a[tag=id_share,scores={killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"green"},{"selector":"@a[tag=id_share]"},{"text":"'s ","color":"gray"},{"text":"Trap","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[distance=..4.8,scores={respawn=..0},tag=!gre_immune,tag=playing]"}]
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed,tag=!gre_immune] if entity @a[tag=id_share,scores={killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"green"},{"selector":"@a[tag=id_share]"},{"text":"'s ","color":"gray"},{"text":"Trap","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[distance=..4.8,scores={respawn=..0},tag=!gre_immune,tag=playing]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@p[tag=id_share]","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players remove @a[tag=id_share,team=red] killStreak 1
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players remove @a[tag=id_share,team=blue] killStreak 1

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=red] kill 1
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=blue] kill 1

# achievments
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=id_share,tag=!killed,tag=!gre_immune] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,tag=locked_66] run function game:player/unlock/66

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=red,tag=locked_41] run function game:player/unlock/41
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=blue,tag=locked_41] run function game:player/unlock/41

execute if entity @s[scores={timer=20..,t4=640..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=red,tag=locked_7] run function game:player/unlock/7
execute if entity @s[scores={timer=20..,t4=640..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=blue,tag=locked_7] run function game:player/unlock/7

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune,tag=totem_temp] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=red,tag=locked_67] run function game:player/unlock/67
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune,tag=totem_temp] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=blue,tag=locked_67] run function game:player/unlock/67

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune,tag=hasflag] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=red,tag=locked_40] run function game:player/unlock/40
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune,tag=hasflag] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=blue,tag=locked_40] run function game:player/unlock/40

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune,tag=hasflag] at @s if entity @e[type=armor_stand,tag=flag,team=blue,distance=..10] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=red,tag=locked_17] run function game:player/unlock/17
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune,tag=hasflag] at @s if entity @e[type=armor_stand,tag=flag,team=red,distance=..10] if score .mode .data matches 1 if score .tmi .data matches 0 as @a[tag=id_share,team=blue,tag=locked_17] run function game:player/unlock/17

#
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=red] stats_trap_kills 1
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=blue] stats_trap_kills 1

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run tag @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune] add exploded
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run tag @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune] add killed

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red,tag=locked_39] run function game:player/unlock/39

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run playsound minecraft:item.shield.block master @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune] ~ ~ ~ 1 0
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] minecraft:blindness 4 100 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run scoreboard players set @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] fog_remove 64
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run scoreboard players set @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] glowing 60
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] minecraft:slowness 3 2 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] minecraft:glowing 3 2 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] minecraft:blindness 3 100 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run scoreboard players set @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] fog_remove 44
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run scoreboard players set @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] glowing 40
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] minecraft:slowness 2 1 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] minecraft:glowing 2 2 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune] minecraft:instant_damage 1 100 true

execute if entity @s[scores={timer=20..}] at @s run kill @e[distance=..4.8,type=minecraft:zombie_villager]

tag @a remove gre_immune

# DESTROY GROUND ENTITIES ON EXPLOSION

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run effect give @e[distance=..4.8,type=magma_cube] glowing 10 10 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run effect give @e[distance=..4.8,type=slime] glowing 10 10 true
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run effect give @e[distance=..4.8,type=creeper,scores={timer=..0}] glowing 10 10 true

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run tag @e[distance=..4.8,type=creeper,scores={timer=..0}] add kill
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run tag @e[distance=..4.8,type=magma_cube] add kill
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run tag @e[distance=..4.8,type=slime] add kill
execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ run kill @e[distance=..3.0,type=minecraft:falling_block]

execute if entity @s[scores={timer=20..}] at @s positioned ~ ~0.4 ~ as @e[distance=..4.8,tag=turret] run function game:ffa/turret/kill_self

# PLAYSOUNDS WHEN TRIGGERED (note: different depending on team)

execute if entity @s[scores={timer=1}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=2}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=4}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=6}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=8}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.1
execute if entity @s[scores={timer=10}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=12}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=14}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=16}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.7
execute if entity @s[scores={timer=18}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.8

#execute if entity @s[scores={timer=21}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
#execute if entity @s[scores={timer=22}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6
#execute if entity @s[scores={timer=23}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6

execute if entity @s[scores={timer=1},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=3},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=5},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=7},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=9},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=11},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=13},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=15},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=17},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=19},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=21},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7

execute if entity @s[scores={timer=1},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=3},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=5},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=7},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=9},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=11},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=13},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=15},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=17},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=19},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=21},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7

# TEXT WHEN TRIGGERED

execute if entity @s[scores={timer=1..}] at @s positioned ~ ~0.4 ~ run title @a[distance=..4.8,scores={respawn=..0}] times 0 3 0
execute if entity @s[scores={timer=1..}] at @s positioned ~ ~0.4 ~ run title @a[distance=..4.8,scores={respawn=..0}] title {"text":"!!!","font":"fancy"}
execute if entity @s[scores={timer=1..}] at @s positioned ~ ~0.4 ~ run title @a[distance=..4.8,scores={respawn=..0}] subtitle {"text":"TRAP","color":"gray","font":"fancy"}

# KILL SELF

kill @s[scores={timer=20..}]