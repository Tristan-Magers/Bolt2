#
stopsound @a * minecraft:music.dragon

#
gamerule reducedDebugInfo false

#
execute as @e[tag=crate] at @s run function game:game/infected/crates/despawn

#tiny town and win achievements
execute if score Blue Scores > Red Scores if score .mode .data = .1 .num as @a[team=blue,tag=locked_72] run function game:player/unlock/72
execute if score Red Scores > Blue Scores if score .mode .data = .1 .num as @a[team=red,tag=locked_72] run function game:player/unlock/72

execute if score Blue Scores > Red Scores if score .mode .data = .1 .num if score .map .data = .10 .num as @a[team=blue,tag=locked_79] run function game:player/unlock/79
execute if score Red Scores > Blue Scores if score .mode .data = .1 .num if score .map .data = .10 .num as @a[team=red,tag=locked_79] run function game:player/unlock/79

# achievement for playing infected and winning as infected
execute if score .mode .data = .6 .num if score .players_playing .data matches 2.. as @a[tag=locked_11,tag=playing] run function game:player/unlock/11
execute if score .mode .data = .6 .num if score .players_playing .data matches 2.. as @a[tag=locked_72,tag=playing] run function game:player/unlock/72
execute if score .mode .data = .6 .num if score .players_playing .data matches 2.. if score .map .data = .10 .num as @a[tag=locked_79,tag=playing] run function game:player/unlock/79

# achievement for playing target
execute if score .mode .data = .7 .num as @a[tag=locked_24,tag=playing] run function game:player/unlock/24

# achievement for playing tmi
execute if score .tmi .data = .1 .num as @a[tag=locked_29,tag=playing] run function game:player/unlock/29

execute if score .tmi .data = .1 .num if score .tmi_preset .data matches 0 as @a[tag=locked_55,tag=playing] run function game:player/unlock/55
execute if score .tmi .data = .1 .num if score .tmi_preset .data matches 5 as @a[tag=locked_5,tag=playing] run function game:player/unlock/5

execute if score Blue Scores > Red Scores if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num as @a[team=blue,tag=locked_15] run function game:player/unlock/15
execute if score Red Scores > Blue Scores if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num as @a[team=red,tag=locked_15] run function game:player/unlock/15

execute if score Blue Scores > Red Scores if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num as @a[team=blue,tag=locked_19] run function game:player/unlock/19
execute if score Red Scores > Blue Scores if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num as @a[team=red,tag=locked_19] run function game:player/unlock/19

# target score achievements
execute if score .mode .data = .7 .num as @a[team=blue,tag=playing,scores={kills=50..},tag=locked_34] run function game:player/unlock/34
execute if score .mode .data = .7 .num as @a[team=blue,tag=playing,scores={Scores=60..},tag=locked_30] run function game:player/unlock/30
execute if score .mode .data = .7 .num as @a[team=blue,tag=playing,scores={Scores=75..},tag=locked_51] run function game:player/unlock/51

# total game achievements
scoreboard players add @a[tag=playing] track_total_games 1
execute as @a[scores={track_total_games=10..},tag=locked_78,tag=playing] run function game:player/unlock/78

# Infection
execute if score .mode .data = .6 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"stats_scrap"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Scrap Returned"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Scrap Returned"}]}},{"score":{"name":"@s","objective":"stats_inf_kill"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Infected Kills"}]}}]
execute if score .mode .data = .6 .num as @a[team=red,tag=!sur_start] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"stats_sur_kill"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Survivor Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Survivor Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}}]
execute if score .mode .data = .6 .num as @a[team=red,tag=sur_start] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"stats_sur_kill"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Survivor Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Survivor Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"score":{"name":"@s","objective":"stats_scrap"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Scrap Returned"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Scrap Returned"}]}},{"score":{"name":"@s","objective":"stats_inf_kill"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Infected Kills"}]}}]

# Target
execute if score .mode .data = .7 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"text":"Score: ","color":"gray"},{"score":{"name":"@s","objective":"Scores"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Score"}]}},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Targets Broken"}]}},{"text":")","color":"gray"}]

# TMI deathmatch
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}}]
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}}]

# TMI point cap
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}}]
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}}]

# TMI ctf
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .0 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}}]
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .0 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}}]

# CtF unranked
execute if score .tmi .data = .0 .num if score .stats_end .data = .0 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}}]
execute if score .tmi .data = .0 .num if score .stats_end .data = .0 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}}]

# CtF ranked
#execute if score Blue Scores = Red Scores if score .tmi .data = .0 .num if score .stats_end .data = .0 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}}]
#execute if score Blue Scores = Red Scores if score .tmi .data = .0 .num if score .stats_end .data = .0 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}}]

execute unless score Blue Scores = Red Scores if score .stats_end .data = .1 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}},{"text":"  RC:","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Rank Change"}]}},{"score":{"name":"@s","objective":"rank_delta"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Rank Change"}]}}]
execute unless score Blue Scores = Red Scores if score .stats_end .data = .1 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}},{"text":"  RC:","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Rank Change"}]}},{"score":{"name":"@s","objective":"rank_delta"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Rank Change"}]}}]

execute if score Blue Scores = Red Scores if score .stats_end .data = .1 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}}]
execute if score Blue Scores = Red Scores if score .stats_end .data = .1 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s","hover_event":{"action":"show_text","value":[{"selector":"@s"}]}},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"text":"/","color":"gray","hover_event":{"action":"show_text","value":[{"text":"Mini TNT Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hover_event":{"action":"show_text","value":[{"text":"Trap Kills"}]}}]

#
scoreboard players set .stats_end .data 0

#
kill @e[tag=gen]
kill @e[type=item]
kill @e[type=minecraft:zombie_villager]

kill @e[type=minecraft:creeper]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:magma_cube]
kill @e[tag=wall]
kill @e[type=pig,tag=!chair]
kill @e[tag=turret_head]
kill @e[tag=turret_stand]
kill @e[tag=turretPunch]
kill @e[tag=spawn_tracker]
kill @e[tag=crate_marker]
execute as @e[tag=crate] at @s run function game:game/infected/crates/despawn
kill @e[type=block_display,tag=survivor_generator_dis]
execute as @e[tag=survivor_generator] at @s run function game:game/infected/generator/despawn

kill @e[tag=grenadehit]

kill @e[type=minecraft:area_effect_cloud]

kill @e[tag=redflag]
kill @e[tag=blueflag]

kill @e[tag=target_marker]

#
scoreboard players set .gametime .data 0
scoreboard players set .no_players .timer -60
scoreboard players set .running .data 0

function game:game/next_id
execute as @a[tag=!lobby] run function game:player/leave_game

#
scoreboard objectives setdisplay list rank

#
bossbar remove minecraft:status
bossbar remove minecraft:scrap
bossbar remove minecraft:time

#
tag @a remove item_minion
tag @a remove item_boost
tag @a remove dark_immune
tag @a remove more_armor
tag @a remove item_acid

tag @a remove dark

#
scoreboard players set @a zoomies 0

#
scoreboard players set @a bow_throw 0

scoreboard players set @a crossbowTime 1

tag @a remove crossbow_waiting

#
effect clear @a blindness
effect clear @a darkness

# THE viral
scoreboard players reset @a boltDelay
scoreboard players set @a[scores={deflectTimer=2..}] deflectTimer 1
scoreboard players set @a[scores={speedTimer=2..}] speedTimer 1
effect clear @a slow_falling
execute as @e[tag=turret] run function game:ffa/turret/kill_self
tag @a remove turretDead
tag @a remove executioner

tag @a remove targeted

tag @a remove is_spectating