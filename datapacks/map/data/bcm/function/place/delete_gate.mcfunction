# @s = any entity in gate to delete
scoreboard players operation .search bcm_gate_id = @s bcm_gate_id
execute as @e[type=interaction,tag=gate_interaction] if score @s bcm_gate_id = .search bcm_gate_id run kill @s
execute as @e[type=block_display,tag=gate] if score @s bcm_gate_id = .search bcm_gate_id run function game:gate/editor/stop
execute as @e[type=block_display,tag=gate] if score @s bcm_gate_id = .search bcm_gate_id run function bcm:place/delete
playsound minecraft:block.fence_gate.close block @a[distance=..16] ~ ~ ~ 1 0.8