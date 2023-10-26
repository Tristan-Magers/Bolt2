#
stopsound @a * minecraft:music.credits

#
gamerule reducedDebugInfo false

#
execute as @e[tag=crate] at @s run function game:game/infected/crates/despawn

#
execute if score .mode .data = .6 .num as @a[team=red] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Deaths"}]}}]
execute if score .mode .data = .6 .num as @a[team=blue] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Deaths"}]}}]

execute if score .mode .data = .7 .num as @a[team=blue] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"text":"Score: ","color":"gray"},{"score":{"name":"@s","objective":"Scores"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Score"}]}},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Targets Broken"}]}},{"text":")","color":"gray"}]

execute if score .stats_end .data = .0 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hoverEvent":{"action":"show_text","contents":[{"text":"Trap Kills"}]}}]
execute if score .stats_end .data = .0 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hoverEvent":{"action":"show_text","contents":[{"text":"Trap Kills"}]}}]

execute if score .stats_end .data = .1 .num if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hoverEvent":{"action":"show_text","contents":[{"text":"Trap Kills"}]}},{"text":"  RC:","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Rank Change"}]}},{"score":{"name":"@s","objective":"rank_delta"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Rank Change"}]}}]
execute if score .stats_end .data = .1 .num if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Kills"}]}},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Deaths"}]}},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Flag Captures"}]}},{"score":{"name":"@s","objective":"stats_attempts"},"color":"#36bdd9","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Capture Attempts"}]}},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"text":"/","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Grenade Kills"}]}},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B","hoverEvent":{"action":"show_text","contents":[{"text":"Trap Kills"}]}},{"text":"  RC:","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Rank Change"}]}},{"score":{"name":"@s","objective":"rank_delta"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Rank Change"}]}}]

scoreboard players set .stats_end .data 0

#
kill @e[tag=gen]
kill @e[type=item]
kill @e[type=minecraft:zombie_villager]

kill @e[type=minecraft:creeper]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:magma_cube]
kill @e[tag=wall]
kill @e[tag=spawn_tracker]
kill @e[tag=crate_marker]
execute as @e[tag=crate] at @s run function game:game/infected/crates/despawn
kill @e[type=block_display,tag=survivor_generator_dis]
execute as @e[tag=survivor_generator] at @s run function game:game/infected/generator/despawn

kill @e[tag=grenadehit]

kill @e[type=minecraft:area_effect_cloud]

kill @e[tag=redflag]
kill @e[tag=blueflag]

#
scoreboard players set .gametime .data 0
scoreboard players set .no_players .timer -60
scoreboard players set .running .data 0

function game:game/next_id
execute as @a run function game:player/leave_game

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
scoreboard players set @a bow_throw 0

scoreboard players set @a crossbowTime 1

# THE viral
scoreboard players reset @a boltDelay
scoreboard players set @a[scores={deflectTimer=2..}] deflectTimer 1
scoreboard players set @a[scores={speedTimer=2..}] speedTimer 1
effect clear @a slow_falling
execute as @e[tag=turret] run function game:ffa/turret/kill_self
tag @a remove turretDead
tag @a remove executioner