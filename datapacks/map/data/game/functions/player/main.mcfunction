#
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-0.5 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-1.0 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-1.5 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-2.0 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-2.5 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-3.0 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-3.5 0 0 0 0 1 normal @s
#execute as @a at @s positioned ~ ~1.6 ~ run particle minecraft:bubble ^ ^ ^-3.95 0 0 0 0 1 normal @s

#
execute if score .mode .data = .7 .num run scoreboard players set @s invul 100

#
execute as @s[scores={bow_throw=1..},tag=!playing] run function game:player/bow/throw

#
#spawn_zombie_villager

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
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=red] respawn 120
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=blue] respawn 10
execute if score .mode .data = .7 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 20

execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] bat_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 10
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

bossbar set minecraft:dark players
bossbar set minecraft:dark players @a[tag=dark]

effect clear @s[tag=dark] minecraft:night_vision
effect give @s[tag=!dark] minecraft:night_vision 999999 10 true
effect give @s minecraft:weakness 999999 10 true
effect give @s minecraft:saturation 999999 10 true

effect give @a minecraft:night_vision 999999 10 true

effect clear @s[tag=clear_invis] invisibility
tag @s remove clear_invis

#items
execute unless score @s team_pref_temp = @s team_pref run function game:player/switch_team_pref

clear @s[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] leather_chestplate
item replace entity @s[team=red,nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1524521295,-489798199,-1818645928,-1857490419]}]}
item replace entity @s[team=blue,nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] armor.chest with leather_chestplate{display:{color:22015},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1261957983,1980582918,-2036986291,-2007908802]}]}

#reload
execute as @s store result score @s arrowCount run clear @s arrow 0
scoreboard players add @s[scores={arrowCount=..2}] arrowReload 1
scoreboard players set @s[scores={arrowCount=3..}] arrowReload 0
#execute if score .mode .data = .6 .num run scoreboard players set @s[scores={arrowCount=2..},team=red] arrowReload 0

clear @s[scores={arrowReload=40..}] arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=0}] hotbar.8 with minecraft:arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=1}] hotbar.8 with minecraft:arrow 2
scoreboard players remove @s[scores={arrowReload=40..}] arrowReload 40

#execute if score .mode .data = .6 .num run scoreboard players set @s[scores={arrowReload=..10},team=red] arrowReload 10

effect clear @s[scores={invul=1..}] poison

effect give @s[scores={health=1..19}] minecraft:instant_health 1 10 true

scoreboard players remove @s[scores={invul=1..}] invul 1

clear @s[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] chainmail_helmet
item replace entity @s[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] armor.head with minecraft:chainmail_helmet{Damage:150,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:30,Operation:0,UUID:[I;-1372090343,-270579763,-1607716031,1256953017]}]}
item replace entity @s[scores={invul=1}] armor.head with minecraft:air

# Place Block
execute as @s[scores={place_block=1..}] at @s run function game:detection/block_scan/trigger
scoreboard players set @s place_block 0

#
tag @s[tag=dark_immune] remove dark

#
scoreboard players add @s[tag=item_boost] item_boost 1
scoreboard players add @s[tag=item_minion] item_minion 1
scoreboard players add @s[tag=item_acid] item_acid 1

scoreboard players set @s[tag=item_acid,nbt={Inventory:[{id:"minecraft:lingering_potion"}]},scores={item_acid=100..}] item_acid 140

give @s[scores={item_boost=220}] egg{display:{Name:'{"text":"Boost"}'},HideFlags:32} 1
give @s[scores={item_acid=220..}] lingering_potion{display:{Name:'{"text":"Acid"}'},HideFlags:32,Potion:"minecraft:poison",CustomPotionColor:65314} 1
give @s[scores={item_minion=260..}] minecraft:zombie_villager_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Minion"}'},HideFlags:6,EntityTag:{Team:"red",PersistenceRequired:0b,CanPickUpLoot:0b,IsBaby:0b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.3}]}} 1

scoreboard players set @s[scores={item_boost=220..}] item_boost 0
scoreboard players set @s[scores={item_minion=260..}] item_minion 0
scoreboard players set @s[scores={item_acid=220..}] item_acid 0

# Totem
tag @s remove totem
tag @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] add totem
execute as @s[tag=totem] at @s run particle minecraft:item emerald ~ ~0.35 ~ 0.2 0.18 0.2 0 2 force

execute as @s[tag=totem,scores={deaths=1..},tag=!exploded] at @s run function game:player/totem

# No Cap
scoreboard players remove @s[scores={no_cap=1..}] no_cap 1

# death messages
execute as @s[scores={killP=1..}] run function game:player/kill_message

#
execute as @s[scores={deaths=1..}] at @s run function game:player/death

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

scoreboard players set @s killP 0

#holding flag
execute as @s[tag=hasflag] at @s run function game:player/flag_glow 
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
scoreboard players remove @s[scores={removeBlind=-1..}] removeBlind 1
effect give @s[scores={removeBlind=0}] minecraft:blindness 1 100 true
effect clear @s[scores={removeBlind=-1}] minecraft:slowness

#remove slowness
effect clear @s[scores={no_slow=0}] minecraft:slowness
scoreboard players remove @s[scores={no_slow=0..}] no_slow 1

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

#### TEMP COMMENT / PREVIOUSLY RAN CODE AFTER PLAYER MAIN / CAUTION MAY HAVE ISSUES ###

#flags
clear @s[tag=!hasflag] red_banner
clear @s[tag=!hasflag] blue_banner

item replace entity @s[tag=!hasflag,scores={invul=..0}] armor.head with minecraft:air

clear @s[tag=!hasflag,team=blue] red_banner
clear @s[tag=!hasflag,team=blue] red_dye
item replace entity @s[tag=!hasflag,team=blue,scores={invul=..0}] armor.head with minecraft:air
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]},team=blue] armor.head with minecraft:red_banner
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:99b}]},team=blue] weapon.offhand with minecraft:red_dye

clear @s[tag=!hasflag,team=red] blue_banner
clear @s[tag=!hasflag,team=red] blue_dye
item replace entity @s[tag=!hasflag,team=red,scores={invul=..0}] armor.head with minecraft:air
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_banner",Slot:103b}]},team=red] armor.head with minecraft:blue_banner
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_dye",Slot:99b}]},team=red] weapon.offhand with minecraft:blue_dye

#bow correct
clear @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] bow
give @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},team=!Spectator,gamemode=!creative] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
clear @s[team=Spectator] bow

# OPTIMIZATION NEEDED : run only when give a new bow
function game:player/bow_model

#reveal
execute as @s[scores={useMap=1..}] run function game:items/reveal/use

#claws
give @s[scores={sword_break=1..}] minecraft:netherite_sword{Damage:2031,CanDestroy:["minecraft:gravel"],Enchantments:[{id:"minecraft:knockback",lvl:3s}],HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:100,Operation:0,UUID:[I;-1269594486,-1448851549,-1210703323,1523703223]}]} 1