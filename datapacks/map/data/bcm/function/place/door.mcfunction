# tags
tag @s remove init
tag @s remove tmp_new_door
tag @s add door

# rotation
execute store result score .r .calc run data get entity @p[scores={place_object_egg=1..}] Rotation[0] 1
execute if score .r .calc matches -45..44 run tp @s ~ ~ ~ 0 0
execute if score .r .calc matches 45..134 run tp @s ~ ~ ~ 90 0
execute if score .r .calc matches 135..179 run tp @s ~ ~ ~ -180 0
execute if score .r .calc matches -180..-136 run tp @s ~ ~ ~ -180 0
execute if score .r .calc matches -135..-46 run tp @s ~ ~ ~ -90 0

# blocks
execute at @s run fill ^-1 ^ ^ ^1 ^2 ^ yellow_stained_glass_pane keep