#
execute as @e[tag=rank_dummy,scores={rank_order=0}] run scoreboard players operation @s rank > @e[tag=rank_dummy,scores={rank_order=0}] rank_real
execute as @e[tag=rank_dummy,scores={rank_order=0}] run scoreboard players operation @s rank -= @s rank_real
execute as @e[tag=rank_dummy,scores={rank_order=0,rank=0},limit=1,sort=random] run scoreboard players operation @s rank_order = .order .calc

execute if entity @e[tag=rank_dummy,scores={rank_order=0}] run scoreboard players add .order .calc 1
execute if entity @e[tag=rank_dummy,scores={rank_order=0}] run function game:game/rank_sort/order

