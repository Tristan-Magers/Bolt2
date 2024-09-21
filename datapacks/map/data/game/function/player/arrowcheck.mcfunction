tag @s add me
tag @s remove am_attaker

execute as @a on attacker as @s[type=player] run tag @s add am_attaker

scoreboard players set @s arrowsOut 0

scoreboard players add @s[scores={crossUse=1..}] arrowsOutT 1
scoreboard players add @s[scores={bowUse=1..}] arrowsOutT 1

function game:id/dynamic {"selector":"@e[type=arrow]"}

execute as @e[type=arrow,tag=id_share] run scoreboard players add @a[tag=me] arrowsOut 1

scoreboard players operation @s arrowsOutT -= @s arrowsOut

execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,tag=!totem] run scoreboard players add @s kill 1
execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,tag=!totem] run scoreboard players add @s killP 1
execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,tag=!totem] at @s run scoreboard players operation @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,limit=1,sort=nearest] KILL_ID = @s ID
execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,tag=!totem] at @s run tag @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,limit=1,sort=nearest] add killed

execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] run scoreboard players add @s kill 1
execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] run scoreboard players add @s killP 1
execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] at @s run scoreboard players operation @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,limit=1,sort=nearest] KILL_ID = @s ID
execute if score .mode .data matches 1 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] at @s run tag @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,limit=1,sort=nearest] add killed

execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},tag=blue_died,tag=!killed,tag=!totem] run scoreboard players add @s kill 1
execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},tag=blue_died,tag=!killed,tag=!totem] run scoreboard players add @s killP 1
execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},tag=blue_died,tag=!killed,tag=!totem] at @s run scoreboard players operation @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,limit=1,sort=nearest] KILL_ID = @s ID
execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=red,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},tag=blue_died,tag=!killed,tag=!totem] at @s run tag @a[scores={hurt=9..,invul=..0},team=blue,tag=!killed,limit=1,sort=nearest] add killed

execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] run scoreboard players add @s kill 1
execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] run scoreboard players add @s killP 1
execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] at @s run scoreboard players operation @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,limit=1,sort=nearest] KILL_ID = @s ID
execute if score .mode .data matches 6 as @s[scores={arrowsOutT=1..},team=blue,tag=am_attaker] if entity @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,tag=!totem] at @s run tag @a[scores={hurt=9..,invul=..0},team=red,tag=!killed,limit=1,sort=nearest] add killed

#execute as @s[scores={arrowsOutT=1..}] run say test

scoreboard players operation @s arrowsOutT = @s arrowsOut

tag @s remove me