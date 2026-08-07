data modify storage macro gate set from entity @s data.gate
scoreboard players operation .value .calc = .current_height .calc
execute store result storage macro gate.current_height int 1 run scoreboard players operation .value .calc < .height .calc
execute store result score .y .calc run data get entity @s Pos[1] -1
execute store result storage macro gate.rel_mem_height int 1 run scoreboard players add .y .calc 311
execute store result storage macro gate.center float 0.005 run data get storage macro gate.width 100
execute positioned ~ ~-1 ~ run function game:gate/up_macro with storage macro gate