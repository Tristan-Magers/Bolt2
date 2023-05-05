# each player calculates their (kills - average)^2
execute as @a[tag=change_rank] run scoreboard players operation @s .calc = @s kills
execute as @a[tag=change_rank] run scoreboard players operation @s .calc -= .average_kills .metric
execute as @a[tag=change_rank] run scoreboard players operation @s .calc *= @s .calc

# combine/divide/square-root
scoreboard players set .sd .calc 0
execute as @a[tag=change_rank] run scoreboard players operation .sd .calc += @s .calc
scoreboard players operation .sd .calc /= .total_team_players .metric

scoreboard players set .sd_root .calc 1

function game:algor/sd_square_root_step

execute if score .sd_root_t .calc > .sd .calc run scoreboard players remove .sd_root .calc 1

scoreboard players operation .sd .calc = .sd_root .calc