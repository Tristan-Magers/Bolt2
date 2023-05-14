#> Particle
execute at @s run particle enchanted_hit ^ ^ ^3.5 0 0 0 0 1 force @a

#> Speen
tp @s ~ ~ ~ ~10 ~

#> Loop
scoreboard players add .rotateStep .num 1
execute if score .rotateStep .num matches ..35 at @s run function game:ffa/repulsor/display