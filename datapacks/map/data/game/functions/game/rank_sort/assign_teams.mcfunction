#
scoreboard players operation @a ID -= @s ID

execute as @s[team=red] run team join red @a[scores={ID=0}]
execute as @s[team=blue] run team join blue @a[scores={ID=0}]

#execute as @s[team=red] run say red @a[scores={ID=0}]
#execute as @s[team=blue] run say blue @a[scores={ID=0}]

scoreboard players operation @a ID += @s ID