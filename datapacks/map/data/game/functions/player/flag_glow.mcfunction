scoreboard players add @s flagtime 1
scoreboard players set @s[scores={flagtime=1}] glowing 20
effect give @s[scores={flagtime=1}] glowing 1 1 true
#title @s[scores={flagtime=1}] actionbar [{"text":"! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ !","color":"aqua","bold":1},{"text":" GLOWING ","bold":true,"color":"dark_aqua"},{"text":"! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ ! ♦ !","color":"aqua","bold":1}]
#title @s[scores={flagtime=20}] actionbar {"text":"","color":"gold"}
execute as @s[scores={flagtime=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 0.15 1 0.15
execute as @s[scores={flagtime=1}] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.4 1.4 0.4
execute as @s[scores={flagtime=1}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.7 1.2 0.7
execute as @s[scores={flagtime=1}] at @s run scoreboard players add @s glow_count 1
execute as @s[scores={flagtime=25,glow_count=8}] at @s run tellraw @a [{"selector":"@s"},{"text":"'s Glow Expired","color":"white"}]
scoreboard players set @s[scores={flagtime=50..,glow_count=..7}] flagtime 0

scoreboard players add @s flag_time 1
execute as @s[scores={flag_time=700}] at @s run tellraw @a [{"selector":"@s"},{"text":" has 20s to return flag!","color":"white"}]
execute as @s[scores={flag_time=1100}] at @s run tellraw @a [{"selector":"@s"},{"text":" took too long to return flag!","color":"white"}]
tag @s[scores={flag_time=1100}] remove hasflag