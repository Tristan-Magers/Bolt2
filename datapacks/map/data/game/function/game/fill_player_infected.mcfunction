tag @a remove new_infected
tag @r[scores={team_pref=1},team=!red] add new_infected
execute unless entity @a[tag=new_infected] run tag @r[scores={team_pref=0},team=!red] add new_infected
execute unless entity @a[tag=new_infected] run tag @r[scores={team_pref=2},team=!red] add new_infected

team join red @r[tag=new_infected]