# if same spot, silently abort
# interactions usually block this area, but partial blocks could put the gate here
execute at @s if entity @e[type=block_display,tag=gate,tag=!init,distance=..0.1] run return run kill @s

playsound minecraft:block.fence_gate.open block @a[distance=..16] ~ ~ ~ 1 0.8

# rotation
execute store result score .r .calc run data get entity @p[scores={place_object_egg=1..}] Rotation[0] 1
scoreboard players add .r .calc 45
execute store result entity @s Rotation[0] float 90 run scoreboard players operation .r .calc /= .90 .num
data modify entity @s view_range set value 1f

# interactions
execute store result score @s bcm_gate_id run scoreboard players add .counter bcm_gate_id 1
execute store result score .i .calc run data get entity @s data.gate.width
execute store result score .height .calc run data get entity @s data.gate.height 100
scoreboard players add .height .calc 1
execute at @s positioned ^ ^ ^ run function bcm:place/gate_interaction

tag @s remove init