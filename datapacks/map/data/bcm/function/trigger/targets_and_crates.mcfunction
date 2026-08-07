# load
execute if score @s targets_and_crates matches 10 run function bcm:targets_and_crates/load/targets
execute if score @s targets_and_crates matches 11 run function bcm:targets_and_crates/load/crates

# destroy
execute if score @s targets_and_crates matches 20 run function bcm:targets_and_crates/destroy/targets
execute if score @s targets_and_crates matches 21 run function bcm:targets_and_crates/destroy/crates
execute if score @s targets_and_crates matches 22 run function bcm:targets_and_crates/destroy/all

# save
execute store success score .overwrite save_map if score @s targets_and_crates matches 100..
scoreboard players operation @s targets_and_crates %= .100 .num
execute if score @s targets_and_crates matches 30 run function bcm:targets_and_crates/save/targets
execute if score @s targets_and_crates matches 31 run function bcm:targets_and_crates/save/crates


scoreboard players reset @s targets_and_crates