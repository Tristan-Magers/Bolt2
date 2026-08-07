execute if score @s bcm_crate_spawn_chance matches 1 run data modify entity @s CustomName set value "spawn chance: low"
execute if score @s bcm_crate_spawn_chance matches 2 run data modify entity @s CustomName set value "spawn chance: medium"
execute if score @s bcm_crate_spawn_chance matches 3 run data modify entity @s CustomName set value "spawn chance: high"