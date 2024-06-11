#
function game:tmi/chest_items
function game:menu/custom_random/container

#
execute as @a[scores={leave_potion=1..}] at @s run function game:player/leave_game

#
scoreboard players set @a[tag=!lobby,tag=!playing,team=!Spectator,gamemode=adventure] Leave 1
execute as @a[scores={Leave=1..},tag=!is_spectating,tag=playing] at @s if score @s game_id = .current_id .data if score .running .data = .1 .num run function game:player/relog_game
execute as @a[scores={Leave=1..}] at @s run function game:player/leave_game

#
execute as @a[tag=loading] at @s run function game:player/leave_game

#ID
execute if entity @a[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @a[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

execute if entity @a[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @a[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

#
function game:player/item_count

#
execute as @e[type=minecraft:zombie_villager] run data merge entity @s {IsBaby:0b}

#
execute as @e[type=marker,tag=door] at @s run function game:doors/main

#
execute as @a[scores={boost_use=1..,delay_boost=..0,respawn=..0}] at @s run function game:items/boost/trigger
execute as @a[scores={boost_use=1..}] at @s run function game:items/boost/fail
scoreboard players remove @a[scores={delay_boost=0..}] delay_boost 1
kill @e[type=egg]

#
execute as @a[scores={zoomies=1..}] at @s run function game:items/speed/effect
execute as @a[scores={speed_use=1..,respawn=..0}] at @s run function game:items/speed/trigger
execute as @a[scores={speed_use=1..}] at @s run function game:items/speed/fail
kill @e[type=ender_pearl]

#
kill @e[tag=kill,tag=dead]

#
execute as @e[tag=teleport_down_3] at @s run gamemode adventure
execute as @e[tag=teleport_down_3] at @s run tp @s ~ ~-50 ~
tag @e remove teleport_down_3

tag @e[tag=teleport_down_2] add teleport_down_3
execute as @e[tag=teleport_down_2] at @s run tp @s @s
tag @e remove teleport_down_2

tag @e[tag=teleport_down] add teleport_down_2
execute as @e[tag=teleport_down] at @s run tp @s @s
tag @e remove teleport_down

#
scoreboard players add .ran_team .random 1
execute if score .ran_team .random = .2 .num run scoreboard players set .ran_team .random 0

scoreboard players set .players .data 0
scoreboard players set .players_playing .data 0
execute as @a run scoreboard players add .players .data 1
execute as @a[tag=playing] run scoreboard players add .players_playing .data 1

#
gamemode adventure @a[gamemode=survival]
effect give @a minecraft:resistance 999 255 true

execute as @e[type=item,tag=!no_kill,nbt={Item:{id:"minecraft:panda_spawn_egg",components:{"minecraft:custom_model_data":0}}}] at @s as @p[tag=trap_dif] run scoreboard players operation @s drop_creeper = @s drop_egg_generic
execute as @e[type=item,tag=!no_kill,nbt={Item:{id:"minecraft:panda_spawn_egg",components:{"minecraft:custom_model_data":1}}}] at @s as @p[tag=wall_dif] run scoreboard players operation @s drop_silver = @s drop_egg_generic
execute as @e[type=item,tag=!no_kill,nbt={Item:{id:"minecraft:panda_spawn_egg",components:{"minecraft:custom_model_data":2}}}] at @s as @p[tag=magma_dif] run scoreboard players operation @s drop_magma = @s drop_egg_generic
execute as @e[type=item,tag=!no_kill,nbt={Item:{id:"minecraft:panda_spawn_egg",components:{"minecraft:custom_model_data":3}}}] at @s as @p[tag=slime_dif] run scoreboard players operation @s drop_slime = @s drop_egg_generic
execute as @e[type=item,tag=!no_kill,nbt={Item:{id:"minecraft:panda_spawn_egg",components:{"minecraft:custom_model_data":4}}}] at @s as @p[tag=turret_dif] run scoreboard players operation @s drop_turret = @s drop_egg_generic
scoreboard players set @a drop_egg_generic 0

kill @e[type=item,tag=!no_kill]

execute as @a run attribute @s minecraft:generic.max_health base set 2

execute as @e[type=arrow] run data merge entity @s {damage:1000.0}

#gametime
execute if score .gametime .data >= .1 .num run scoreboard players add .gametime .data 1

#lobby
tag @a remove lobby
tag @a[x=245,y=-50,z=-235,distance=..60] add lobby
execute as @a[tag=lobby] at @s run function game:player/lobby
scoreboard players set @a[x=245,y=-50,z=-235,distance=..60] invul 40
#scoreboard players set @a[x=243.5,y=-44,z=-235.5,distance=3.5..60] arrowReload 32
#clear @a[x=243.5,y=-44,z=-235.5,distance=3.5..60] arrow
team join red_lobby @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=1}]
team join blue_lobby @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=2}]
team join Spectator @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=-1}]

tp @a[x=249,y=-56,z=-265,dx=30,dy=3,dz=70,gamemode=adventure] 243.5 -44.00 -235.5 -90 13

tag @e[type=arrow,x=245,y=-50,z=-235,distance=..60] add kill
tag @e[type=arrow,x=233.0,y=-80,z=-266.9,dx=30,dy=60,dz=-25] remove kill

execute as @a[x=243.5,y=-44,z=-235.5,distance=..50,scores={arrowReload=2..35}] as @s run scoreboard players set @s arrowReload 38
execute as @a[x=243.5,y=-44,z=-235.5,distance=..4,scores={team_pref=-1}] run clear @s arrow
execute as @a[x=243.5,y=-44,z=-235.5,distance=..4] run scoreboard players set @s lobby_text_time 80
execute as @a[x=243.5,y=-44,z=-235.5,distance=..4,scores={team_pref=-1}] run scoreboard players set @s arrowReload 0
execute as @a[x=243.5,y=-44,z=-235.5,distance=..2.9,scores={bowUse=1..}] as @s run function game:menu/hitscan_start

scoreboard players set @a[scores={deaths=..0}] KILL_ID 0

execute if score .map_screen_time .data matches 0..5 run function game:menu/screen_transition

execute as @e[type=giant,scores={dead_head=1..}] run function game:menu/p_display/dead_head_loop

#team count
function game:game/team_dif

#spawns
function game:game/spawns

#
execute as @e[tag=cutscene] at @s run function game:cutscene/main

### ENTITIES ###

# generator
execute if score .running .data = .1 .num as @e[type=marker,tag=gen] at @s run function game:generator/main

#placed_blocks
execute as @e[type=marker,tag=temp_block] at @s run function game:items/temp_block/main

#walls
execute as @e[type=minecraft:falling_block] at @s run function game:items/wall/block/main

#spawn placing
tag @e[type=minecraft:magma_cube] add spawn
tag @e[type=slime] add spawn

execute as @e[tag=spawn] at @s run function game:items/spawn/main

#walls
execute as @e[type=silverfish] at @s run summon marker ~ ~ ~ {Tags:["wall"]}
tp @e[type=silverfish] ~ ~-1000 ~
kill @e[type=silverfish]
execute as @e[tag=wall] at @s run function game:items/wall/main

#grenade
kill @e[type=snowball,tag=dummy]
execute as @e[tag=grenademark] at @s run function game:items/grenade/check
execute as @e[type=snowball,tag=!dummy,tag=!started] at @s run function game:items/grenade/check_throw_valid
execute as @e[type=snowball,tag=!dummy] at @s run function game:items/grenade/main
execute as @e[tag=grenadehit] at @s run function game:items/grenade/hitmark
tag @a remove ger_sound

#hurtime
scoreboard players set @a hurt 0
execute as @a run execute store result score @s hurt run data get entity @s HurtTime 1

#scoreboard players set @a[tag=hurt_next] hurt 9
#tag @a remove hurt_next
#tag @a[scores={snowball=1..}] add hurt_next

scoreboard players set @a[scores={hurt=9..,invul=..0,respawn=..0}] deaths 1
scoreboard players set @a[scores={hurt=9..,invul=1..,respawn=..0,break_invul=1..,wall_invul=1..}] deaths 1
execute if score .mode .data = .6 .num run tag @a[team=blue,scores={deaths=1..}] add blue_died
tag @a[tag=totem] remove blue_died
scoreboard players set @a[scores={deaths=1..}] hurt 9
scoreboard players set @a break_invul 0
execute as @a[scores={deaths=1..}] run function game:player/death_id

scoreboard players remove @a[scores={wall_invul=0..}] wall_invul 1

#
scoreboard players add @e[type=arrow] ID 0
execute as @a[scores={bowUse=1..},team=red] at @s run tag @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] add red
execute as @a[scores={bowUse=1..},team=blue] at @s run tag @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] add blue

execute as @e[type=arrow,tag=!shot] at @s run function game:items/arrow/shot_scores

execute as @e[type=arrow] at @s run function game:items/arrow/main

#
execute as @a[scores={crossUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
tag @e[type=arrow] add shot
execute as @a at @s run function game:player/arrowcheck
scoreboard players set @a bowUse 0
scoreboard players set @a crossUse 0

# infected
execute as @e[tag=crate] at @s run function game:game/infected/crates/loop
execute as @e[tag=survivor_generator] at @s run function game:game/infected/generator/loop

#arrow
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function game:arrow/land

#lobby range
function game:lobby/range/loop

# flags
execute as @e[tag=redflag,tag=drop] at @s run function game:flags/dropped
execute as @e[tag=blueflag,tag=drop] at @s run function game:flags/dropped

execute as @e[tag=redflag,tag=!drop] at @s run function game:flags/main
execute as @e[tag=blueflag,tag=!drop] at @s run function game:flags/main

#spawn zombie villager
execute as @a store result score @s zombie_egg_count run clear @s zombie_villager_spawn_egg 0

execute as @a run scoreboard players operation @s zombie_egg_count_t -= @s zombie_egg_count
execute as @a[scores={zombie_egg_count_t=1..}] run scoreboard players operation @s spawn_zombie_villager += @s zombie_egg_count_t

execute as @a run scoreboard players operation @s zombie_egg_count_t = @s zombie_egg_count

execute as @a[scores={spawn_zombie_villager=1..},team=blue] at @s run scoreboard players operation @e[type=zombie_villager,tag=!old,limit=1,sort=nearest,team=,distance=..10] ID = @s ID
execute as @a[scores={spawn_zombie_villager=1..},team=blue] at @s as @e[type=zombie_villager,tag=!old,limit=1,sort=nearest,team=,distance=..10] run team join blue @s
execute as @a[scores={spawn_zombie_villager=1..},team=red] at @s run scoreboard players operation @e[type=zombie_villager,tag=!old,limit=1,sort=nearest,team=,distance=..10] ID = @s ID
execute as @a[scores={spawn_zombie_villager=1..},team=red] at @s as @e[type=zombie_villager,tag=!old,limit=1,sort=nearest,team=,distance=..10] run team join red @s
execute as @e[type=zombie_villager,tag=!old,team=] at @s if entity @p[scores={spawn_zombie_villager=1..},team=red,distance=..9] run team join red @s
execute as @e[type=zombie_villager,tag=!old,team=] at @s if entity @p[scores={spawn_zombie_villager=1..},team=blue,distance=..9] run team join blue @s
execute as @e[type=zombie_villager,tag=!old,team=] at @s run team join blue @s
scoreboard players set @a[scores={spawn_zombie_villager=1..}] spawn_zombie_villager 0
tag @e[type=zombie_villager,tag=!old,team=red] add old
tag @e[type=zombie_villager,tag=!old,team=blue] add old

#
tag @a remove poison_range

execute as @e[type=minecraft:area_effect_cloud] at @s run function game:items/acid/main

#### PLAYERS ###
execute as @a at @s run function game:player/main

scoreboard players set @a DamageTaken 0
scoreboard players set @a DamageDealt 0
scoreboard players set @a sword_break 0

#tags
tag @e[type=slime] add old
tag @e[type=magma_cube] add old
tag @e[type=creeper] add old

# Timer
execute if score .TIME .data matches 241.. run scoreboard players set .TIME .data 240
execute unless score .end_countdown .data > .0 .num unless score .cutscene_running .data = .1 .num if score .running .data = .1 .num if score .TIME .data > .0 .num run scoreboard players add .time_tick .data 1
execute if entity @a[tag=hasflag] if score .time_tick .data < .21 .num run scoreboard players set .time_tick .data 21
execute if score .end_countdown .data > .0 .num run scoreboard players set .time_tick .data 0
execute store result bossbar time value run scoreboard players get .TIME .data
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num run scoreboard players remove .TIME .data 1
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_sec .data = .TIME .data
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_min .data = .TIME .data
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_min .data /= .60 .num
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_sec .data %= .60 .num
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":""},{"font":"fancy","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy","text":":"},{"font":"fancy","score":{"name":".TIME_sec","objective":".data"}}]
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":""},{"font":"fancy","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy","text":":0"},{"font":"fancy","score":{"name":".TIME_sec","objective":".data"}}]
execute if score .mode .data = .1 .num if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute if score .mode .data = .1 .num if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data = .21 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute if score .running .data = .1 .num if score .TIME .data >= .0 .num if score .time_tick .data >= .21 .num unless entity @a[tag=hasflag] run scoreboard players set .time_tick .data 0
execute if score .TIME .data = .60 .num if score .announce_60s .data matches 0 run title @a times 6 20 6
execute unless score .mode .data matches 7 if score .TIME .data = .60 .num if score .announce_60s .data matches 0 run title @a subtitle {"text":"60 REMAINING","font":"fancy"}
execute if score .TIME .data = .60 .num if score .announce_60s .data matches 0 run title @a title {"text":""}
execute if score .TIME .data = .60 .num if score .announce_60s .data matches 0 run scoreboard players set .announce_60s .data 1
execute if score .TIME .data = .30 .num if score .announce_30s .data matches 0 run title @a times 6 20 6
execute if score .TIME .data = .30 .num if score .announce_30s .data matches 0 run title @a subtitle {"text":"30 REMAINING","font":"fancy"}
execute if score .TIME .data = .30 .num if score .announce_30s .data matches 0 run title @a title {"text":""}
execute if score .TIME .data = .30 .num if score .announce_30s .data matches 0 run scoreboard players set .announce_30s .data 1
execute if score .TIME .data = .0 .num unless score .mode .data matches 1 run function game:end
execute if score .TIME .data = .0 .num if score .mode .data matches 1 run function game:game/end_ctf
execute if score .TIME .data = .0 .num unless score .mode .data matches 1 run function game:end
execute if score .TIME .data = .0 .num run scoreboard players reset .TIME .data

tag @a remove has_ui
tag @a[tag=playing] add has_ui
tag @a[gamemode=spectator] add has_ui

bossbar set minecraft:time players @a[tag=has_ui]
bossbar set minecraft:scrap players @a[tag=has_ui]
bossbar set minecraft:status players @a[tag=has_ui]

#
execute if score .running .data = .1 .num if score .end_countdown .data > .0 .num run function game:game/end_countdown

# Infection win condition
execute if score .mode .data = .6 .num if score .running .data = .1 .num if score .gametime .data > .300 .num if score .end_countdown .data = .n5 .num unless entity @a[team=blue,x=243.5,y=-44,z=-235.5,distance=70..] run function game:game/infected/end

execute unless score .cutscene_running .data = .1 .num if score .running .data = .1 .num run function game:game/main

#trap
effect give @e[tag=trap] resistance 999 10 true
execute as @e[tag=trap] run execute store result score @s hurt run data get entity @s HurtTime 1
execute as @e[tag=trap,scores={hurt=..1}] at @s positioned ~ ~0.6 ~ run function game:items/trap/main
effect give @e[tag=trap,scores={hurt=2..}] glowing 10 10 true
kill @e[tag=trap,scores={hurt=2..}]

#crossbow test
scoreboard players add @a crossbowTime 0
clear @a[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{trigger:1b},"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}}}] crossbow[custom_name='{"text":"Crossbow [Active]","italic":false,"color":"gray"}']
clear @a[scores={crossbowTime=..0}] crossbow[custom_name='{"text":"Crossbow [Active]","italic":false,"color":"gray"}',custom_data={trigger:0b}]
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{trigger:1b},"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}}}] crossbowTime 220
item replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{trigger:1b},"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}}}] weapon.mainhand with crossbow[custom_name='{"text":"Crossbow [Active]","italic":false,"color":"gray"}',unbreakable={show_in_tooltip:false},charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1

scoreboard players add @a[scores={crossbowReload=1..}] crossbowReload 1
scoreboard players set @a[scores={crossbowUse=1..}] crossbowReload 1
tag @a[scores={crossbowReload=2..},nbt={SelectedItem:{id:"minecraft:crossbow"}}] add reloadCross
tag @a[scores={crossbowReload=2..},nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}}}] remove reloadCross
##clear @a[tag=reloadCross] crossbow
item replace entity @a[tag=reloadCross] weapon.mainhand with crossbow[custom_name='{"text":"Crossbow [Active]","italic":false,"color":"gray"}',unbreakable={show_in_tooltip:false},charged_projectiles=[{id:"minecraft:arrow",count:1}],custom_data={trigger:0b}] 1
scoreboard players set @a[tag=reloadCross] crossbowReload 0

tag @a remove reloadCross
scoreboard players set @a crossbowUse 0

execute as @a[scores={crossbowTime=1..}] at @s run function game:items/crossbow/active

#danger area UNUSED (PREVIOUSLY FOR COVES SPAWN)
#scoreboard players set @a[tag=!danger] danger 0
#scoreboard players add @a[tag=danger] danger 1
#execute as @a[scores={danger=1}] at @s run title @s times 2 10 10
#execute as @a[scores={danger=1}] at @s run title @s title {"text":"! DANGER AREA !"}
#execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 1
#execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 2
#effect give @a[scores={danger=18..}] minecraft:instant_damage 1 100 true
#tag @a remove danger

#
execute if score .running .data = .1 .num run function game:game/time_up

execute if score .running .data = .1 .num run scoreboard players add .no_players .timer 1
execute if score .running .data = .1 .num if entity @a[team=red,tag=playing] if entity @a[team=blue,tag=playing] run scoreboard players set .no_players .timer 0
execute if score .running .data = .1 .num if score .mode .data = .6 .num if entity @a[team=red,tag=playing] run scoreboard players set .no_players .timer 0
execute if score .running .data = .1 .num if score .mode .data = .7 .num if entity @a[team=blue,tag=playing] run scoreboard players set .no_players .timer 0

execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .10 .num run tellraw @a {"text":"NO PLAYERS ON A TEAM. RESTARTING IN 10 SECONDS"}
execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .200 .num run tellraw @a {"text":"NO PLAYERS. GAME ENDING"}
execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .10 .num run tellraw @a {"text":"NO PLAYERS INFECTED. RESTARTING IN 10 SECONDS"}
execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .200 .num run tellraw @a {"text":"NO PLAYERS. GAME ENDING"}
execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .10 .num run tellraw @a {"text":"NO PLAYERS. RESTARTING IN 10 SECONDS"}
execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .200 .num run tellraw @a {"text":"NO PLAYERS. GAME ENDING"}
execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .0 .num run scoreboard players set .no_players .timer -60
execute if score .no_players .timer > .200 .num run scoreboard players set .no_players .timer -60

#
execute if score .start_cd .data >= .0 .num run function game:game/start_countdown
execute if score .start_cd .data = .n5 .num run scoreboard players set .start_cd .data -1

#> Begin Viral zone
# set fakeplayer .ffa .data to 1 to activate; 0 to deactivate
execute if score .ffa .data matches 1 run function game:ffa/main
scoreboard players set @a click 0

# Scrap item
execute as @e[tag=scrap,type=item] at @s run function game:game/infected/scrap_item

#
execute as @e[type=minecraft:snowball] run data merge entity @s {Item:{id:"minecraft:kelp",count:1}}

#
scoreboard players set @a place_slime_temp 0
scoreboard players set @a place_magmac_temp 0

# VFX
execute as @e[tag=shimmer,type=marker] at @s run function game:vfx/shimmer/main


#
tag @a remove blue_died

# Correct lobby visual
function game:menu/p_display/check_visuals

#
tp @e[tag=kill] ~ ~-10000 ~
tag @e[tag=kill] add dead

#
item replace entity @e[type=minecraft:zombie_villager,team=red] armor.head with minecraft:red_stained_glass
item replace entity @e[type=minecraft:zombie_villager,team=blue] armor.head with minecraft:cyan_stained_glass

execute as @e[type=zombie_villager,team=red] run data merge entity @s {VillagerData:{type:"minecraft:desert"}}
execute as @e[type=zombie_villager,team=blue] run data merge entity @s {VillagerData:{type:"minecraft:snow"}}

#
execute as @a store result score @s claw_count run clear @s netherite_sword 0
clear @a[scores={claw_count=2..}] netherite_sword 1

execute as @a store result score @s acid_count run clear @s lingering_potion 0
clear @a[scores={acid_count=5..}] lingering_potion 1

# maps
execute if score .map .data = .6 .num run function game:map/valley/run

# Coves VFX
#execute as @e[x=-154,y=-62,z=-86,dx=-42,dy=20,dz=-72,type=arrow] at @s run particle minecraft:splash ^ ^ ^ 0.1 0.1 0.1 0 1 force @a