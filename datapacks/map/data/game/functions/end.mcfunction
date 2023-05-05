#
tag @a remove change_rank
tag @a[team=red] add change_rank
tag @a[team=blue] add change_rank
tag @a[tag=lobby] remove change_rank
execute if score Blue Scores >= .endscore .stats if score .mode .data = .1 .num run function game:game/rank_changes
execute if score Red Scores >= .endscore .stats if score .mode .data = .1 .num run function game:game/rank_changes

#
execute unless score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white"},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B"}]
execute unless score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white"},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B"}]

execute if score .mode .data = .1 .num as @a[team=red] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white"},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B"},{"text":"  RC:","color":"gray"},{"score":{"name":"@s","objective":"rank_delta"},"color":"white"}]
execute if score .mode .data = .1 .num as @a[team=blue] run tellraw @a [{"selector":"@s"},{"text":"\n  "},{"score":{"name":"@s","objective":"kills"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_deaths"},"color":"white"},{"text":"  "},{"score":{"name":"@s","objective":"stats_captures"},"color":"#D9A836"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_ger_kills"},"color":"#3A67E0"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"stats_trap_kills"},"color":"#3FB55B"},{"text":"  RC:","color":"gray"},{"score":{"name":"@s","objective":"rank_delta"},"color":"white"}]


#
kill @e[type=item]

kill @e[tag=blueflag]
kill @e[tag=redflag]

scoreboard players set .gametime .data 0
scoreboard players set .no_players .timer -60
scoreboard players set .running .data 0

function game:game/next_id
execute as @a run function game:player/leave_game

#
scoreboard objectives setdisplay list rank

#
bossbar remove minecraft:status
