#execute unless loaded ~ ~ ~ run tellraw @a ["unloaded chunk at ~",{score:{name:"#x",objective:".calc"}}," ~",{score:{name:"#z",objective:".calc"}}]
execute unless loaded ~ ~ ~ run return fail

scoreboard players add #z .calc 16
execute if score #z .calc > .dz .calc run return 1
execute positioned ~ ~ ~16 run return run function bcm:util/is_area_loaded_z