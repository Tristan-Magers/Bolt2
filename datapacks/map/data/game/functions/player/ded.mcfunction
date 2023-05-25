#
tag @s remove exploded
tag @s remove killed
scoreboard players set @s KILL_ID -1

#
execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] iron_ingot
execute if score .mode .data = .6 .num run give @s[scores={respawn=2},team=red] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1

#
scoreboard players set @a[scores={crossbowTime=3..}] crossbowReload 2

scoreboard players set @s killStreak 0
scoreboard players set @s arrowReload 20
#set 1 seconds before reload
clear @s arrow
#clear @s iron_ingot

execute if score .map .data = .1 .num run tp @s[team=blue] -83.5 -50.00 51.5 -135 0
execute if score .map .data = .1 .num run tp @s[team=red] -83.5 -50.00 -8.5 -45 0

execute if score .map .data = .2 .num run tp @s[team=red] -156.5 -54.00 51.5 -135 0
execute if score .map .data = .2 .num run tp @s[team=blue] -156.5 -54.00 -8.5 -45 0

execute if score .map .data = .3 .num run tp @s[team=red] -211 -53.00 -12.5 0 0
execute if score .map .data = .3 .num run tp @s[team=blue] -211 -53.00 39.5 180 0

execute if score .map .data = .4 .num run tp @s[team=red] -306.5 -51.00 27.5 180 0
execute if score .map .data = .4 .num run tp @s[team=blue] -306.5 -51.00 -3 0 0

execute if score .map .data = .5 .num run tp @s[team=red] -350.50 -55.00 -52.50 -135 0
execute if score .map .data = .5 .num run tp @s[team=blue] -329.5 -55.00 -90.5 45 0

execute if score .map .data = .6 .num run tp @s[team=red] -395.5 -49.00 62.5 160 0
execute if score .map .data = .6 .num run tp @s[team=blue] -395.5 -49.00 -29.5 20 0

execute if score .map .data = .7 .num run tp @s[team=red] -351 -54.00 -18.5 0 0
execute if score .map .data = .7 .num run tp @s[team=blue] -351 -54.00 37.5 180 0

execute if score .map .data = .8 .num run tp @s[team=red] -81.5 -55.00 112.5 -45 0
execute if score .map .data = .8 .num run tp @s[team=blue] -27.5 -55.00 134.5 135 0

execute if score .map .data = .9 .num run tp @s[team=red] -314.50 -48.00 105.5 0 0
execute if score .map .data = .9 .num run tp @s[team=blue] -320.5 -48.00 161.5 180 0

execute if score .map .data = .10 .num run tp @s[team=red] -228.5 -45.00 -454.5 0 0
execute if score .map .data = .10 .num run tp @s[team=blue] -228.5 -45.00 -408.5 180 0

execute if score .map .data = .11 .num run tp @s[team=red] 93.5 -55.00 -44.5 -90 0
execute if score .map .data = .11 .num run tp @s[team=blue] 165.5 -55.00 -44.5 90 0

execute if score .map .data = .12 .num run tp @s[team=red] -16.5 -53.00 -255.5 -135 0
execute if score .map .data = .12 .num run tp @s[team=blue] 15.5 -53.00 -343.5 45 0

execute if score .map .data = .13 .num run tp @s[team=red] 1.5 -34.00 241.5 90 0
execute if score .map .data = .13 .num run tp @s[team=blue] -80.5 -34.00 241.5 -90 0

effect give @s[scores={respawn=45..}] blindness 2 1 true
effect clear @s[scores={respawn=30}] blindness
effect give @s[scores={respawn=45..}] darkness 5 1 true
scoreboard players set @s[scores={respawn=10..}] invul 60

effect give @s[scores={respawn=2..}] minecraft:invisibility 1 50 true
effect clear @s[scores={respawn=1}] minecraft:invisibility

title @s[scores={respawn=110},tag=!hasspawn] times 5 10 5
title @s[scores={respawn=110},tag=hasspawn] times 10 20 10
title @s[scores={respawn=90},tag=!hasspawn] times 5 10 5
title @s[scores={respawn=90},tag=hasspawn] times 10 20 10
title @s[scores={respawn=70},tag=!hasspawn] times 5 10 5
title @s[scores={respawn=70},tag=hasspawn] times 10 20 10
title @s[scores={respawn=150},tag=hasspawn] title {"text":"SPAWN POINT"}
title @s[scores={respawn=130},tag=hasspawn] title {"text":"SPAWN POINT"}
title @s[scores={respawn=110},tag=hasspawn] title {"text":"SPAWN POINT"}
title @s[scores={respawn=90},tag=hasspawn] title {"text":"SPAWN POINT"}
title @s[scores={respawn=70},tag=hasspawn] title {"text":"SPAWN POINT"}
title @s[scores={respawn=230},tag=!hasspawn] title {"text":"- 11 -"}
title @s[scores={respawn=210},tag=!hasspawn] title {"text":"- 10 -"}
title @s[scores={respawn=190},tag=!hasspawn] title {"text":"- 9 -"}
title @s[scores={respawn=170},tag=!hasspawn] title {"text":"- 8 -"}
title @s[scores={respawn=150},tag=!hasspawn] title {"text":"- 7 -"}
title @s[scores={respawn=130},tag=!hasspawn] title {"text":"- 6 -"}
title @s[scores={respawn=110},tag=!hasspawn] title {"text":"- 5 -"}
title @s[scores={respawn=90},tag=!hasspawn] title {"text":"- 4 -"}
title @s[scores={respawn=70},tag=!hasspawn] title {"text":"- 3 -"}
title @s[scores={respawn=50},tag=!hasspawn] title {"text":"- 2 -"}
title @s[scores={respawn=30},tag=!hasspawn] title {"text":"- 1 -"}
title @s[scores={respawn=10}] title {"text":"- GO! -"}

title @s[scores={respawn=230}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=210}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=190}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=170}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=150}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=130}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=110}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=90}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=70}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=50}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=30}] subtitle {"text":"RESPAWNING","color":"gold"}

scoreboard players set @s[scores={crossbowTime=3..}] crossbowTime 2

scoreboard players remove @s respawn 1

#
execute if score .mode .data = .7 .num run item replace entity @s[scores={respawn=0},team=blue] hotbar.8 with minecraft:arrow 2

tag @s remove hasflag

execute as @s[scores={respawn=30}] at @s run function game:player/tryspawn

scoreboard players set @s speedrun 0