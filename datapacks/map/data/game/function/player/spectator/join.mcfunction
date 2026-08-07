function game:map/spectator_join with storage maps:active settings
#execute if score .map .data = .1 .num run tp @s -81 -52 21 -90 0
#execute if score .map .data = .2 .num run tp @s -162 -50 -122 90 0
#execute if score .map .data = .3 .num run tp @s -142 8 382 -90 0
#execute if score .map .data = .5 .num run tp @s -327 -49 -72 90 0
#execute if score .map .data = .6 .num run tp @s -398 -46 16 90 0
#execute if score .map .data = .10 .num run tp @s -226 -41 -431 90 0
#execute if score .map .data = .12 .num run tp @s 6.5 -49 -299.5 90 0
#execute if score .map .data = .14 .num run tp @s -496 -13 -301 45 0
#execute if score .map .data = .15 .num run tp @s -459 -32 197 -90 0

tag @s add is_spectating

gamemode spectator

scoreboard players set @s team_pref -1