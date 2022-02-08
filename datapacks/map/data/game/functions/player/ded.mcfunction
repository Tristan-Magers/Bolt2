scoreboard players set @s killStreak 0
scoreboard players set @s arrowReload 0
clear @s arrow

tp @s[team=blue] -83.5 -53.00 -8.5 -45 0
tp @s[team=red] -83.5 -53.00 51.5 -135 0

effect give @s[scores={respawn=20..}] blindness 2 1 true
effect give @s[scores={respawn=20..}] minecraft:wither 1 1

title @s[scores={respawn=70},tag=!hasspawn] times 5 10 5
title @s[scores={respawn=70},tag=hasspawn] times 10 20 10
title @s[scores={respawn=70},tag=hasspawn] title {"text":"SPAWN POINT"}
title @s[scores={respawn=70},tag=!hasspawn] title {"text":"- 3 -"}
title @s[scores={respawn=50},tag=!hasspawn] title {"text":"- 2 -"}
title @s[scores={respawn=30},tag=!hasspawn] title {"text":"- 1 -"}
title @s[scores={respawn=10}] title {"text":"- GO! -"}

title @s[scores={respawn=70}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=50}] subtitle {"text":"RESPAWNING","color":"gold"}
title @s[scores={respawn=30}] subtitle {"text":"RESPAWNING","color":"gold"}

scoreboard players remove @s respawn 1

tag @s remove hasflag

execute as @s[scores={respawn=30}] at @s run function game:player/tryspawn