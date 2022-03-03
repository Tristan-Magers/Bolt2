scoreboard players set @a[scores={crossbowTime=3..}] crossbowReload 2

scoreboard players set @s killStreak 0
scoreboard players set @s arrowReload 20
#set 1 seconds before reload
clear @s arrow

execute if score .map .data = .1 .num run tp @s[team=blue] -83.5 -50.00 -8.5 -45 0
execute if score .map .data = .1 .num run tp @s[team=red] -83.5 -50.00 51.5 -135 0

execute if score .map .data = .2 .num run tp @s[team=red] -156.5 -54.00 51.5 -135 0
execute if score .map .data = .2 .num run tp @s[team=blue] -156.5 -54.00 -8.5 -45 0

execute if score .map .data = .3 .num run tp @s[team=red] -211 -53.00 -12.5 0 0
execute if score .map .data = .3 .num run tp @s[team=blue] -211 -53.00 39.5 180 0

effect give @s[scores={respawn=35..}] blindness 2 1 true
effect give @s[scores={respawn=10..}] resistance 3 50 true

effect give @s[tag=hasspawn] minecraft:invisibility 2 50 true

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

scoreboard players remove @s respawn 1

tag @s remove hasflag

execute as @s[scores={respawn=30}] at @s run function game:player/tryspawn
