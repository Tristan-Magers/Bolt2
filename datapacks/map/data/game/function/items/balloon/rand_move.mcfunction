execute store result score .random .calc run random value 0..14

execute if score .random .calc matches 0 run data merge entity @s {Motion:[0.018,0.01,0.0]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[-0.021,-0.01,0.0]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[0.0,0.0,0.019]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[0.0,0.01,-0.022]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[0.02,0.0,0.017]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[-0.02,0.0,0.02]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[0.019,0.01,-0.022]}
execute if score .random .calc matches 0 run data merge entity @s {Motion:[-0.017,-0.01,-0.02]}

execute store result score @s t3 run random value 4..20