#
#scoreboard players set @s hurt 0
#execute store result score @s hurt run data get entity @s HurtTime 1
#scoreboard players set @s[scores={hurt=9..,invul=..0,respawn=..0}] deaths 1
#scoreboard players set @s[scores={hurt=9..,invul=1..,respawn=..0,break_invul=1..,wall_invul=1..}] deaths 1
#scoreboard players set @s break_invul 0

#
execute if score .mode .data = .7 .num run scoreboard players set @s invul 100

#dead
execute as @s[gamemode=spectator,scores={respawn=1..}] at @s run clear @s arrow
execute as @s[gamemode=spectator,scores={respawn=1..}] at @s run tp @s @s
execute as @s[gamemode=spectator,scores={respawn=1..}] at @s run tp @s ^ ^-0.1 ^-0.09 ~ ~3.5
execute as @s[gamemode=spectator,scores={respawn=1..}] at @s run tp @s ~ ~0.3 ~
scoreboard players set @s[gamemode=spectator,scores={respawn=1..}] killStreak 0
execute as @s[gamemode=spectator,scores={respawn=1..,time_dead=8..}] at @s run tp @s ^ ^ ^-0.05
scoreboard players add @s[gamemode=spectator,scores={respawn=1..}] time_dead 1
#scoreboard players remove @s[gamemode=spectator,scores={respawn=2..}] respawn 1
gamemode adventure @s[gamemode=spectator,scores={respawn=1..,time_dead=16..}]

scoreboard players add @s[gamemode=spectator,scores={time_dead=2}] stats_deaths 1

#cutscene
gamemode spectator @s[scores={cutscene_time=1..}]
gamemode adventure @s[scores={cutscene_time=0,team_pref=0..}]
execute as @s[gamemode=spectator,scores={cutscene_time=1..}] run spectate @e[tag=cutscene,type=armor_stand,limit=1]
scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 70
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=red] respawn 140
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=blue] respawn 20
execute if score .mode .data = .7 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 20

execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] bat_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 7
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 2
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 2
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1

scoreboard players remove @s[scores={cutscene_time=0..}] cutscene_time 1

#test
#particle minecraft:bubble_pop -171 -46 -120 12 0.3 12 0 1 force
#particle minecraft:dolphin -171 -58 -120 12 4 12 0 10 force
#title @a actionbar {"text":"\uE026","color":"light_blue"}

#effects
xp add @a -100 levels

effect give @s minecraft:night_vision 999999 10 true
effect give @s minecraft:weakness 999999 10 true
effect give @s minecraft:saturation 999999 10 true

effect clear @s[tag=clear_invis] invisibility
tag @s remove clear_invis

#
scoreboard players add @s team_pref 0

#
scoreboard objectives add random dummy

#ID
scoreboard players add @s ID 0

execute if entity @s[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @s[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

#items
execute unless score @s team_pref_temp = @s team_pref run team leave @s
execute unless score @s team_pref_temp = @s team_pref run function game:menu/p_display/alert_above_slots
execute unless score @s team_pref_temp = @s team_pref run scoreboard players set @s p_display_num 0
execute unless score @s team_pref_temp = @s team_pref run function game:menu/p_display/reset
execute unless score @s team_pref_temp = @s team_pref run clear @s minecraft:leather_chestplate
execute unless score @s team_pref_temp = @s team_pref run clear @s minecraft:bow
scoreboard players operation @s team_pref_temp = @s team_pref

clear @s[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] leather_chestplate
item replace entity @s[team=red,nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1524521295,-489798199,-1818645928,-1857490419]}]}
item replace entity @s[team=blue,nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] armor.chest with leather_chestplate{display:{color:22015},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1261957983,1980582918,-2036986291,-2007908802]}]}

#reload
execute as @s store result score @s arrowCount run clear @s arrow 0
scoreboard players add @s[scores={arrowCount=..2}] arrowReload 1
scoreboard players set @s[scores={arrowCount=3..}] arrowReload 0

clear @s[scores={arrowReload=40..}] arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=0}] hotbar.8 with minecraft:arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=1}] hotbar.8 with minecraft:arrow 2
item replace entity @s[scores={arrowReload=40..,arrowCount=2}] hotbar.8 with minecraft:arrow 3
scoreboard players remove @s[scores={arrowReload=40..}] arrowReload 40

execute if score .mode .data = .6 .num run scoreboard players set @s[scores={arrowReload=..10},team=red] arrowReload 10

effect give @s[scores={health=1..19}] minecraft:instant_health 1 10 true

scoreboard players remove @s[scores={invul=1..}] invul 1

#effect give @s[scores={invul=1..}] minecraft:absorption 3 3 true
#effect clear @s[scores={invul=..0}] minecraft:absorption

clear @s[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] chainmail_helmet
item replace entity @s[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] armor.head with minecraft:chainmail_helmet{Damage:150,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:30,Operation:0,UUID:[I;-1372090343,-270579763,-1607716031,1256953017]}]}
item replace entity @s[scores={invul=1}] armor.head with minecraft:air

# Place Block
execute as @s[scores={place_block=1..}] at @s run function game:detection/block_scan/trigger
scoreboard players set @s place_block 0

# Totem
tag @s remove totem
tag @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] add totem
execute as @s[tag=totem] at @s run particle minecraft:item emerald ~ ~0.35 ~ 0.2 0.18 0.2 0 2 force

execute as @s[tag=totem,scores={deaths=1..},tag=!exploded] at @s run function game:player/totem

# No Cap
scoreboard players remove @s[scores={no_cap=1..}] no_cap 1

#
gamemode spectator @s[scores={deaths=1..}]
execute as @s[scores={deaths=1..}] at @s run function game:player/death
execute as @s[scores={deaths=1..}] at @s run tp @s ~ ~ ~ ~ 0
clear @s[scores={deaths=1..}] arrow
clear @s[scores={deaths=1..}] iron_ingot
clear @s[scores={deaths=1..}] bow
give @s[scores={deaths=1..}] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
effect give @s[scores={deaths=1..}] minecraft:wither 1 1
scoreboard players set @s[scores={deaths=1..}] time_dead 0
scoreboard players set @s[scores={deaths=1..}] respawn 70
scoreboard players set @s[scores={deaths=1..}] respawning_time 0
execute if score .team_dif .data >= .1 .num run scoreboard players set @s[scores={deaths=1..},team=red] respawn 110
execute if score .team_dif .data >= .2 .num run scoreboard players set @s[scores={deaths=1..},team=red] respawn 150
execute if score .team_dif .data >= .3 .num run scoreboard players set @s[scores={deaths=1..},team=red] respawn 190
execute if score .team_dif .data <= .n1 .num run scoreboard players set @s[scores={deaths=1..},team=blue] respawn 110
execute if score .team_dif .data <= .n2 .num run scoreboard players set @s[scores={deaths=1..},team=blue] respawn 150
execute if score .team_dif .data <= .n3 .num run scoreboard players set @s[scores={deaths=1..},team=blue] respawn 190

execute as @s[scores={deaths=1..}] run scoreboard players remove @s respawn_assist 180
execute as @s[scores={deaths=1..}] run scoreboard players operation @s respawn_assist /= .6 .num
execute as @s[scores={deaths=1..}] run scoreboard players operation @s respawn += @s respawn_assist
scoreboard players set @s[scores={deaths=1..,respawn=..31}] respawn 31

execute if score .mode .data = .6 .num run clear @s[scores={deaths=1..},team=blue]
execute if score .mode .data = .6 .num run team join red @s[scores={deaths=1..},team=blue]
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={deaths=1..}] respawn 30

scoreboard players set @s deaths 0

execute as @s[scores={respawn=1..},gamemode=adventure] at @s run function game:player/ded
scoreboard players add @s respawn 0

execute as @s[scores={kill=1..}] at @s run function game:player/kill

execute as @s at @s run function game:player/spawncheck

execute as @s[scores={placeSlime=1..}] at @s positioned ^ ^ ^1.6 run function game:player/slime
execute as @s[scores={placeMagma=1..}] at @s positioned ^ ^ ^1.6 run function game:player/magma
execute as @s[scores={placeCreeper=1..}] at @s positioned ^ ^ ^1.6 run function game:player/creeper

scoreboard players set @s placeSlime 0
scoreboard players set @s placeMagma 0
scoreboard players set @s placeCreeper 0

#
scoreboard players add @r death_ani 1
scoreboard players operation @a[scores={death_ani=4..}] death_ani %= .4 .num

# death messages
execute as @s[scores={killP=1..}] run scoreboard players operation @a KILL_ID -= @s ID

execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[team=red] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[team=red] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[team=red] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[team=red] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute as @s[scores={killP=1..}] run scoreboard players operation @a KILL_ID += @s ID

scoreboard players set @s killP 0

#holding flag
scoreboard players add @s[tag=hasflag] flagtime 1
effect give @s[tag=hasflag,scores={flagtime=1}] glowing 1 1 true
title @s[tag=hasflag,scores={flagtime=1}] actionbar [{"text":"! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ !","color":"aqua","bold":"true"},{"text":" GLOWING ","bold":true,"color":"dark_aqua"},{"text":"! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ !","color":"aqua","bold":"true"}]
title @s[tag=hasflag,scores={flagtime=20}] actionbar {"text":"","color":"gold"}
execute as @s[tag=hasflag,scores={flagtime=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 0.15 1 0.15
execute as @s[tag=hasflag,scores={flagtime=1}] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.4 1.4 0.4
execute as @s[tag=hasflag,scores={flagtime=1}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.7 1.2 0.7
scoreboard players set @s[tag=hasflag,scores={flagtime=50..}] flagtime 0
scoreboard players set @s[tag=!hasflag] flagtime 0

#ladders
scoreboard players remove @s[scores={has_lev=0..}] has_lev 1

execute as @s at @s if block ~ ~0.24 ~ minecraft:ladder run effect give @s minecraft:levitation 1 8 true
execute as @s[scores={has_lev=..0}] at @s if block ~ ~0.24 ~ minecraft:ladder if block ~ ~0.7 ~ minecraft:air run effect clear @s minecraft:levitation
execute as @s at @s if block ~ ~0.24 ~ minecraft:ladder if block ~ ~0.7 ~ minecraft:air run effect give @s minecraft:levitation 1 1 true

execute as @s at @s if block ~ ~-0.2 ~ minecraft:vine run effect give @s minecraft:levitation 1 3 true
execute as @s[scores={has_lev=..0}] at @s if block ~ ~-0.2 ~ minecraft:vine if block ~ ~0.7 ~ minecraft:air run effect clear @s minecraft:levitation
execute as @s at @s if block ~ ~-0.2 ~ minecraft:vine if block ~ ~0.7 ~ minecraft:air run effect give @s minecraft:levitation 1 1 true

execute as @s[scores={has_lev=..0}] at @s unless block ~ ~0.24 ~ minecraft:ladder unless block ~ ~-0.2 ~ minecraft:vine run effect clear @s minecraft:levitation
execute as @s at @s if block ~ ~-0.4 ~ minecraft:vine run effect give @s minecraft:levitation 1 1 true

#remove blind (note: only used for totem, so it also custom removes slow)
scoreboard players remove @s[scores={removeBlind=0..}] removeBlind 1
effect give @s[scores={removeBlind=0}] minecraft:blindness 1 100 true
effect clear @s[scores={removeBlind=-1}] minecraft:slowness

#inspawn effects
effect give @s[tag=!inspawn,tag=inspawn2] speed 1 0 true

tag @s[tag=!inspawn] remove inspawn2
tag @s[tag=inspawn] add inspawn2

scoreboard players set @s[tag=inspawn] respawn_assist 0
scoreboard players add @s[tag=!inspawn,scores={respawn_assist=..179,invul=..0}] respawn_assist 1

#
scoreboard players add @s game_id 0
execute if score @s game_id < .current_id .data run function game:player/leave_game
execute if score @s game_id < .current_id .data run scoreboard players operation @s game_id = .current_id .data

#
scoreboard players add @s[scores={respawn=1..}] respawning_time 1