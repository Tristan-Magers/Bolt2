# Check if bow_ui interacted with slot 0
execute if items entity @s[tag=lobby,gamemode=adventure] hotbar.0 bow[custom_data={shop:1}] run item replace entity @s hotbar.0 with air

#
tp @e[tag=intro_start,tag=!teleported] 243.50 -48 -245.5 -64.8 -5.5
tag @e[tag=into_start] add teleported

#
execute as @s[scores={golden_apple=1..}] at @s run function game:test4
effect clear @s[scores={golden_apple=1..}] minecraft:absorption
effect clear @s[scores={golden_apple=1..}] minecraft:regeneration
scoreboard players set @s golden_apple 0

#
scoreboard players add @s[tag=intro_cutscene] intro_cutscene_time 1

execute as @s[scores={intro_cutscene_time=1}] run title @s times 0 10 10
execute as @s[scores={intro_cutscene_time=1}] run title @s title {"translate":"\u0001","font":"title"}
execute as @s[scores={intro_cutscene_time=1..9}] run tp @s 244 -36 -225 -115 25

execute as @s[scores={intro_cutscene_time=10}] run summon block_display 244 -35 -225 {teleport_duration:60,Rotation:[-115F,25F],Tags:["intro_start","new"]}
execute as @s[scores={intro_cutscene_time=10}] run scoreboard players operation @e[tag=intro,tag=new,limit=1] ID = @s ID
#execute as @s[scores={intro_cutscene_time=10}] run tag @e[tag=intro_start] remove my_intro
#execute as @s[scores={intro_cutscene_time=10}] run tag @e remove me
#execute as @s[scores={intro_cutscene_time=10}] run tag @s add me
#execute as @s[scores={intro_cutscene_time=10}] as @e[tag=intro_start] if score ID @s = ID @e[tag=me,limit=1] run tag @s add my_intro
execute as @s[scores={intro_cutscene_time=10}] run spectate @e[tag=intro_start,tag=new,limit=1,tag=!in_use]
execute as @s[scores={intro_cutscene_time=10}] run tag @e[tag=intro_start,tag=new,limit=1] add in_use
execute as @s[scores={intro_cutscene_time=10}] run tag @e[tag=intro_start] remove new

execute as @s[scores={intro_cutscene_time=70},tag=!new_p_text] run tellraw @a[tag=!playing] [{"text":"Welcome "},{"selector":"@s","color":"gold"},{"text":" to Bleps!"}]
execute as @s[scores={intro_cutscene_time=70},tag=!new_p_text] run tellraw @s[tag=!playing] [{"text":"Enjoy our instant kill bow game. ☺"}]
execute as @s[scores={intro_cutscene_time=70},tag=!new_p_text] run tellraw @s[tag=!playing] [{"text":"Created by ChainsawNinja and Co.","color":"gray"}]
execute as @s[scores={intro_cutscene_time=70},tag=!new_p_text] run tellraw @s[tag=!playing] [{"text":"Don't use extra camera angles with f5 while playing.","color":"dark_gray"}]
execute as @s[scores={intro_cutscene_time=70},tag=!new_p_text] run tag @s add new_p_text

tag @s[scores={intro_cutscene_time=70..}] remove intro_cutscene
execute as @s[scores={intro_cutscene_time=11..69}] run tag @e[tag=intro_start] remove my_intro
execute as @s[scores={intro_cutscene_time=11..69}] run tag @e remove me
execute as @s[scores={intro_cutscene_time=11..69}] run tag @s add me
execute as @s[scores={intro_cutscene_time=11..69}] as @e[tag=intro_start] if score @s ID = @e[tag=me,limit=1] ID run tag @s add my_intro
execute as @s[scores={intro_cutscene_time=11..69}] at @s run spectate @e[tag=intro_start,limit=1,sort=nearest,tag=my_intro]
execute as @s[scores={intro_cutscene_time=70..}] run function game:player/leave_game
#execute as @s[scores={intro_cutscene_time=70..}] run kill @e[tag=intro_start,type=block_display]
scoreboard players reset @s[scores={intro_cutscene_time=70..}] intro_cutscene_time

#
execute as @s[tag=is_spectating,gamemode=spectator] run function game:player/spectator/check

#
scoreboard players set @s[tag=!inspawn] inspawn 0
scoreboard players add @s[tag=inspawn] inspawn 1
execute if score .mode .data = .6 .num run title @s[scores={inspawn=100},team=blue,tag=playing,gamemode=adventure] times 10 40 10
execute if score .mode .data = .6 .num run title @s[scores={inspawn=100},team=blue,tag=playing,gamemode=adventure] title {"text":"Leave Spawn","font":"fancy"}
execute if score .mode .data = .6 .num run title @s[scores={inspawn=100},team=blue,tag=playing,gamemode=adventure] subtitle {"text":"(or else)","font":"fancy","color":"gray"}
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={inspawn=210},team=blue,tag=playing,gamemode=adventure] deaths 1
execute if score .mode .data = .6 .num as @s[scores={inspawn=310},team=blue,tag=playing,gamemode=adventure] run tellraw @a[team=red] [{"text":"❌ ","color":"white"},{"selector":"@s"},{"text":" died a couch potato","color":"white"}]
execute if score .mode .data = .6 .num as @s[scores={inspawn=310},team=blue,tag=playing,gamemode=adventure] run tellraw @a[team=blue] [{"text":"❌ ","color":"gray"},{"selector":"@s"},{"text":" died a couch potato","color":"white"}]
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={inspawn=310},team=blue,tag=playing,gamemode=adventure] deaths 1

title @s[scores={inspawn=320},tag=playing,gamemode=adventure] times 10 40 10
title @s[scores={inspawn=320},tag=playing,gamemode=adventure] title {"text":"Leave Spawn","font":"fancy"}
title @s[scores={inspawn=320},tag=playing,gamemode=adventure] subtitle {"text":"(or get kicked)","font":"fancy","color":"gray"}
scoreboard players set @s[scores={inspawn=600},tag=playing,gamemode=adventure] leave_potion 1
tag @s[scores={inspawn=600},tag=playing,gamemode=adventure] add kicked
scoreboard players add @s[scores={inspawn=600},tag=playing,gamemode=adventure] inspawn 1

#
scoreboard players remove @s[scores={spawn_message_delay=0..}] spawn_message_delay 1

#
scoreboard players set .success .calc 0
execute store success score .success .calc run effect clear @s minecraft:water_breathing

execute if score .success .calc = .1 .num run effect give @s[team=blue] minecraft:poison 3 3 true
execute if score .success .calc = .1 .num if score .tmi .data = .1 .num run effect give @s[team=red] minecraft:poison 3 3 true

#
clear @s[nbt={Inventory:[{id:"minecraft:bow",Slot:-106b}]}] bow

tag @s remove off_correct
tag @s[nbt={Inventory:[{Slot:-106b}]}] add off_correct
tag @s[nbt={Inventory:[{id:"minecraft:blue_dye",Slot:-106b}]}] remove off_correct
tag @s[nbt={Inventory:[{id:"minecraft:red_dye",Slot:-106b}]}] remove off_correct
tag @s[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b}]}] remove off_correct
tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] remove off_correct
tag @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] add off_correct

tag @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] add off_correct

tag @s[tag=lobby,tag=off_correct] remove lobby_inv_correct

tag @s[gamemode=creative] remove off_correct
tag @s[tag=lobby] remove off_correct

execute as @s[tag=off_correct] run function game:player/offhand_correct

#
execute store result score @s scrap run clear @s minecraft:netherite_scrap 0
execute as @s[scores={scrap=1..}] as @s[nbt=!{Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b}]}] run function game:player/scrap_correct

#
execute if score .mode .data = .7 .num run scoreboard players set @s invul 100

#
execute as @s[scores={bow_throw=1..},tag=!playing] run function game:player/bow/throw

#dead
execute as @s[gamemode=spectator,scores={respawn=1..}] at @s run function game:player/dead_animation

#cutscene
gamemode spectator @s[scores={cutscene_time=1..}]
gamemode adventure @s[scores={cutscene_time=0,team_pref=0..}]
execute as @s[scores={cutscene_time=76}] run gamemode adventure
execute as @s[scores={cutscene_time=76}] run gamemode spectator
execute as @s[gamemode=spectator,scores={cutscene_time=2..78}] run spectate @e[tag=cutscene,type=armor_stand,limit=1]

#  Give start items at beginning of round
execute as @s[scores={cutscene_time=0,cutscene=1},tag=playing] run function game:player/inventory/give_start_items

scoreboard players remove @s[scores={cutscene_time=0..}] cutscene_time 1

#test
#particle minecraft:bubble_pop -171 -46 -120 12 0.3 12 0 1 force
#particle minecraft:dolphin -171 -58 -120 12 4 12 0 10 force
#title @a actionbar {"text":"\uE026","color":"light_blue"}

#effects
xp add @a[tag=lobby] -100 levels

bossbar set minecraft:dark players
bossbar set minecraft:dark players @a[tag=dark]

effect clear @s[tag=dark] minecraft:night_vision
effect give @s[tag=!dark,tag=!no_vis] minecraft:night_vision 999999 10 true
effect give @s minecraft:weakness 999999 10 true
effect give @s minecraft:saturation 999999 10 true

effect give @a[tag=!no_vis] minecraft:night_vision 999999 10 true

effect clear @s[tag=clear_invis] invisibility
tag @s remove clear_invis

attribute @s minecraft:movement_speed base set 0.1

execute if score .tmi .data matches 1 if score .tmi_fog .data matches 2 run effect give @s[tag=!lobby,gamemode=adventure] blindness 2 0 true
execute if score .tmi .data matches 1 if score .tmi_fog .data matches 2 run attribute @s[tag=!lobby,gamemode=adventure] minecraft:movement_speed base set 0.14

#items
execute unless score @s team_pref_temp = @s team_pref run function game:player/switch_team_pref

clear @s[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] leather_chestplate
item replace entity @s[team=red,nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] armor.chest with leather_chestplate[dyed_color={rgb:16711680,show_in_tooltip:false},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[team=blue,nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] armor.chest with leather_chestplate[dyed_color={rgb:22015,show_in_tooltip:false},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}]

item replace entity @s[team=red,nbt=!{Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] armor.legs with leather_leggings[dyed_color={rgb:16711680,show_in_tooltip:false},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[team=blue,nbt=!{Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] armor.legs with leather_leggings[dyed_color={rgb:22015,show_in_tooltip:false},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}]

item replace entity @s[team=red,nbt=!{Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] armor.feet with leather_boots[dyed_color={rgb:16711680,show_in_tooltip:false},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[team=blue,nbt=!{Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] armor.feet with leather_boots[dyed_color={rgb:22015,show_in_tooltip:false},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}]

#reload
tag @s[scores={no_quiver_arrow=160..}] add arrow_hit
scoreboard players set @s[scores={no_quiver_arrow=160..}] no_quiver_arrow 0

tag @s[scores={slime_kill=1..}] add arrow_hit
tag @s[scores={magma_kill=1..}] add arrow_hit
tag @s[scores={zombie_kill=1..}] add arrow_hit

execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run scoreboard players set @s[tag=!lobby,tag=arrow_hit] arrowReload 40
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run scoreboard players set @s[tag=!lobby,scores={arrowReload=..30}] arrowReload 1

scoreboard players set @s magma_kill 0
scoreboard players set @s slime_kill 0
scoreboard players set @s zombie_kill 0

tag @s remove arrow_hit

execute as @s store result score @s arrowCount run clear @s arrow 0
scoreboard players set @s[gamemode=creative] arrowCount 3
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run scoreboard players add @s[scores={arrowCount=0}] no_quiver_arrow 1
scoreboard players add @s[scores={arrowCount=..2}] arrowReload 1
scoreboard players set @s[scores={arrowCount=3..}] arrowReload 0
#execute if score .mode .data = .6 .num run scoreboard players set @s[scores={arrowCount=2..},team=red] arrowReload 0

item replace entity @s[scores={arrowReload=..39,arrowCount=0}] hotbar.8 with gray_dye[custom_name='{"text":"Reloading","italic":false}'] 1

clear @s[scores={arrowReload=40..}] arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=0}] hotbar.8 with minecraft:arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=1}] hotbar.8 with minecraft:arrow 2
item replace entity @s[scores={arrowReload=40..,arrowCount=2}] hotbar.8 with minecraft:arrow 3

item modify entity @s[scores={arrowCount=1..},team=] hotbar.8 game:model_0
item modify entity @s[scores={arrowCount=1..},team=red] hotbar.8 game:model_1
item modify entity @s[scores={arrowCount=1..},team=blue] hotbar.8 game:model_2

scoreboard players remove @s[scores={arrowReload=40..}] arrowReload 40

execute if score .mode .data = .6 .num run scoreboard players set @s[scores={arrowReload=..10},team=red] arrowReload 10

effect clear @s[scores={invul=1..}] poison

effect give @s[scores={health=1..19}] minecraft:instant_health 1 10 true

scoreboard players remove @s[scores={invul=1..}] invul 1

clear @s[tag=lobby] chainmail_helmet
clear @s[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] chainmail_helmet
item replace entity @s[tag=!lobby,scores={invul=2..,glowing=..0},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]},tag=!hasflag] armor.head with minecraft:chainmail_helmet[damage=150,attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:30,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={invul=1,glowing=..0},tag=!hasflag] armor.head with minecraft:air

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

give @s[scores={item_boost=220..}] egg[custom_name='{"text":"Boost","italic":false}'] 1
give @s[scores={item_acid=220..,acid_count=..2}] lingering_potion[custom_name='{"text":"Acid","italic":false}',hide_additional_tooltip={},potion_contents={potion:"minecraft:water_breathing",custom_color:6618913}] 1
give @s[scores={item_minion=220..}] minecraft:zombie_villager_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Minion","italic":false,"color":"gray"}',lore=['{"text":"Summon zombie that attacks enemies","color":"white","italic":false}','{"text":"Max active: 17","color":"white","italic":false}'],entity_data={id:"minecraft:zombie_villager",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],Attributes:[{Name:max_health,Base:1},{Name:movement_speed,Base:0.33}]}] 1

scoreboard players set @s[scores={item_boost=220..}] item_boost 0
scoreboard players set @s[scores={item_minion=220..}] item_minion 40
scoreboard players set @s[scores={item_acid=220..}] item_acid 0

# Capture point

execute as @s[tag=capture_point,scores={deaths=1..}] at @s run function game:player/death_capture

# Totem
tag @s remove totem
tag @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] add totem
execute as @s[tag=totem] at @s run particle minecraft:item{item:"minecraft:emerald"} ~ ~0.35 ~ 0.2 0.18 0.2 0 2 force

execute as @s[tag=totem,scores={deaths=1..},tag=!exploded] at @s run function game:player/totem

# No Cap
scoreboard players remove @s[scores={no_cap=1..}] no_cap 1  

#
execute as @s[scores={deaths=1..}] at @s run function game:player/death

execute as @s[scores={respawn=1..},gamemode=adventure] at @s run function game:player/ded
scoreboard players add @s respawn 0

#
execute as @s[scores={kill=1..}] at @s run function game:player/kill

# death messages
execute as @s[scores={killP=1..}] run function game:player/kill_message

execute as @s at @s run function game:player/spawncheck

execute as @s[scores={placeSlime=1..},tag=slime_dif] at @s positioned ^ ^ ^1.6 run function game:player/slime
execute as @s[scores={placeMagma=1..},tag=magma_dif] at @s positioned ^ ^ ^1.6 run function game:player/magma
execute as @s[scores={placeCreeper=1..},tag=trap_dif] at @s positioned ^ ^ ^1.6 run function game:player/creeper

scoreboard players set @s placeSlime 0
scoreboard players set @s placeMagma 0
scoreboard players set @s placeCreeper 0

#
scoreboard players add @r death_ani 1
scoreboard players operation @a[scores={death_ani=4..}] death_ani %= .4 .num

scoreboard players set @s killP 0

#holding flag
execute as @s[tag=hasflag] at @s run function game:player/flag_glow 
scoreboard players set @s[tag=!hasflag] flag_time 0
scoreboard players set @s[tag=!hasflag] flagtime 0
scoreboard players set @s[tag=!hasflag] glow_count 0

#ladders
scoreboard players remove @s[scores={has_lev=0..}] has_lev 1

execute as @s[scores={climb=1..}] at @s if block ~ ~0.24 ~ minecraft:ladder run effect give @s minecraft:levitation 1 8 true
execute as @s[scores={has_lev=..0}] at @s if block ~ ~0.24 ~ minecraft:ladder if block ~ ~0.7 ~ minecraft:air run effect clear @s minecraft:levitation
execute as @s[scores={climb=1..}] at @s if block ~ ~0.24 ~ minecraft:ladder if block ~ ~0.7 ~ minecraft:air run effect give @s minecraft:levitation 1 1 true

execute as @s[nbt={OnGround:0b}] at @s if block ~ ~-0.2 ~ minecraft:vine run effect give @s minecraft:levitation 1 3 true
execute as @s[scores={has_lev=..0}] at @s if block ~ ~-0.2 ~ minecraft:vine if block ~ ~0.7 ~ minecraft:air run effect clear @s minecraft:levitation
execute as @s[nbt={OnGround:0b}] at @s if block ~ ~-0.2 ~ minecraft:vine if block ~ ~0.7 ~ minecraft:air run effect give @s minecraft:levitation 1 1 true

execute as @s[scores={has_lev=..0}] at @s unless block ~ ~0.24 ~ minecraft:ladder unless block ~ ~-0.2 ~ minecraft:vine run effect clear @s minecraft:levitation
execute as @s[nbt={OnGround:0b}] at @s if block ~ ~-0.4 ~ minecraft:vine run effect give @s minecraft:levitation 1 1 true

scoreboard players set @s climb 0

effect clear @s[x=-224,y=-47,z=-14,dx=50,dy=40,dz=80] levitation
#effect clear @s[scores={shift=1..}] levitation

#remove blind (note: only used for totem, so it also custom removes slow)
scoreboard players remove @s[scores={removeBlind=-1..}] removeBlind 1
#effect give @s[scores={removeBlind=0}] minecraft:blindness 1 100 true
effect clear @s[scores={removeBlind=-1}] minecraft:slowness

#remove slowness
effect clear @s[scores={no_slow=0}] minecraft:slowness
scoreboard players remove @s[scores={no_slow=0..}] no_slow 1

#inspawn effects
effect give @s[tag=!inspawn,tag=inspawn2] speed 1 0 true

tag @s[tag=!inspawn] remove inspawn2
tag @s[tag=inspawn] add inspawn2

#scoreboard players set @s[tag=inspawn] respawn_assist 0
scoreboard players add @s[tag=!inspawn,scores={respawn_assist=..119,invul=..0}] respawn_assist 1

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

item replace entity @s[tag=!hasflag,scores={invul=..0,glowing=..0}] armor.head with minecraft:air

clear @s[tag=!hasflag,team=blue] red_banner
clear @s[tag=!hasflag,team=blue] red_dye
item replace entity @s[tag=!hasflag,team=blue,scores={invul=..0,glowing=..0}] armor.head with minecraft:air
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]},team=blue,scores={glowing=..0}] armor.head with minecraft:red_banner
clear @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:-106b}]},team=blue] minecraft:red_dye
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:-106b}]},team=blue] weapon.offhand with minecraft:red_dye[custom_name='{"text":"Red Flag"}']

clear @s[tag=!hasflag,team=red] blue_banner
clear @s[tag=!hasflag,team=red] blue_dye
item replace entity @s[tag=!hasflag,team=red,scores={invul=..0,glowing=..0}] armor.head with minecraft:air
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_banner",Slot:103b}]},team=red,scores={glowing=..0}] armor.head with minecraft:blue_banner
clear @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_dye",Slot:-106b}]},team=red] minecraft:blue_dye
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_dye",Slot:-106b}]},team=red] weapon.offhand with minecraft:blue_dye[custom_name='{"text":"Blue Flag"}']

clear @s[scores={glowing=..0}] minecraft:carved_pumpkin
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]},team=red,scores={glowing=1..}] armor.head with minecraft:carved_pumpkin[custom_model_data={strings:["1"]}]
item replace entity @s[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]},team=blue,scores={glowing=1..}] armor.head with minecraft:carved_pumpkin[custom_model_data={strings:["2"]}]
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]},scores={glowing=1..}] armor.head with minecraft:carved_pumpkin[custom_model_data={strings:["0"]}]

scoreboard players set @s[scores={respawn=1..}] blind -1
scoreboard players set @s[scores={invul=1..}] blind -1
scoreboard players add @s[scores={blind=1..}] blind_new 1
scoreboard players set @s[scores={blind=..0}] blind_new 0
execute as @s[scores={blind=1..}] run function game:player/blind

#bow correct
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]},gamemode=!creative] run function game:player/inv_checks/no_bow

# OPTIMIZATION NEEDED : run only when give a new bow
function game:bow/dynamic_bow_data

#reveal
execute as @s[scores={useMap=1..,respawn=..0,delay_reveal=..0}] run function game:items/reveal/use
execute as @s[scores={useMap=1..}] unless entity @s[scores={respawn=..0,delay_reveal=..0}] run function game:items/reveal/fail

scoreboard players remove @s[scores={delay_reveal=0..}] delay_reveal 1

#claws
give @s[scores={sword_break=1..}] minecraft:netherite_sword[custom_name='{"text":"Claws","italic":false,"color":"gray"}',minecraft:max_damage=1,lore=['{"text":"Claw players, placables, and walls","color":"white","italic":false}'],damage=0,can_break={predicates:[{blocks:"gravel"}]},enchantments={levels:{"minecraft:knockback":3},show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"attack_damage",type:"attack_damage",amount:100,operation:"add_value",slot:"any"}],show_in_tooltip:false}] 1

# CORRECT DROPPED ITEMS (INCLUDED FOR CORRECTIONS)
function game:player/inventory/drop

# UI FOR BOW SELECTION
tag @s remove check_bow_ui
tag @s[tag=lobby_inv_correct] add check_bow_ui
tag @s remove lobby_inv_correct
execute if items entity @s[tag=!check_bow_ui] player.cursor minecraft:bow run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.2 minecraft:bow run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.3 minecraft:bow run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.4 minecraft:bow run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.5 minecraft:bow run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.8 minecraft:bow run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] player.cursor minecraft:magenta_glazed_terracotta run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.2 minecraft:magenta_glazed_terracotta run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.3 minecraft:magenta_glazed_terracotta run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.4 minecraft:magenta_glazed_terracotta run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.5 minecraft:magenta_glazed_terracotta run tag @s add check_bow_ui
execute if items entity @s[tag=!check_bow_ui] hotbar.8 minecraft:magenta_glazed_terracotta run tag @s add check_bow_ui
execute as @s[tag=lobby,tag=check_bow_ui] run function game:bow_ui/main

# CORRECT HAVING WRONG SPAWN POINT IN INVENTORY (for TMI mode)
execute store result score @s[team=red,tag=playing] drop_magma run clear @s panda_spawn_egg[custom_model_data={strings:["3"]}]
execute as @s[team=red,tag=playing,scores={drop_magma=1..}] run function game:player/give/red_spawn

# CORRECT FOR HAVING TOO MANY PLACEABLES OUT (for balance and lag reasons)
tag @e[tag=me] remove me
tag @s add me

scoreboard players set @s turrets_active 0
execute as @e[tag=turret] if score @s ID = @e[tag=me,limit=1] ID run scoreboard players add @e[tag=me] turrets_active 1

scoreboard players set @s traps_active 0
execute as @e[type=creeper] if score @s ID = @e[tag=me,limit=1] ID run scoreboard players add @e[tag=me] traps_active 1

scoreboard players set @s minions_active 0
execute as @e[type=zombie_villager] if score @s ID = @e[tag=me,limit=1] ID run scoreboard players add @e[tag=me] minions_active 1

execute as @s[scores={turrets_active=5..}] as @e[tag=turret] run tag @s remove my_turret
execute as @s[scores={turrets_active=5..}] as @e[tag=turret] if score @s ID = @e[tag=me,limit=1] ID run tag @s add my_turret
#execute as @s[scores={turrets_active=6..}] run tellraw @s {"text":"Too many turrets","color":"dark_gray"}
execute as @s[scores={turrets_active=5..}] as @e[tag=turret,tag=my_turret,limit=1] at @s run function game:ffa/turret/kill_self
execute as @s[scores={turrets_active=6..}] as @e[tag=turret,tag=my_turret,limit=1] at @s run function game:ffa/turret/kill_self

execute as @s[scores={traps_active=13..}] as @e[type=creeper] run tag @s remove my_trap
execute as @s[scores={traps_active=13..}] as @e[type=creeper] if score @s ID = @e[tag=me,limit=1] ID run tag @s add my_trap
#execute as @s[scores={traps_active=13..}] run tellraw @s {"text":"Too many traps","color":"dark_gray"}
execute as @s[scores={traps_active=13..}] as @e[type=creeper,tag=my_trap,limit=1] at @s run kill @s
execute as @s[scores={traps_active=14..}] as @e[type=creeper,tag=my_trap,limit=1] at @s run kill @s

execute as @s[scores={minions_active=17..}] as @e[type=zombie_villager] run tag @s remove my_minion
execute as @s[scores={minions_active=17..}] as @e[type=zombie_villager] if score @s ID = @e[tag=me,limit=1] ID run tag @s add my_minion
#execute as @s[scores={traps_active=13..}] run tellraw @s {"text":"Too many traps","color":"dark_gray"}
execute as @s[scores={minions_active=17..}] as @e[type=zombie_villager,tag=my_minion,limit=1] at @s run kill @s
execute as @s[scores={minions_active=18..}] as @e[type=zombie_villager,tag=my_minion,limit=1] at @s run kill @s

tag @s remove me

# Score changes at end
scoreboard players remove @s glowing 1
scoreboard players set @s shift 0
scoreboard players set @s snowball 0

# Coves FX
execute as @s[x=-154,y=-62,z=-86,dx=-42,dy=20,dz=-72] store result score @s random run random value 0..20
execute as @s[x=-154,y=-62,z=-86,dx=-42,dy=20,dz=-72,scores={random=0}] at @s run particle minecraft:bubble_pop ^ ^1.6 ^8 3.5 3.5 3.5 0 4 force @s
execute as @s[x=-154,y=-62,z=-86,dx=-42,dy=20,dz=-72,scores={random=1}] at @s run particle minecraft:underwater ^ ^1.6 ^6 2.5 2.5 2.5 10 10 force @s
execute as @s[x=-154,y=-62,z=-86,dx=-42,dy=20,dz=-72,scores={random=2}] at @s run particle minecraft:dolphin ^ ^1.6 ^6 2.5 2.5 2.5 10 10 force @s

# Infection actionbar
execute as @s[tag=playing,team=blue,scores={scrap=..0,stats_scrap=..0,title_pause=..0},gamemode=adventure] if score .mode .data = .6 .num run title @s actionbar {"text":"Collect scrap from crates and infected","color":"gold"}
execute as @s[tag=playing,team=blue,scores={scrap=1..,stats_scrap=..0,title_pause=..0},gamemode=adventure] if score .mode .data = .6 .num run title @s actionbar {"text":"Return scrap to generator for more items","color":"gray"}

scoreboard players remove @s[scores={title_pause=0..}] title_pause 1

# Dark/Blind remove
scoreboard players remove @s[scores={fog_remove=-5..}] fog_remove 1
execute if score .map .data matches 2 run effect clear @s[scores={fog_remove=0}] blindness
execute if score .map .data matches 2 run effect clear @s[scores={fog_remove=0}] darkness
effect clear @s[scores={fog_remove=-1}] darkness