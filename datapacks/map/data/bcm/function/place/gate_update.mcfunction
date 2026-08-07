function game:gate/editor/stop

# copy data
data modify entity @s data.gate set from storage bcm tmp
execute store result score .width .calc run data get storage bcm tmp.width 100
execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players add .width .calc 1
execute store result score .height .calc run data get storage bcm tmp.height 100
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players add .height .calc 1

# interactions
scoreboard players operation .search bcm_gate_id = @s bcm_gate_id
execute as @e[type=interaction,tag=gate_interaction] if score @s bcm_gate_id = .search bcm_gate_id run kill @s
execute store result score .i .calc run data get storage bcm tmp.width
execute at @s positioned ^ ^ ^ run function bcm:place/gate_interaction