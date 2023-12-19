scoreboard players operation .point_blue .metric = Blue Scores
scoreboard players operation .point_red .metric = Red Scores

execute if score .point_blue .metric = .3 .num run scoreboard players set .team_win .metric 2
execute if score .point_red .metric = .3 .num run scoreboard players set .team_win .metric 1

#
scoreboard players set @a rank_scew 500
execute as @a run scoreboard players operation @s rank_scew -= @s rank
execute as @a run scoreboard players operation @s rank_scew *= @s rank_scew
execute as @a run scoreboard players operation @s rank_scew *= .100 .num
execute as @a run scoreboard players operation @s rank_scew /= .250000 .num
execute as @a run scoreboard players operation @s rank_scew -= .100 .num
execute as @a run scoreboard players operation @s rank_scew *= .n1 .num

#
execute as @a run scoreboard players operation @s rank_delta = @s rank
scoreboard players set @a rank_delta_up 50
scoreboard players set @a rank_delta_down 50

scoreboard players set .rank_red .rank 0
scoreboard players set .rank_blue .rank 0

execute as @a[team=red,tag=change_rank] run scoreboard players operation .rank_red .rank += @s rank
execute as @a[team=blue,tag=change_rank] run scoreboard players operation .rank_blue .rank += @s rank

# get average team ranks and their difference
scoreboard players operation .rank_red .rank /= .red_players .data
scoreboard players operation .rank_blue .rank /= .blue_players .data

scoreboard players operation .rank_team_dif .rank = .rank_red .rank
scoreboard players operation .rank_team_dif .rank -= .rank_blue .rank
scoreboard players operation .rank_team_dif .rank /= .10 .num

# account for team rank dif
execute as @a[team=red] run scoreboard players operation @s rank_delta_up -= .rank_team_dif .rank
execute as @a[team=red] run scoreboard players operation @s rank_delta_down += .rank_team_dif .rank

execute as @a[team=blue] run scoreboard players operation @s rank_delta_up += .rank_team_dif .rank
execute as @a[team=blue] run scoreboard players operation @s rank_delta_down -= .rank_team_dif .rank

# account for personal rank dif from team
execute as @a[team=red] run scoreboard players operation @s rank_delta -= .rank_red .rank
execute as @a[team=blue] run scoreboard players operation @s rank_delta -= .rank_blue .rank

execute as @a run scoreboard players operation @s rank_delta /= .10 .num

execute as @a run scoreboard players operation @s rank_delta_up -= @s rank_delta
execute as @a run scoreboard players operation @s rank_delta_down += @s rank_delta

scoreboard players set @a rank_delta 0

# adjust elo gains and loss for player count difference (gain/loss * difference ratio [if less player team loses])
# subject to change to be more in favor of underdogs

execute if score .team_dif .data > .0 .num if entity @a[team=blue] as @a[team=red] run scoreboard players operation @s rank_delta_up *= .blue_players .data
execute if score .team_dif .data > .0 .num if entity @a[team=blue] as @a[team=red] run scoreboard players operation @s rank_delta_up /= .red_players .data

execute if score .team_dif .data > .0 .num if entity @a[team=red] as @a[team=blue] run scoreboard players operation @s rank_delta_down *= .blue_players .data
execute if score .team_dif .data > .0 .num if entity @a[team=red] as @a[team=blue] run scoreboard players operation @s rank_delta_down /= .red_players .data

execute if score .team_dif .data < .0 .num if entity @a[team=red] as @a[team=blue] run scoreboard players operation @s rank_delta_up *= .red_players .data
execute if score .team_dif .data < .0 .num if entity @a[team=red] as @a[team=blue] run scoreboard players operation @s rank_delta_up /= .blue_players .data

execute if score .team_dif .data < .0 .num if entity @a[team=blue] as @a[team=red] run scoreboard players operation @s rank_delta_down *= .red_players .data
execute if score .team_dif .data < .0 .num if entity @a[team=blue] as @a[team=red] run scoreboard players operation @s rank_delta_down /= .blue_players .data

# cap loss at zero for winning players (you can't lose elo on a win)
execute if score .team_win .metric = .1 .num run scoreboard players set @a[team=red] rank_delta_down 0
execute if score .team_win .metric = .2 .num run scoreboard players set @a[team=blue] rank_delta_down 0

# cap elo gain for losing players (1/3 of their possible gain on loss)
execute if score .team_win .metric = .2 .num run scoreboard players operation @a[team=red] rank_delta_up /= .3 .num
execute if score .team_win .metric = .1 .num run scoreboard players operation @a[team=blue] rank_delta_up /= .3 .num

# scew to start slowing down growth at the extremes
tag @a remove scew_down
tag @a remove scew_up
tag @a[scores={rank=..499}] add scew_down
tag @a[scores={rank=501..}] add scew_up

execute as @a[tag=scew_up] run scoreboard players operation @s rank_delta_up *= @s rank_scew
execute as @a[tag=scew_up] run scoreboard players operation @s rank_delta_up /= .100 .num

execute as @a[tag=scew_down] run scoreboard players operation @s rank_delta_down *= @s rank_scew
execute as @a[tag=scew_down] run scoreboard players operation @s rank_delta_down /= .100 .num

# security that values are within expected ranges [keeps it under the actual min max of 0-100]
scoreboard players set @a[scores={rank_delta_up=..10}] rank_delta_up 10
scoreboard players set @a[scores={rank_delta_down=..10}] rank_delta_down 10

scoreboard players set @a[scores={rank_delta_up=99..}] rank_delta_up 99
scoreboard players set @a[scores={rank_delta_down=99..}] rank_delta_down 99

#
execute as @a[team=red] if score .blue_players .data matches 0 run scoreboard players set @s rank_delta_up 0
execute as @a[team=red] if score .blue_players .data matches 0 run scoreboard players set @s rank_delta_down 0
execute as @a[team=blue] if score .red_players .data matches 0 run scoreboard players set @s rank_delta_up 0
execute as @a[team=blue] if score .red_players .data matches 0 run scoreboard players set @s rank_delta_down 0

#
scoreboard players operation .point_dif .metric = .point_red .metric
scoreboard players operation .point_dif .metric -= .point_blue .metric

scoreboard players operation .point_dif_adjusted .metric = .point_dif .metric

# remove player dif from point dif (without making it go negative) [if player count less than 6]
execute if score .point_dif .metric > .0 .num if score .team_dif .data > .0 .num if score .team_dif .data > .team_dif .data if score .players_playing .data matches ..6 run scoreboard players operation .point_dif_adjusted .metric -= .team_dif .metric
execute if score .point_dif .metric < .0 .num if score .team_dif .data < .0 .num if score .team_dif .data < .team_dif .data if score .players_playing .data matches ..6 run scoreboard players operation .point_dif_adjusted .metric -= .team_dif .metric

execute if score .point_dif .metric > .0 .num if score .team_dif .data > .0 .num if score .team_dif .data <= .0 .num run scoreboard players set .point_dif_adjusted .metric 0
execute if score .point_dif .metric < .0 .num if score .team_dif .data < .0 .num if score .team_dif .data >= .0 .num run scoreboard players set .point_dif_adjusted .metric 0

#
scoreboard players set @a rank_delta 0

scoreboard players set @a kills_ranked 0
scoreboard players set @a score_ranked 0
scoreboard players set @a captures_ranked 0

# account for kills (max 60)
scoreboard players set .total_kills .metric 0
execute as @a[tag=change_rank] run scoreboard players operation .total_kills .metric += @s kills

scoreboard players set .total_team_players .metric 0
scoreboard players operation .total_team_players .metric += .red_players .data
scoreboard players operation .total_team_players .metric += .blue_players .data

scoreboard players operation .average_kills .metric = .total_kills .metric
scoreboard players operation .average_kills .metric /= .total_team_players .metric

# get standard deviation (stored in .sd .calc)
function game:algor/standard_div

execute as @a run scoreboard players operation @s kills_ranked = @s kills
execute as @a run scoreboard players operation @s kills_ranked -= .average_kills .metric
    # scaled by a factor of 10 to be more precise
execute as @a run scoreboard players operation @s kills_ranked *= .10 .num
execute as @a run scoreboard players operation @s kills_ranked /= .sd .calc

scoreboard players operation .average_to_sd_ratio .calc = .sd .calc
scoreboard players operation .average_to_sd_ratio .calc *= .100 .num
scoreboard players operation .average_to_sd_ratio .calc /= .average_kills .metric

execute as @a run scoreboard players operation @s kills_ranked *= .average_to_sd_ratio .calc
execute as @a run scoreboard players operation @s kills_ranked /= .30 .num

   # half the negative effect if below average
#execute as @a[scores={kills_ranked=..0}] run scoreboard players operation @s kills_ranked /= .2 .num

scoreboard players set @a[scores={kills_ranked=20..}] kills_ranked 20
scoreboard players set @a[scores={kills_ranked=..-20}] kills_ranked -20

execute as @a run scoreboard players operation @s kills_ranked *= .3 .num
execute as @a run scoreboard players operation @s kills_ranked /= .2 .num
execute as @a run scoreboard players operation @s kills_ranked += .30 .num

#execute as @a run scoreboard players operation @s kills_ranked = @s kills
#execute as @a run scoreboard players operation @s kills_ranked *= .100 .num
#execute as @a run scoreboard players operation @s kills_ranked /= .total_kills .metric
          # NOTE : 60 here refers to max points possible
#execute as @a run scoreboard players operation @s kills_ranked *= .60 .num
#execute as @a run scoreboard players operation @s kills_ranked /= .100 .num

# account for captures (max 30) (x10 if you win, x15 each if you lost)
scoreboard players set .red_attempts .metric 0
scoreboard players set .blue_attempts .metric 0

execute as @a[team=red,tag=playing] run scoreboard players operation .red_attempts .metric += @s stats_attempts
execute as @a[team=blue,tag=playing] run scoreboard players operation .blue_attempts .metric += @s stats_attempts

scoreboard players set .red_attempts_val .calc 1
scoreboard players set .blue_attempts_val .calc 1
scoreboard players operation .red_attempts_val .calc += .red_attempts .metric
scoreboard players operation .blue_attempts_val .calc += .blue_attempts .metric
execute if score .red_attempts_val .calc matches 15.. run scoreboard players set .red_attempts_val .calc 15
execute if score .blue_attempts_val .calc matches 15.. run scoreboard players set .blue_attempts_val .calc 15
scoreboard players operation .red_attempts_val .calc /= .red_attempts .metric
scoreboard players operation .blue_attempts_val .calc /= .blue_attempts .metric
scoreboard players add .red_attempts_val .calc 1
scoreboard players add .blue_attempts_val .calc 1

execute as @a run scoreboard players operation @s captures_ranked += @s stats_captures
execute as @a[team=red] if score .point_red .metric = .3 .num run scoreboard players operation @s captures_ranked *= .5 .num
execute as @a[team=blue] if score .point_blue .metric = .3 .num run scoreboard players operation @s captures_ranked *= .5 .num
execute as @a[team=red] unless score .point_red .metric = .3 .num run scoreboard players operation @s captures_ranked *= .8 .num
execute as @a[team=blue] unless score .point_blue .metric = .3 .num run scoreboard players operation @s captures_ranked *= .8 .num

execute as @a[team=red] run scoreboard players operation @a stats_attempts *= .red_attempts_val .calc
execute as @a[team=blue] run scoreboard players operation @a stats_attempts *= .blue_attempts_val .calc

execute as @a run scoreboard players operation @s captures_ranked += @s stats_attempts

scoreboard players set @a[scores={captures_ranked=30..}] captures_ranked 30

execute as @a[team=red] run scoreboard players operation @a stats_attempts /= .red_attempts_val .calc
execute as @a[team=blue] run scoreboard players operation @a stats_attempts /= .blue_attempts_val .calc

# account for scores (max 30) (x10 points for differential if you win, x15 for each point if you lost)
execute if score .point_red .metric = .3 .num as @a[team=red] run scoreboard players operation @s score_ranked += .point_dif_adjusted .metric
execute if score .point_blue .metric = .3 .num as @a[team=blue] run scoreboard players operation @s score_ranked -= .point_dif_adjusted .metric

execute if score .point_red .metric = .3 .num as @a[team=blue] run scoreboard players operation @s score_ranked += .point_blue .metric
execute if score .point_blue .metric = .3 .num as @a[team=red] run scoreboard players operation @s score_ranked += .point_red .metric

execute if score .point_red .metric = .3 .num as @a[team=blue] run scoreboard players operation @s score_ranked *= .15 .num
execute if score .point_blue .metric = .3 .num as @a[team=red] run scoreboard players operation @s score_ranked *= .15 .num

execute if score .point_red .metric = .3 .num as @a[team=red] run scoreboard players operation @s score_ranked *= .10 .num
execute if score .point_blue .metric = .3 .num as @a[team=blue] run scoreboard players operation @s score_ranked *= .10 .num

# add up scores (currently out of 120) [then convert to percentage (0-100)]
execute as @a run scoreboard players operation @s rank_delta += @s kills_ranked
execute as @a run scoreboard players operation @s rank_delta += @s score_ranked
execute as @a run scoreboard players operation @s rank_delta += @s captures_ranked

execute as @a run scoreboard players operation @s rank_delta *= .100 .num
execute as @a run scoreboard players operation @s rank_delta /= .120 .num

# calculate range of delta up and delta down (stored in t1)
execute as @a run scoreboard players operation @s t1 = @s rank_delta_down
execute as @a run scoreboard players operation @s t1 *= .n1 .num
execute as @a run scoreboard players operation @s t1 -= @s rank_delta_up
execute as @a if score @s t1 < .0 .num run scoreboard players operation @s t1 *= .n1 .num

# take rank delta (previously percent, and turn it into value using range)
execute as @a run scoreboard players operation @s t1 *= @s rank_delta
execute as @a run scoreboard players operation @s t1 /= .100 .num
execute as @a run scoreboard players operation @s rank_delta = @s t1
execute as @a run scoreboard players operation @s rank_delta -= @s rank_delta_down

# change players rank
scoreboard players set @a[tag=!change_rank] rank_delta 0
execute as @a run scoreboard players operation @s rank += @s rank_delta

#
scoreboard players set @a[scores={rank=..0}] rank 0
scoreboard players set @a[scores={rank=1000..}] rank 1000