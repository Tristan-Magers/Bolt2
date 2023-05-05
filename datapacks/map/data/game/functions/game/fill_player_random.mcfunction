function game:game/team_dif

# get min and max of random players
scoreboard players operation .rank_max .random < @a[scores={team_pref=0},gamemode=adventure,team=] rank
scoreboard players operation .rank_max .random > @a[scores={team_pref=0},gamemode=adventure,team=] rank
scoreboard players operation .rank_min .random > @a[scores={team_pref=0},gamemode=adventure,team=] rank
scoreboard players operation .rank_min .random < @a[scores={team_pref=0},gamemode=adventure,team=] rank

# get average rank
scoreboard players set .rank_red .rank 0
scoreboard players set .rank_blue .rank 0

execute as @a[team=red] run scoreboard players operation .rank_red .rank += @s rank
execute as @a[team=blue] run scoreboard players operation .rank_blue .rank += @s rank

scoreboard players operation .rank_red .rank /= .red_players .data
scoreboard players operation .rank_blue .rank /= .blue_players .data

# add players
   # if no ranked_random
execute if score .ranked_random .data = .0 .num if score .team_dif .data >= .1 .num run team join blue @r[scores={team_pref=0},gamemode=adventure,team=]
execute if score .ranked_random .data = .0 .num unless score .team_dif .data >= .1 .num run team join red @r[scores={team_pref=0},gamemode=adventure,team=]

   # if ranked_random
tag @a remove min_rank
tag @a remove max_rank

execute as @a[scores={team_pref=0},gamemode=adventure,team=] if score @s rank = .rank_max .random run tag @s add max_rank
execute as @a[scores={team_pref=0},gamemode=adventure,team=] if score @s rank = .rank_min .random run tag @s add min_rank

execute if entity @a[scores={team_pref=0},gamemode=adventure,team=] unless entity @a[tag=max_rank] run say max fail
execute if entity @a[scores={team_pref=0},gamemode=adventure,team=] unless entity @a[tag=min_rank] run say min fail

execute unless entity @a[tag=max_rank] run tag @r[scores={team_pref=0},gamemode=adventure,team=] add max_rank
execute unless entity @a[tag=min_rank] run tag @r[scores={team_pref=0},gamemode=adventure,team=] add min_rank

execute if score .ranked_random .data = .1 .num if score .team_dif .data = .0 .num if score .rank_red .rank >= .rank_blue .rank run team join blue @r[scores={team_pref=0},gamemode=adventure,team=,tag=max_rank]
execute if score .ranked_random .data = .1 .num if score .team_dif .data = .0 .num if score .rank_red .rank < .rank_blue .rank run team join red @r[scores={team_pref=0},gamemode=adventure,team=,tag=max_rank]

execute if score .ranked_random .data = .1 .num if score .team_dif .data >= .1 .num if score .rank_red .rank >= .rank_blue .rank run team join blue @r[scores={team_pref=0},gamemode=adventure,team=,tag=max_rank]
execute if score .ranked_random .data = .1 .num if score .team_dif .data <= .n1 .num if score .rank_red .rank >= .rank_blue .rank run team join red @r[scores={team_pref=0},gamemode=adventure,team=,tag=min_rank]

execute if score .ranked_random .data = .1 .num if score .team_dif .data >= .1 .num if score .rank_red .rank < .rank_blue .rank run team join blue @r[scores={team_pref=0},gamemode=adventure,team=,tag=min_rank]
execute if score .ranked_random .data = .1 .num if score .team_dif .data <= .n1 .num if score .rank_red .rank < .rank_blue .rank run team join red @r[scores={team_pref=0},gamemode=adventure,team=,tag=max_rank]

