function game:game/team_dif

# add players
   # if no ranked_random
execute if score .ran_team .random = .0 .num if score .team_dif .data = .0 .num run team join blue @r[scores={team_pref=0},team=]
execute if score .ran_team .random = .1 .num if score .team_dif .data = .0 .num run team join red @r[scores={team_pref=0},team=]

execute if score .team_dif .data > .0 .num run team join blue @r[scores={team_pref=0},team=]
execute if score .team_dif .data < .0 .num run team join red @r[scores={team_pref=0},team=]


