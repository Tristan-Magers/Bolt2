#
function game:game/team_dif_dummies

#
scoreboard players set .rank_dif .data 0
execute as @a[tag=playing,scores={team_pref=1}] run scoreboard players operation .rank_dif .data += @s rank
execute as @a[tag=playing,scores={team_pref=2}] run scoreboard players operation .rank_dif .data -= @s rank

# add players
execute if score .team_dif .data > .0 .num run team join blue @e[tag=rank_dummy,team=,limit=1,sort=random]
execute if score .team_dif .data < .0 .num run team join red @e[tag=rank_dummy,team=,limit=1,sort=random]

execute if score .team_dif .data = .0 .num if score .rank_dif .data matches 0 if score .ran_team .random = .0 .num run team join blue @e[tag=rank_dummy,team=,limit=1,sort=random]
execute if score .team_dif .data = .0 .num if score .rank_dif .data matches 0 if score .ran_team .random = .1 .num run team join red @e[tag=rank_dummy,team=,limit=1,sort=random]

execute if score .team_dif .data = .0 .num if score .rank_dif .data matches 1.. run team join red @e[tag=rank_dummy,team=,limit=1,sort=random]
execute if score .team_dif .data = .0 .num if score .rank_dif .data matches ..-1 run team join blue @e[tag=rank_dummy,team=,limit=1,sort=random]

#execute if score .team_dif .data > .0 .num run say add blue
#execute if score .team_dif .data < .0 .num run say add red

#execute if score .team_dif .data = .0 .num if score .ran_team .random = .0 .num run say add blue ran
#execute if score .team_dif .data = .0 .num if score .ran_team .random = .1 .num run say add red ran

execute if entity @e[tag=rank_dummy,team=] run function game:game/rank_sort/random_teams