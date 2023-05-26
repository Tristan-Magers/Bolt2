scoreboard players add @a team_pref 0

scoreboard players set .stats_end .data 0

tag @a remove playing
tag @a[scores={team_pref=0..}] add playing

team leave @a

team join red @a[team=,scores={team_pref=1},gamemode=adventure]
team join blue @a[team=,scores={team_pref=2},gamemode=adventure]

function game:game/team_dif
execute if score .ranked_random .data = .0 .num if score .team_dif .data >= .0 .num if score .ran_team .random = .1 .num run team join blue @a[limit=1,sort=random,team=,scores={team_pref=0},gamemode=adventure]

function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random
function game:game/fill_player_random

execute if score .mode .data = .6 .num run scoreboard players set .players_in .data
execute if score .mode .data = .6 .num as @a[tag=playing] run scoreboard players add .players_in .data 1

execute if score .mode .data = .6 .num run team join blue @a[scores={team_pref=0..}]

execute if score .mode .data = .6 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .5 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .8 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .11 .num run function game:game/fill_player_infected
execute if score .mode .data = .6 .num if score .players_in .data >= .14 .num run function game:game/fill_player_infected

execute if score .mode .data = .7 .num run team join blue @a[scores={team_pref=0..}]

scoreboard players set @a kill 0

scoreboard objectives remove Scores
scoreboard objectives add Scores dummy

tag @a remove hasspawn
tag @a remove used_spawn
tag @a remove killed

scoreboard players set @a no_cap 0
scoreboard players set @a kills 0
scoreboard players set @a killStreak 0
scoreboard objectives setdisplay list kills
scoreboard objectives setdisplay sidebar Scores

scoreboard players set @a respawn_assist 0

execute if score .mode .data = .1 .num run scoreboard players set Red Scores 0
execute if score .mode .data = .1 .num run scoreboard players set Blue Scores 0

# timers for modes with time
execute if score .mode .data = .6 .num run scoreboard players set TIME Scores 195
execute if score .mode .data = .7 .num run scoreboard players set TIME Scores 120

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
bossbar set minecraft:status color red
bossbar set minecraft:status visible false

bossbar add time {"text":"Time","color":"white"}
bossbar set minecraft:time players @a
bossbar set minecraft:time style progress
bossbar set minecraft:time color white
bossbar set minecraft:time value 190
bossbar set minecraft:time max 190
execute unless score .mode .data = .6 .num run bossbar set minecraft:time visible false
execute if score .mode .data = .6 .num run bossbar set minecraft:time visible true

bossbar add scrap {"text":"Scrap Collected","color":"white"}
bossbar set minecraft:scrap players @a
bossbar set minecraft:scrap style notched_10
bossbar set minecraft:scrap color blue
bossbar set minecraft:scrap value 0
bossbar set minecraft:scrap max 10
execute unless score .mode .data = .6 .num run bossbar set minecraft:scrap visible false
execute if score .mode .data = .6 .num run bossbar set minecraft:scrap visible true

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

execute if score .map .data = .1 .num run summon armor_stand -84 -53 21 {Rotation:[-90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .2 .num run summon armor_stand -134 -50 21 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .3 .num run summon armor_stand -222.5 -52 13 {Rotation:[-90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .5 .num run summon armor_stand -327 -52 -72 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .6 .num run summon armor_stand -387 -42 16 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .10 .num run summon armor_stand -245.0 -44.5 -432 {Rotation:[-90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro","rev"]}
execute if score .map .data = .12 .num run summon armor_stand 8 -49.5 -300 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}
execute if score .map .data = .13 .num run summon armor_stand -28 -34 231 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}

#execute unless entity @e[tag=cutscene] run summon armor_stand -68 -53 21 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene","intro"]}

scoreboard players set @a cutscene 1
scoreboard players set @a cutscene_time 80

#
scoreboard players set .BoostKills .stats 9999
scoreboard players set .CrossKills .stats 15
scoreboard players set .GrenadeKills .stats 4
scoreboard players set .WallKills .stats 5

execute if score .mode .data = .6 .num run scoreboard players set .CrossKills .stats 1000
execute if score .mode .data = .6 .num run scoreboard players set .GrenadeKills .stats 1000
execute if score .mode .data = .6 .num run scoreboard players set .WallKills .stats 1000

execute if score .mode .data = .7 .num run scoreboard players set .CrossKills .stats 1000
execute if score .mode .data = .7 .num run scoreboard players set .GrenadeKills .stats 6
execute if score .mode .data = .7 .num run scoreboard players set .BoostKills .stats 12
execute if score .mode .data = .7 .num run scoreboard players set .WallKills .stats 1000

#
scoreboard players set @a has_lev 0

#
scoreboard players set @a stats_captures 0
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

scoreboard players set .zombie_evolve_timer .timer 0
scoreboard players set .zombie_evolve_level .data 0
scoreboard players set .zombie_evolve_type_0 .data 0
scoreboard players set .zombie_evolve_type_1 .data 0
scoreboard players set .zombie_evolve_type_2 .data 0
scoreboard players set .zombie_evolve_type_3 .data 0
scoreboard players set .zombie_evolve_type_4 .data 0
scoreboard players set .zombie_evolve_type_5 .data 0
scoreboard players set .zombie_evolve_type_6 .data 0
scoreboard players set .zombie_evolve_type_7 .data 0

#
tag @a remove item_minion
tag @a remove item_boost
tag @a remove dark_immune
tag @a remove more_armor
tag @a remove item_acid

scoreboard players set @a item_acid 100
scoreboard players set @a item_minion 100
scoreboard players set @a item_boost 80