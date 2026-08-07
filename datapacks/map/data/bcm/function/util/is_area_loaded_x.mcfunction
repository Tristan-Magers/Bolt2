scoreboard players set #z .calc 0
execute unless function bcm:util/is_area_loaded_z run return fail

scoreboard players add #x .calc 16
execute if score #x .calc > .dx .calc run return 1
execute positioned ~16 ~ ~ run return run function bcm:util/is_area_loaded_x