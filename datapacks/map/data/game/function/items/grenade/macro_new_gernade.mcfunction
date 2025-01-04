#
$say summon snowball ~ ~ ~ {Motion:[$(mot_x),$(mot_y),$(mot_z)],Tags:["test"]}
$summon snowball ~ ~ ~ {Motion:[$(mot_x),$(mot_y),$(mot_z)],Tags:["wall_ger_new"]}

scoreboard players operation @e[tag=wall_ger_new,limit=1,sort=nearest] t3 = @s t3
scoreboard players operation @e[tag=wall_ger_new,limit=1,sort=nearest] ID = @s ID
scoreboard players operation @e[tag=wall_ger_new,limit=1,sort=nearest] mot_x = @s mot_x
scoreboard players operation @e[tag=wall_ger_new,limit=1,sort=nearest] mot_y = @s mot_y
scoreboard players operation @e[tag=wall_ger_new,limit=1,sort=nearest] mot_z = @s mot_z
scoreboard players operation @e[tag=wall_ger_new,limit=1,sort=nearest] ID.item = @s ID.item

tag @a remove wall_ger_new