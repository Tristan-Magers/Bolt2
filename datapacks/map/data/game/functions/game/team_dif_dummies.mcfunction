scoreboard players set .red_players .data 0
scoreboard players set .blue_players .data 0
scoreboard players set .team_dif .data 0

execute as @a[tag=playing,scores={teamp_pref=1}] run scoreboard players add .red_players .data 1
execute as @a[tag=playing,scores={teamp_pref=2}] run scoreboard players add .blue_players .data 1
execute as @e[tag=rank_dummy,team=red] run scoreboard players add .red_players .data 1
execute as @e[tag=rank_dummy,team=blue] run scoreboard players add .blue_players .data 1

scoreboard players operation .team_dif .data = .red_players .data
scoreboard players operation .team_dif .data -= .blue_players .data