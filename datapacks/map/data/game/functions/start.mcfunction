scoreboard players add @a team_pref 0

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

execute if score .mode .data = .6 .num run team leave @a
execute if score .mode .data = .6 .num run team join red @r[team=,scores={team_pref=1},gamemode=adventure]
execute if score .mode .data = .6 .num unless entity @a[team=red] run team join red @r[team=,scores={team_pref=0},gamemode=adventure]
execute if score .mode .data = .6 .num run team join blue @a[team=]
execute if score .mode .data = .6 .num unless entity @a[team=red] run team join red @r

execute if score .mode .data = .7 .num run team join blue @a[scores={team_pref=0..}]

tag @a remove playing
tag @a[team=blue] add playing
tag @a[team=red] add playing

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
execute if score .mode .data = .6 .num run scoreboard players set TIME Scores 135
execute if score .mode .data = .7 .num run scoreboard players set TIME Scores 126

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

scoreboard players set .running .data 1

scoreboard players set .Time .metric 0
scoreboard players set .BowKills .metric 0
scoreboard players set .NadeKills .metric 0
scoreboard players set .TrapKills .metric 0
scoreboard players set .Kills .metric 0

#
kill @e[tag=cutscene]

execute if score .map .data = .1 .num run summon armor_stand -68 -53 21 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .2 .num run summon armor_stand -134 -50 21 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .3 .num run summon armor_stand -199 -52 13 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .5 .num run summon armor_stand -327 -52 -72 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .6 .num run summon armor_stand -387 -42 16 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .10 .num run summon armor_stand -225 -43 -432 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .12 .num run summon armor_stand 8 -49.5 -300 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}
execute if score .map .data = .13 .num run summon armor_stand -28 -34 231 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}

#execute unless entity @e[tag=cutscene] run summon armor_stand -68 -53 21 {Rotation:[90F,0F],Marker:1,Invisible:1,Tags:["cutscene"]}

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