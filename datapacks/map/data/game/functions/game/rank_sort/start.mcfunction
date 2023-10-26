#
execute as @a[tag=playing,scores={team_pref=0}] run function game:game/rank_sort/create_dummy

#
effect give @e[tag=rank_dummy] minecraft:glowing 999 1 true

# Order Rank Dummies by Rank
scoreboard players set @e[tag=rank_dummy] rank_order 0
scoreboard players set .order .calc 1

function game:game/rank_sort/order

#
scoreboard players set @e[tag=rank_dummy] rank_delta_up -9999
scoreboard players set @e[tag=rank_dummy] rank_delta_down -9999

execute as @e[tag=rank_dummy] run function game:game/rank_sort/get_deltas

#
team leave @e[tag=rank_dummy]

team join red @e[tag=rank_dummy,tag=red_team]
team join blue @e[tag=rank_dummy,tag=blue_team]

function game:game/rank_sort/random_teams

#
scoreboard players set .team_ideal .calc 0
execute as @a[tag=playing] run scoreboard players operation .team_ideal .calc += @s rank
scoreboard players operation .team_ideal .calc /= .2 .num

#
scoreboard players set .rep .calc 0
function game:game/rank_sort/matchmake

#
execute as @e[tag=rank_dummy] run function game:game/rank_sort/assign_teams

#say RED @a[team=red]
#say BLUE @a[team=blue]

kill @e[tag=rank_dummy]