scoreboard players set .red_players .data 0
scoreboard players set .blue_players .data 0
scoreboard players set .team_dif .data 0

scoreboard players set .red_rank .data 0
scoreboard players set .blue_rank .data 0

execute as @a[team=red,tag=playing] run scoreboard players add .red_players .data 1
execute as @a[team=blue,tag=playing] run scoreboard players add .blue_players .data 1

execute as @a[team=red,tag=playing] run scoreboard players operation .red_rank .data += @s rank
execute as @a[team=blue,tag=playing] run scoreboard players operation .blue_rank .data += @s rank

scoreboard players operation .team_dif .data = .red_players .data
scoreboard players operation .team_dif .data -= .blue_players .data