function game:id/player

execute at @s run particle minecraft:spit ~ ~ ~ 0.2 0.1 0.2 0.06 5 force @a[tag=!id_share]
execute at @s run particle minecraft:spit ~ ~ ~ 0.2 0.1 0.2 0.06 5 force @a[tag=!id_share]

execute at @s at @s run tp @s ~ ~ ~ facing entity @p[tag=id_share]
execute at @s at @s run tp @s ^ ^ ^0.2 facing entity @p[tag=id_share]

execute as @s[scores={bow_texture=0}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=1}] at @s run particle minecraft:witch ~ ~ ~ 0.3 0.3 0.3 0.15 6 force @a[tag=id_share]

execute as @s[scores={bow_texture=2}] at @s run particle minecraft:item carrot ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

execute as @s[scores={bow_texture=3}] at @s run particle minecraft:wax_off ~ ~ ~ 0.3 0.3 0.3 0.1 7 force @a[tag=id_share]

execute as @s[scores={bow_texture=4}] at @s run particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.1 6 force @a[tag=id_share]

execute as @s[scores={bow_texture=8}] at @s run particle minecraft:item gold_ingot ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

execute as @s[scores={bow_texture=5..9}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=10}] at @s run particle minecraft:block minecraft:dark_oak_leaves ~ ~ ~ 0.25 0.25 0.25 0.1 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=10}] at @s run particle minecraft:falling_dust minecraft:oak_leaves ~ ~ ~ 0.15 0.2 0.15 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=10}] at @s run particle minecraft:falling_dust minecraft:orange_concrete ~ ~ ~ 0.2 0.15 0.2 0.1 3 force @a[tag=id_share]

execute as @s[scores={bow_texture=11..14}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=15}] at @s run particle minecraft:spit ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=15}] at @s run particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]

execute as @s[scores={bow_texture=16}] at @s run particle minecraft:item minecraft:scute ~ ~ ~ 0.2 0.2 0.2 0.03 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=16..18}] at @s run particle minecraft:spit ~ ~0.1 ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=19}] at @s run particle minecraft:spit ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=19}] at @s run particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]

execute as @s[scores={bow_texture=20..21}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

# Bronze
execute as @s[scores={bow_texture=22}] at @s run particle minecraft:item minecraft:copper_ingot ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

# Servant
execute as @s[scores={bow_texture=23}] at @s run particle ambient_entity_effect ~ ~ ~ 0 0 0 0.2 15 force @a[tag=id_share]

# Lock
execute as @s[scores={bow_texture=24}] at @s run particle minecraft:item minecraft:blue_terracotta ~ ~ ~ 0.2 0.2 0.2 0.1 15 force @a[tag=id_share]

# Nature
execute as @s[scores={bow_texture=25}] at @s run particle minecraft:spore_blossom_air ~ ~ ~ 0.25 0.25 0.25 0.3 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=25}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Turnip
execute as @s[scores={bow_texture=26}] at @s run particle minecraft:item phantom_membrane ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=27..}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]