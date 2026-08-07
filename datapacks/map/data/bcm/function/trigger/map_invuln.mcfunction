scoreboard players operation .value .calc = @s set_map_invuln
scoreboard players set .max .calc 1000
scoreboard players set .separator .calc 789

execute store result storage bcm map.invuln_ctf int 1 run function bcm:util/next_packed_arg
execute store result storage bcm map.invuln_infection int 1 run scoreboard players get .value .calc

scoreboard players reset @s set_map_invuln