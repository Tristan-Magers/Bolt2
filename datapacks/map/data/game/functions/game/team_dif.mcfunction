scoreboard players set .redplayers .data 0
scoreboard players set .blueplayers .data 0
scoreboard players set .teamdif .data 0

execute as @a[team=red] run scoreboard players add .redplayers .data 1
execute as @a[team=blue] run scoreboard players add .blueplayers .data 1

scoreboard players operation .teamdif .data = .redplayers .data
scoreboard players operation .teamdif .data -= .blueplayers .data