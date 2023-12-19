#
scoreboard players add .rep .calc 1

#
scoreboard players set .red_rank .calc 0
execute as @a[tag=playing,scores={team_pref=1}] run scoreboard players operation .red_rank .calc += @s rank
#execute as @a[tag=playing,scores={team_pref=2}] run scoreboard players operation .red_rank .calc -= @s rank
execute as @e[tag=rank_dummy,team=red] run scoreboard players operation .red_rank .calc += @s rank_real

scoreboard players set .neg .calc 0

scoreboard players operation .dif .calc = .team_ideal .calc
scoreboard players operation .dif .calc -= .red_rank .calc
execute if score .dif .calc < .0 .num run scoreboard players set .neg .calc 1
execute if score .dif .calc < .0 .num run scoreboard players operation .dif .calc *= .n1 .num

#
tag @e[tag=rank_dummy] remove can_move_up
tag @e[tag=rank_dummy] remove can_move_down
execute as @e[tag=rank_dummy,team=red] run function game:game/rank_sort/check_if_moveable

#
tag @e[tag=rank_dummy] remove mover_up
tag @e[tag=rank_dummy] remove mover_down

tag @e[tag=rank_dummy] remove overshoot

scoreboard players reset @e[tag=rank_dummy] t2
scoreboard players reset @e[tag=rank_dummy] t4

scoreboard players set @e[tag=rank_dummy] rank_delta_order 0
scoreboard players reset @e[tag=rank_dummy,team=blue] rank_delta_order

execute if score .neg .calc = .0 .num run scoreboard players reset @e[tag=rank_dummy,tag=!can_move_up] rank_delta_order
execute if score .neg .calc = .1 .num run scoreboard players reset @e[tag=rank_dummy,tag=!can_move_down] rank_delta_order

execute if score .neg .calc = .0 .num as @e[tag=rank_dummy,scores={rank_delta_order=0}] run scoreboard players operation @s t4 = @s rank_delta_up
execute if score .neg .calc = .1 .num as @e[tag=rank_dummy,scores={rank_delta_order=0}] run scoreboard players operation @s t4 = @s rank_delta_down

## t4 = the delta in the direction it is "applying" for

execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] run scoreboard players operation @s t4 -= .dif .calc
execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] if score @s t4 < .0 .num run tag @s add overshoot
execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] if score @s t4 < .0 .num run scoreboard players operation @s t4 *= .n1 .num

execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] if score @s t4 > .dif .calc run scoreboard players reset @s rank_delta_order
execute as @e[tag=rank_dummy,scores={rank_delta_order=0},tag=overshoot] if score @s t4 = .dif .calc run scoreboard players reset @s rank_delta_order

execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] run scoreboard players operation @s t2 > @e[tag=rank_dummy,scores={rank_delta_order=0}] t4
execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] run scoreboard players operation @s t2 < @e[tag=rank_dummy,scores={rank_delta_order=0}] t4
execute as @e[tag=rank_dummy,scores={rank_delta_order=0}] run scoreboard players operation @s t2 -= @s t4

execute if score .neg .calc = .0 .num as @e[tag=rank_dummy,scores={rank_delta_order=0,t2=0},limit=1,sort=random] run tag @s add mover_up
execute if score .neg .calc = .1 .num as @e[tag=rank_dummy,scores={rank_delta_order=0,t2=0},limit=1,sort=random] run tag @s add mover_down

execute as @e[tag=mover_up] run function game:game/rank_sort/move_up
execute as @e[tag=mover_down] run function game:game/rank_sort/move_down

#execute as @e[tag=mover_up] run say move up
#execute as @e[tag=mover_down] run say move down

scoreboard players set .complete .calc 0
execute unless entity @e[tag=mover_up] unless entity @e[tag=mover_down] run scoreboard players set .complete .calc 1

execute if score .complete .calc = .0 .num if score .rep .calc < .30 .num run function game:game/rank_sort/matchmake
