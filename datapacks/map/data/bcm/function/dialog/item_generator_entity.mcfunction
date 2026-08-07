tag @s add editing
tag @s remove this

# passenger item to find player via "execute on origin"
summon item ~ ~ ~ {Item:{id:"yellow_stained_glass_pane",count:1},Tags:[no_kill,init],Invulnerable:1b,PickupDelay:32767s,Age:-32768s}
ride @n[type=item,tag=init] mount @s
execute on passengers run data modify entity @s Thrower set from entity @p UUID
execute on passengers run tag @s remove init

# get current settings values
execute if score @s bcm_generator_time matches 0.. store result storage bcm macro.time int 1 run scoreboard players get @s bcm_generator_time
execute if score @s bcm_generator_warmup matches 0.. store result storage bcm macro.warmup int 1 run scoreboard players get @s bcm_generator_warmup