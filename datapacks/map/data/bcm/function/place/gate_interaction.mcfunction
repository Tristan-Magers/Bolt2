# initialize interaction
summon interaction ~ ~ ~ {Tags:[gate_interaction,init],width:1.01f}
scoreboard players operation @n[type=interaction,tag=init] bcm_gate_id = @s bcm_gate_id
rotate @n[type=interaction,tag=init] ~ ~
execute store result entity @n[type=interaction,tag=init] height float 0.01 run scoreboard players get .height .calc
tag @n[type=interaction,tag=init] remove init

# loop
scoreboard players remove .i .calc 1
execute if score .i .calc matches 1.. positioned ^1 ^ ^ run function bcm:place/gate_interaction