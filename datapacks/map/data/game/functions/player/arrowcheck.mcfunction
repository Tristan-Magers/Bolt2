tag @s add me
scoreboard players set @s arrowsOut 0

scoreboard players operation @e[type=arrow] ID -= @s ID

execute as @e[type=arrow,scores={ID=0}] run scoreboard players add @a[tag=me] arrowsOut 1

scoreboard players operation @e[type=arrow] ID += @s ID

tag @s remove me

scoreboard players operation @s arrowsOutT -= @s arrowsOut

execute as @s[scores={arrowsOutT=1..},team=red] if entity @a[scores={hurt=9,invul=..0},team=blue] run scoreboard players add @s kill 1
execute as @s[scores={arrowsOutT=1..},team=red] if entity @a[scores={hurt=9,invul=..0},team=blue] run scoreboard players add @s killP 1

execute as @s[scores={arrowsOutT=1..},team=blue] if entity @a[scores={hurt=9,invul=..0},team=red] run scoreboard players add @s kill 1
execute as @s[scores={arrowsOutT=1..},team=blue] if entity @a[scores={hurt=9,invul=..0},team=red] run scoreboard players add @s killP 1

scoreboard players operation @s arrowsOutT = @s arrowsOut
