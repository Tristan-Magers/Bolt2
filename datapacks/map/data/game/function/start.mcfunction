#
execute if score .mode .data = .1 .num if score .map .data = .3 .num if score .tmi .data matches 0 run tellraw @a [{"text":"NOTICE!","color":"#8F2929","bold":true},{"text":" Walls item disabled on map.","bold":false}]

#
tag @a remove sur_start

#
scoreboard players set @a delay_boost 0
scoreboard players set @a delay_reveal 0

#
scoreboard players add @a team_pref 0

scoreboard players set .stats_end .data 0

#
scoreboard players set .announce_30s .data 0
scoreboard players set .announce_60s .data 0

tag @a remove playing
tag @a[scores={team_pref=0..}] add playing

scoreboard players set .players_in .data 0
execute as @a[tag=playing] run scoreboard players add .players_in .data 1

scoreboard players set .even_players .data 1
execute if score .players_in .data = .1 .num run scoreboard players set .even_players .data 0
execute if score .players_in .data = .3 .num run scoreboard players set .even_players .data 0
execute if score .players_in .data = .5 .num run scoreboard players set .even_players .data 0
execute if score .players_in .data = .7 .num run scoreboard players set .even_players .data 0
execute if score .players_in .data = .9 .num run scoreboard players set .even_players .data 0
execute if score .players_in .data = .11 .num run scoreboard players set .even_players .data 0

team leave @a

execute if score .mode .data = .1 .num run team join red @a[team=,scores={team_pref=1},gamemode=adventure]
execute if score .mode .data = .1 .num run team join blue @a[team=,scores={team_pref=2},gamemode=adventure]

function game:game/team_dif
#execute if score .even_players .data = .1 .num if score .ranked_random .data = .0 .num if score .team_dif .data >= .0 .num if score .ran_team .random = .1 .num run team join blue @a[limit=1,sort=random,team=,scores={team_pref=0},gamemode=adventure]

#execute if score .even_players .data = .0 .num run function game:game/fill_player_max
#execute if score .even_players .data = .0 .num run function game:game/fill_player_max

# win streak change
execute as @a run scoreboard players operation @s win_streak *= .10 .num
execute as @a run scoreboard players operation @s rank += @s win_streak

#
execute if score .mode .data = .1 .num if score .tmi .data = .0 .num run function game:game/rank_sort/start

# undo win streak change
execute as @a run scoreboard players operation @s rank -= @s win_streak
execute as @a run scoreboard players operation @s win_streak /= .10 .num


execute if score .tmi .data = .1 .num as @a[team=] run function game:game/fill_player_random

execute if score .mode .data = .6 .num run team join blue @a[scores={team_pref=0..}]

execute if score .mode .data = .6 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .4 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .6 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .9 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .12 .num run function game:game/fill_player_infected

execute if score .mode .data = .6 .num run tag @a[team=blue,tag=playing] add sur_start

execute if score .mode .data = .7 .num run team join blue @a[scores={team_pref=0..}]

scoreboard players set @a title_pause 0

scoreboard players set @a kill 0

scoreboard objectives remove Scores
scoreboard objectives add Scores dummy

scoreboard objectives remove evolutions
scoreboard objectives add evolutions dummy {"text":"Evolutions","font":"fancy"}
scoreboard objectives modify evolutions numberformat blank

tag @a remove hasspawn
tag @a remove used_spawn
tag @a remove killed

scoreboard players set @a no_cap 0
scoreboard players set @a kills 0
scoreboard players set @a killStreak 0
scoreboard objectives setdisplay list kills
#scoreboard objectives setdisplay sidebar Scores
scoreboard objectives setdisplay sidebar
execute if score .mode .data = .6 .num run scoreboard objectives setdisplay sidebar evolutions

scoreboard players set @a respawn_assist 8

execute if score .mode .data = .1 .num run scoreboard players set Red Scores 0
execute if score .mode .data = .1 .num run scoreboard players set Blue Scores 0

# timers for modes with time
execute if score .mode .data = .1 .num run scoreboard players set .TIME .data 240
execute if score .mode .data = .6 .num run scoreboard players set .TIME .data 180
execute if score .mode .data = .7 .num run scoreboard players set .TIME .data 60

#execute if score .mode .data = .1 .num run scoreboard players set .TIME .data -100

execute as @a at @s run function game:player/getitems

function game:game/mapstart

gamemode adventure @a

scoreboard players set .gametime .data 1
scoreboard players set .end_countdown .data -5

bossbar remove status

bossbar add status {"text":"Red Flag Taken!!","color":"red"}
bossbar set minecraft:status players @a
bossbar set minecraft:status style progress
bossbar set minecraft:status value 1
bossbar set minecraft:status max 1
bossbar set minecraft:status color purple
bossbar set minecraft:status visible false

bossbar add time [{"text":"Time","color":"white"}]
bossbar set minecraft:time players @a
bossbar set minecraft:time style progress
bossbar set minecraft:time color purple
bossbar set minecraft:time value 210
bossbar set minecraft:time max 210
bossbar set minecraft:time name [{"text":""}]

bossbar set minecraft:time visible false

execute if score .mode .data = .1 .num run bossbar set minecraft:time visible true
execute if score .mode .data = .6 .num run bossbar set minecraft:time visible true
execute if score .mode .data = .7 .num run bossbar set minecraft:time visible true

execute unless score .mode .data = .7 .num run bossbar set minecraft:time value 69
execute if score .mode .data = .7 .num run bossbar set minecraft:time max 69

execute if score .mode .data = .1 .num run bossbar set minecraft:time value 240
execute if score .mode .data = .1 .num run bossbar set minecraft:time max 240

bossbar add scrap {"text":"Scrap Collected","color":"white","font":"fancy"}
bossbar set minecraft:scrap players @a
bossbar set minecraft:scrap style notched_12
bossbar set minecraft:scrap color blue
bossbar set minecraft:scrap value 0
bossbar set minecraft:scrap max 12
bossbar set minecraft:scrap visible false

#scoreboard players operation global timer -= 1 math
#execute store result bossbar timer value run scoreboard players get global timer
#execute if score global timer > 600 math run bossbar set timer color green
#execute if score global timer <= 600 math if score global timer > 200 math run bossbar set timer color yellow
#execute if score global timer < 200 math run bossbar set timer color red
#scoreboard players operation seconds timer = global timer
#scoreboard players operation seconds timer /= 20 math
#execute if score global timer > 0 math run bossbar set timer name {"text":"Timer - ","extra":[{"score":{"name":"seconds","objective":"timer"}},{"text":" seconds remaining"}]}
#execute if score global timer < 0 math run bossbar set timer name "Time's up!"
#execute if score global timer = 0 math run title @a title "Time's up!"

scoreboard players set .running .data 1

scoreboard players set .Time .metric 0
scoreboard players set .BowKills .metric 0
scoreboard players set .NadeKills .metric 0
scoreboard players set .TrapKills .metric 0
scoreboard players set .Kills .metric 0

#
kill @e[tag=cutscene]

execute if score .map .data = .1 .num run summon armor_stand -84 -55 21 {NoGravity:1,Rotation:[-90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .2 .num run summon armor_stand -166 -52 -122 {NoGravity:1,Rotation:[90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .3 .num run summon armor_stand -222.5 -54 13 {NoGravity:1,Rotation:[-90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .5 .num run summon armor_stand -327 -54 -72 {NoGravity:1,Rotation:[90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .6 .num run summon armor_stand -387 -44 16 {NoGravity:1,Rotation:[90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .10 .num run summon armor_stand -245.0 -46.5 -432 {NoGravity:1,Rotation:[-90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .12 .num run summon armor_stand 8 -51.5 -300 {NoGravity:1,Rotation:[90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .13 .num run summon armor_stand -28 -36 231 {NoGravity:1,Rotation:[90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .14 .num run summon armor_stand -515 -19 -303 {NoGravity:1,Rotation:[-90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .15 .num run summon armor_stand -435 -35 197 {NoGravity:1,Rotation:[90F,0F],Marker:0,Invisible:1,Tags:["cutscene","intro"]}

#execute unless entity @e[tag=cutscene] run summon armor_stand -68 -53 21 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}

scoreboard players set @a cutscene 1
scoreboard players set @a cutscene_time 80

#
scoreboard players set .1Kills .stats 1
scoreboard players set .2Kills .stats 3
scoreboard players set .3Kills .stats 5
scoreboard players set .4Kills .stats 10

#
scoreboard players set .BoostKills .stats 9999
scoreboard players set .CrossKills .stats 15
scoreboard players set .GrenadeKills .stats 4
scoreboard players set .WallKills .stats 5

execute if score .map .data matches 3 run scoreboard players set .WallKills .stats 1000

execute if score .mode .data = .6 .num run scoreboard players set .CrossKills .stats 1000
execute if score .mode .data = .6 .num run scoreboard players set .GrenadeKills .stats 1000
execute if score .mode .data = .6 .num run scoreboard players set .WallKills .stats 1000

execute if score .mode .data = .7 .num run scoreboard players set .CrossKills .stats 30
execute if score .mode .data = .7 .num run scoreboard players set .GrenadeKills .stats 4
execute if score .mode .data = .7 .num run scoreboard players set .BoostKills .stats 6
execute if score .mode .data = .7 .num run scoreboard players set .WallKills .stats 1000

execute if score .tmi .data matches 1 run scoreboard players set .CrossKills .stats 1000
execute if score .tmi .data matches 1 run scoreboard players set .GrenadeKills .stats 1000
execute if score .tmi .data matches 1 run scoreboard players set .BoostKills .stats 1000
execute if score .tmi .data matches 1 run scoreboard players set .WallKills .stats 1000

scoreboard players set .endscore .stats 3
execute if score .tmi .data matches 1 if score .tmi_objective .data matches 1 run scoreboard players set .endscore .stats 5
execute if score .tmi .data matches 1 if score .tmi_objective .data matches 2 run scoreboard players set .endscore .stats 9

#
scoreboard players set @a has_lev 0

#
scoreboard players set @a stats_scrap 0
scoreboard players set @a stats_inf_kill 0
scoreboard players set @a stats_sur_kill 0
scoreboard players set @a stats_captures 0
scoreboard players set @a stats_attempts 0
scoreboard players set @a stats_deaths 0
scoreboard players set @a stats_bow_kills 0
scoreboard players set @a stats_ger_kills 0
scoreboard players set @a stats_trap_kills 0
scoreboard players set @a stats_cross_kills 0

#
gamemode spectator @a[scores={team_pref=-1}]

#
scoreboard players set .no_players .timer -60

#
scoreboard players set .zombie_crates .data 0

scoreboard players set .zombie_evolve_timer .timer 340 
scoreboard players set .zombie_evolve_level .data 0
scoreboard players set .zombie_evolve_type_0 .data 0
scoreboard players set .zombie_evolve_type_1 .data 0
scoreboard players set .zombie_evolve_type_2 .data 0
scoreboard players set .zombie_evolve_type_3 .data 0
scoreboard players set .zombie_evolve_type_4 .data 0
scoreboard players set .zombie_evolve_type_5 .data 0
scoreboard players set .zombie_evolve_type_6 .data 0
scoreboard players set .zombie_evolve_type_7 .data 0
scoreboard players set .zombie_evolve_type_8 .data 0

#
tag @a remove item_minion
tag @a remove item_boost
tag @a remove dark_immune
tag @a remove more_armor
tag @a remove item_acid

scoreboard players set @a item_acid 100
scoreboard players set @a item_minion 100
scoreboard players set @a item_boost 80
scoreboard players remove @a spawn_message_delay 20

scoreboard players set @a crossbowTime 1

#
item replace block 226 -60 -240 container.0 from block 235 -49 -224 container.15
item replace block 226 -60 -242 container.0 from block 235 -49 -224 container.16
item replace block 226 -60 -244 container.0 from block 235 -49 -224 container.17

item replace block 222 -60 -240 container.0 from block 235 -49 -224 container.24
item replace block 222 -60 -242 container.0 from block 235 -49 -224 container.25
item replace block 222 -60 -244 container.0 from block 235 -49 -224 container.26

item replace block 224 -60 -240 container.0 from block 235 -49 -224 container.19
item replace block 224 -60 -242 container.0 from block 235 -49 -224 container.20
item replace block 224 -60 -244 container.0 from block 235 -49 -224 container.21
item replace block 224 -60 -246 container.0 from block 235 -49 -224 container.22

#
tag @a[scores={team_pref=-1}] add is_spectating