function game:id/player

execute at @s run particle minecraft:spit ~ ~ ~ 0.2 0.1 0.2 0.06 5 force @a[tag=!id_share]
execute at @s run particle minecraft:spit ~ ~ ~ 0.2 0.1 0.2 0.06 5 force @a[tag=!id_share]

execute at @s at @s run tp @s ~ ~ ~ facing entity @p[tag=id_share]
execute at @s at @s run tp @s ^ ^ ^0.2 facing entity @p[tag=id_share]

execute as @s[scores={bow_texture=0}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=1}] at @s run particle minecraft:witch ~ ~ ~ 0.3 0.3 0.3 0.15 6 force @a[tag=id_share]

execute as @s[scores={bow_texture=2}] at @s run particle minecraft:item{item:"minecraft:carrot"} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

# Plasma
execute as @s[scores={bow_texture=3}] at @s run particle minecraft:scrape ~ ~ ~ 0.2 0.2 0.2 0.1 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=4}] at @s run particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.1 6 force @a[tag=id_share]

# Auric
execute as @s[scores={bow_texture=8}] at @s run particle minecraft:item{item:"minecraft:gold_ingot"} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

execute as @s[scores={bow_texture=5..9}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=10}] at @s run particle minecraft:block{block_state:"minecraft:dark_oak_leaves"} ~ ~ ~ 0.25 0.25 0.25 0.1 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=10}] at @s run particle minecraft:falling_dust{block_state:"minecraft:oak_leaves"} ~ ~ ~ 0.15 0.2 0.15 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=10}] at @s run particle minecraft:falling_dust{block_state:"minecraft:orange_concrete"} ~ ~ ~ 0.2 0.15 0.2 0.1 3 force @a[tag=id_share]

execute as @s[scores={bow_texture=11..14}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=15}] at @s run particle minecraft:spit ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=15}] at @s run particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]

execute as @s[scores={bow_texture=16}] at @s run particle minecraft:item{item:"minecraft:turtle_scute"} ~ ~ ~ 0.2 0.2 0.2 0.03 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=16..18}] at @s run particle minecraft:spit ~ ~0.1 ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

execute as @s[scores={bow_texture=19}] at @s run particle minecraft:spit ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=19}] at @s run particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]

execute as @s[scores={bow_texture=20..21}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

# Bronze
execute as @s[scores={bow_texture=22}] at @s run particle minecraft:item{item:"minecraft:copper_ingot"} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

# Servant
execute as @s[scores={bow_texture=23}] at @s run particle entity_effect{color:[1f,1f,1f,1f]} ~ ~ ~ 0 0 0 0.2 15 force @a[tag=id_share]

# Lock
execute as @s[scores={bow_texture=24}] at @s run particle minecraft:item{item:"minecraft:blue_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.1 15 force @a[tag=id_share]

# Nature
execute as @s[scores={bow_texture=25}] at @s run particle minecraft:spore_blossom_air ~ ~ ~ 0.25 0.25 0.25 0.3 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=25}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Turnip
execute as @s[scores={bow_texture=26}] at @s run particle minecraft:item{item:"minecraft:phantom_membrane"} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]

# Shadow
execute as @s[scores={bow_texture=27}] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=27}] at @s run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=28..29}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

# Lunar
execute as @s[scores={bow_texture=30}] at @s run particle dust_color_transition{from_color:[1.000f,0.941f,0.549f],scale:1f,to_color:[0.729f,0.706f,0.635f]} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=30}] at @s run particle minecraft:wax_off ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

# Arch
execute as @s[scores={bow_texture=31}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

# Nes orange
execute as @s[scores={bow_texture=32}] at @s run particle minecraft:item{item:"minecraft:orange_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=32}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

# Nes orange
execute as @s[scores={bow_texture=33}] at @s run particle minecraft:item{item:"minecraft:cyan_wool"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=33}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

# Pico
execute as @s[scores={bow_texture=34}] at @s run particle minecraft:item{item:"minecraft:light_gray_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 2 force @a[tag=id_share]
execute as @s[scores={bow_texture=34}] at @s run particle minecraft:item{item:"minecraft:terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 2 force @a[tag=id_share]
execute as @s[scores={bow_texture=34}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Empress
execute as @s[scores={bow_texture=35}] at @s run particle minecraft:wax_off ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=35}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Life
execute as @s[scores={bow_texture=36}] at @s run particle minecraft:item{item:"minecraft:moss_block"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=36}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Nemo
execute as @s[scores={bow_texture=37}] at @s run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 0.15 5 force @a[tag=id_share]
execute as @s[scores={bow_texture=37}] at @s run particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.15 5 force @a[tag=id_share]
execute as @s[scores={bow_texture=37}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 1 force @a[tag=id_share]

# Purple Bow
execute as @s[scores={bow_texture=38}] at @s run particle minecraft:item{item:"minecraft:purple_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=38}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=39..45}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]

# Error Bow
execute as @s[scores={bow_texture=46}] at @s run particle minecraft:item{item:"minecraft:magenta_concrete"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=46}] at @s run particle minecraft:item{item:"minecraft:black_concrete"} ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=47..49}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]

# Nes green
execute as @s[scores={bow_texture=50}] at @s run particle minecraft:item{item:"minecraft:lime_concrete"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=50}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

# Lunar Red
execute as @s[scores={bow_texture=51}] at @s run particle dust_color_transition{from_color:[0.549f,0.275f,0.275f],scale:1f,to_color:[0.729f,0.173f,0.129f]} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=51}] at @s run particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=52}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]

# Emperor
execute as @s[scores={bow_texture=53}] at @s run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=53}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=54..55}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]

# Stick Bow
execute as @s[scores={bow_texture=56}] at @s run particle minecraft:item{item:"minecraft:stick"} ~ ~ ~ 0.2 0.2 0.2 0.15 4 force @a[tag=id_share]
execute as @s[scores={bow_texture=56}] at @s run particle dust_color_transition{from_color:[0.549f,0.392f,0.153f],scale:1f,to_color:[0.729f,0.596f,0.392f]} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]

# Netherite Bow
execute as @s[scores={bow_texture=57}] at @s run particle minecraft:item{item:"minecraft:netherite_ingot"} ~ ~ ~ 0.2 0.2 0.2 0.15 4 force @a[tag=id_share]
execute as @s[scores={bow_texture=57}] at @s run particle dust_color_transition{from_color:[0.169f,0.090f,0.271f],scale:1.3f,to_color:[0.231f,0.204f,0.204f]} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]

# Midas Bow
execute as @s[scores={bow_texture=58}] at @s run particle minecraft:item{item:"minecraft:gold_block"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=58}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Ice Bow
execute as @s[scores={bow_texture=59}] at @s run particle minecraft:item{item:"minecraft:ice"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=59}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

# Mushroom
execute as @s[scores={bow_texture=60}] at @s run particle minecraft:item{item:"minecraft:red_mushroom_block"} ~ ~ ~ 0.2 0.2 0.2 0.15 2 force @a[tag=id_share]
execute as @s[scores={bow_texture=60}] at @s run particle minecraft:item{item:"minecraft:mushroom_stem"} ~ ~ ~ 0.2 0.2 0.2 0.15 4 force @a[tag=id_share]
execute as @s[scores={bow_texture=60}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 3 force @a[tag=id_share]

# Storm
execute as @s[scores={bow_texture=61}] at @s run particle minecraft:splash ~ ~ ~ 0.2 0.2 0.2 0.15 4 force @a[tag=id_share]
execute as @s[scores={bow_texture=61}] at @s run particle minecraft:falling_water ~ ~ ~ 0.2 0.2 0.2 0.15 2 force @a[tag=id_share]
execute as @s[scores={bow_texture=61}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=62..65}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]

# Angler
execute as @s[scores={bow_texture=66}] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=66}] at @s run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]

# Angler
execute as @s[scores={bow_texture=67}] at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.15 4 force @a[tag=id_share]
execute as @s[scores={bow_texture=67}] at @s run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]

# Jellyfish
execute as @s[scores={bow_texture=68}] at @s run particle minecraft:item{item:"minecraft:magenta_stained_glass"} ~ ~ ~ 0.2 0.2 0.2 0.15 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=68}] at @s run particle minecraft:bubble ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

# Goo
execute as @s[scores={bow_texture=69}] at @s run particle minecraft:item{item:"minecraft:orange_concrete"} ~ ~ ~ 0.2 0.2 0.2 0.15 2 force @a[tag=id_share]
execute as @s[scores={bow_texture=69}] at @s run particle minecraft:item{item:"minecraft:light_blue_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 2 force @a[tag=id_share]
execute as @s[scores={bow_texture=69}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 2 force @a[tag=id_share]

# Neopolitan
execute as @s[scores={bow_texture=70}] at @s run particle minecraft:item{item:"minecraft:pink_concrete"} ~ ~ ~ 0.2 0.2 0.2 0.15 1 force @a[tag=id_share]
execute as @s[scores={bow_texture=70}] at @s run particle minecraft:item{item:"minecraft:white_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 1 force @a[tag=id_share]
execute as @s[scores={bow_texture=70}] at @s run particle minecraft:item{item:"minecraft:brown_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.15 1 force @a[tag=id_share]
execute as @s[scores={bow_texture=70}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 3 force @a[tag=id_share]

# Mech
execute as @s[scores={bow_texture=71}] at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]
execute as @s[scores={bow_texture=71}] at @s run particle minecraft:ash ~ ~ ~ 0.1 0.1 0.1 0.1 4 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=72}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]

# Orbit
execute as @s[scores={bow_texture=73}] at @s run particle minecraft:spit ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]
execute as @s[scores={bow_texture=73}] at @s run particle minecraft:item{item:"minecraft:light_blue_terracotta"} ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a[tag=id_share]

# Pink Plasma
execute as @s[scores={bow_texture=74}] at @s run particle minecraft:wax_off ~ ~ ~ 0.2 0.2 0.2 0.1 4 force @a[tag=id_share]

# Silver
execute as @s[scores={bow_texture=75}] at @s run particle minecraft:item{item:"minecraft:gunpowder"} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=75}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 4 force @a[tag=id_share]

# Unstable
execute as @s[scores={bow_texture=76}] at @s run particle entity_effect{color:[1f,0.463f,0.329f,1.000f]} ~ ~ ~ 0 0 0 0.15 5 force @a[tag=id_share]
execute as @s[scores={bow_texture=76}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 3 force @a[tag=id_share]

# Chain
execute as @s[scores={bow_texture=77}] at @s run particle minecraft:item{item:"minecraft:chain"} ~ ~ ~ 0.2 0.2 0.2 0.15 6 force @a[tag=id_share]
execute as @s[scores={bow_texture=77}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.06 2 force @a[tag=id_share]

#
execute as @s[scores={bow_texture=78..}] at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.03 4 force @a[tag=id_share]
