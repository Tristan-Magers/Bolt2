#
tag @a[tag=thrower] remove thrower
execute on origin run tag @s add thrower

#
execute if entity @p[tag=thrower,scores={ID=1..,snowball=1..,respawn=1..},distance=..8] run give @p[tag=thrower,scores={ID=1..,snowball=1..,respawn=1..}] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 1
execute if entity @p[tag=thrower,scores={ID=1..,snowball=1..,respawn=1..},distance=..8] run kill @s

execute if entity @p[tag=thrower,scores={ID=1..,snowball=1..,deaths=1..},distance=..8] run give @p[tag=thrower,scores={ID=1..,snowball=1..,respawn=1..}] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 1
execute if entity @p[tag=thrower,scores={ID=1..,snowball=1..,deaths=1..},distance=..8] run kill @s

#
tag @a[tag=thrower] remove thrower