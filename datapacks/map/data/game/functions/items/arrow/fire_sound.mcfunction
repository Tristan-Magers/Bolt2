execute as @s[scores={bow_texture=0}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Magic
execute as @s[scores={bow_texture=1}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.2
execute as @s[scores={bow_texture=1}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 0.3
execute as @s[scores={bow_texture=1}] run playsound minecraft:entity.ender_dragon.shoot master @s ^ ^ ^ 0.1 2
execute as @s[scores={bow_texture=1}] run playsound minecraft:entity.ender_dragon.flap master @s ^ ^ ^ 0.1 1.7

# Carrot
execute as @s[scores={bow_texture=2}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=2}] run playsound minecraft:block.grass.step master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=2}] run playsound minecraft:entity.villager.work_farmer master @s ^ ^ ^ 0.04 0.8

# Plasma
execute as @s[scores={bow_texture=3}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.1
execute as @s[scores={bow_texture=3}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.5 0.7
execute as @s[scores={bow_texture=3}] run playsound minecraft:entity.allay.item_taken master @s ^ ^ ^ 0.2 1.5 
execute as @s[scores={bow_texture=3}] run playsound minecraft:entity.allay.hurt master @s ^ ^ ^ .06 1.6
execute as @s[scores={bow_texture=3}] run playsound minecraft:entity.firework_rocket.large_blast master @s ^ ^ ^ 0.3 2

# Reef
execute as @s[scores={bow_texture=4}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1
execute as @s[scores={bow_texture=4}] run playsound minecraft:entity.drowned.shoot master @s ~ ~ ~ 0.05 0.8
execute as @s[scores={bow_texture=4}] run playsound minecraft:block.bubble_column.whirlpool_inside master @s ~ ~ ~ 0.13 2
execute as @s[scores={bow_texture=4}] run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 0.15 2

execute as @s[scores={bow_texture=5..7}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Auric
execute as @s[scores={bow_texture=8}] run function game:algor/random_4
execute as @s[scores={bow_texture=8}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.3
execute as @s[scores={bow_texture=8}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=8}] run playsound minecraft:block.copper.step master @s ^ ^ ^ 0.5 1.4
execute as @s[scores={bow_texture=8,random=0}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.18 1.2
execute as @s[scores={bow_texture=8,random=1}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.18 1.15
execute as @s[scores={bow_texture=8,random=2}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.18 1.25
execute as @s[scores={bow_texture=8,random=3}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.18 1.28

execute as @s[scores={bow_texture=9}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Leaf
execute as @s[scores={bow_texture=10}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=10}] run playsound minecraft:block.big_dripleaf.break master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=10}] run playsound minecraft:block.azalea_leaves.place master @s ^ ^ ^ 0.04 0.8

# Rust
execute as @s[scores={bow_texture=11}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.1
execute as @s[scores={bow_texture=11}] run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 0.5 1.8
execute as @s[scores={bow_texture=11}] run playsound minecraft:block.chain.break master @s ^ ^ ^ 0.25 1.1

execute as @s[scores={bow_texture=12..14}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Orb
execute as @s[scores={bow_texture=15}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.15 0.4
execute as @s[scores={bow_texture=15}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=15}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.55
execute as @s[scores={bow_texture=15}] run playsound minecraft:block.large_amethyst_bud.place master @s ^ ^ ^ 0.15 0.8
execute as @s[scores={bow_texture=15}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ 0.3 1.7
execute as @s[scores={bow_texture=15}] run playsound minecraft:item.bottle.empty master @s ~ ~ ~ 0.2 1.5
execute as @s[scores={bow_texture=15}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .015 0

# jade
#execute as @s[scores={bow_texture=16}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1
#execute as @s[scores={bow_texture=16}] run playsound minecraft:block.amethyst_block.step master @s ^ ^ ^ 0.1 0.4
#execute as @s[scores={bow_texture=16}] run playsound minecraft:entity.allay.item_thrown master @s ^ ^ ^ 0.18 0.6
execute as @s[scores={bow_texture=16}] run playsound custom:shoot_arrow master @s ^ ^ ^

#
execute as @s[scores={bow_texture=17}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=17}] run playsound minecraft:block.sculk.place master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=17}] run playsound minecraft:block.soul_sand.break master @s ^ ^ ^ 0.04 0.8

# line
execute as @s[scores={bow_texture=18}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.25
execute as @s[scores={bow_texture=18}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1
execute as @s[scores={bow_texture=18}] run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.2 0.7
execute as @s[scores={bow_texture=18}] run playsound minecraft:block.bamboo_wood_hanging_sign.step master @s ^ ^ ^ 0.4 0.9
execute as @s[scores={bow_texture=18}] run playsound minecraft:block.bamboo_wood_button.click_off master @s ^ ^ ^ 0.4 2

execute as @s[scores={bow_texture=19}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.15 0.4
execute as @s[scores={bow_texture=19}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=19}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.55
execute as @s[scores={bow_texture=19}] run playsound minecraft:block.large_amethyst_bud.place master @s ^ ^ ^ 0.15 0.8
execute as @s[scores={bow_texture=19}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ 0.3 1.7
execute as @s[scores={bow_texture=19}] run playsound minecraft:item.bottle.empty master @s ~ ~ ~ 0.2 1.5
execute as @s[scores={bow_texture=19}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .015 0

execute as @s[scores={bow_texture=20..22}] run playsound custom:shoot_arrow master @s ^ ^ ^

execute as @s[scores={bow_texture=23}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.7
execute as @s[scores={bow_texture=23}] run playsound minecraft:entity.wither.hurt master @s ^ ^ ^ 0.025 1.7
execute as @s[scores={bow_texture=23}] run playsound minecraft:entity.wither.shoot master @s ^ ^ ^ 0.02 .6
execute as @s[scores={bow_texture=23}] run playsound minecraft:block.bone_block.fall master @s ^ ^ ^ 0.5 .4

execute as @s[scores={bow_texture=24}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1
execute as @s[scores={bow_texture=24}] run playsound minecraft:entity.ender_eye.death master @s ^ ^ ^ .2 .2
execute as @s[scores={bow_texture=24}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ .4 1.3
execute as @s[scores={bow_texture=24}] run playsound minecraft:block.ender_chest.open master @s ^ ^ ^ 0.2 1.18

# Nature Magic
execute as @s[scores={bow_texture=25}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.2
execute as @s[scores={bow_texture=25}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 0.3
execute as @s[scores={bow_texture=25}] run playsound minecraft:entity.ender_dragon.shoot master @s ^ ^ ^ 0.1 2
execute as @s[scores={bow_texture=25}] run playsound minecraft:entity.ender_dragon.flap master @s ^ ^ ^ 0.1 1.7

# Turnip
execute as @s[scores={bow_texture=26}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=26}] run playsound minecraft:block.grass.step master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=26}] run playsound minecraft:entity.villager.work_farmer master @s ^ ^ ^ 0.04 0.8

# Shadow
execute as @s[scores={bow_texture=27}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.8
execute as @s[scores={bow_texture=27}] run playsound minecraft:entity.illusioner.cast_spell master @s ^ ^ ^ 0.15 2
execute as @s[scores={bow_texture=27}] run playsound minecraft:entity.allay.item_thrown master @s ^ ^ ^ 0.3 0.5
execute as @s[scores={bow_texture=27}] run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 0.2 0.9

# Orange Jade
execute as @s[scores={bow_texture=28}] run playsound custom:shoot_arrow master @s ^ ^ ^

#Violet
execute as @s[scores={bow_texture=29}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Lunar WIP
execute as @s[scores={bow_texture=30}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=30}] run playsound minecraft:block.amethyst_cluster.step master @s ^ ^ ^ 0.5 1.7
execute as @s[scores={bow_texture=30}] run playsound minecraft:entity.ender_eye.death master @s ^ ^ ^ 0.2 1.4
execute as @s[scores={bow_texture=30}] run playsound minecraft:block.sculk_sensor.clicking_stop master @s ^ ^ ^ 0.7 .2

# Arch WIP
execute as @s[scores={bow_texture=31}] run playsound custom:shoot_arrow master @s ^ ^ ^
#execute as @s[scores={bow_texture=31}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
#execute as @s[scores={bow_texture=31}] run playsound minecraft:block.chest.open master @s ^ ^ ^ 0.2 1.3
#execute as @s[scores={bow_texture=31}] run playsound minecraft:block.wooden_button.click_on master @s ^ ^ ^ 0.2 .5

# NES and Pico
execute as @s[scores={bow_texture=32..34}] run function game:algor/random_4
execute as @s[scores={bow_texture=32..34}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1.05
execute as @s[scores={bow_texture=32..34,random=0}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.21 .54
execute as @s[scores={bow_texture=32..34,random=1}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.21 .52
execute as @s[scores={bow_texture=32..34,random=2}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.21 .55
execute as @s[scores={bow_texture=32..34,random=3}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.21 .58

#Emperess
execute as @s[scores={bow_texture=35}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.05
execute as @s[scores={bow_texture=35}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 0.6
execute as @s[scores={bow_texture=35}] run playsound minecraft:entity.glow_squid.ambient master @s ^ ^ ^ 0.4 1.9

#Life
execute as @s[scores={bow_texture=36}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1
execute as @s[scores={bow_texture=36}] run playsound minecraft:block.bamboo_wood.place master @s ^ ^ ^ 0.4 .6
execute as @s[scores={bow_texture=36}] run playsound minecraft:block.bamboo_sapling.break master @s ^ ^ ^ 0.2 1.7
execute as @s[scores={bow_texture=36}] run playsound minecraft:block.chorus_flower.death master @s ~ ~ ~ 0.3 2

# Nemo
execute as @s[scores={bow_texture=37}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1
execute as @s[scores={bow_texture=37}] run playsound minecraft:block.bubble_column.bubble_pop master @s ^ ^ ^ 1 .2
execute as @s[scores={bow_texture=37}] run playsound minecraft:entity.fish.swim master @s ^ ^ ^ 0.09 1.6
execute as @s[scores={bow_texture=37}] run playsound minecraft:block.suspicious_sand.place master @s ^ ^ ^ 0.25 .4

#
execute as @s[scores={bow_texture=38..}] run playsound custom:shoot_arrow master @s ^ ^ ^