function game:game/team_dif

execute if score .teamdif .data >= .1 .num run team join blue @r[scores={team_pref=0},gamemode=adventure,team=]
execute unless score .teamdif .data >= .1 .num run team join red @r[scores={team_pref=0},gamemode=adventure,team=]