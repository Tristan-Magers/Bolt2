#
kill @e[type=block_display,tag=survivor_generator]
fill ~ ~ ~ ~ ~ ~ air replace minecraft:respawn_anchor
tag @e[type=shulker,distance=..1] add kill
tag @e[type=armor_stand,name=Generator,distance=..3] add kill
kill @s