execute as @s[scores={bow_texture=0}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Magic
execute as @s[scores={bow_texture=1}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.2
execute as @s[scores={bow_texture=1}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 0.3
execute as @s[scores={bow_texture=1}] run playsound minecraft:entity.ender_dragon.shoot master @s ^ ^ ^ 0.1 2
execute as @s[scores={bow_texture=1}] run playsound minecraft:entity.ender_dragon.flap master @s ^ ^ ^ 0.1 1.7

# Carrot
execute as @s[scores={bow_texture=2}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=2}] run playsound minecraft:block.grass.step master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=2}] run playsound minecraft:entity.villager.work_farmer master @s ^ ^ ^ 0.15 0.8

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
execute as @s[scores={bow_texture=8}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=8}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.3
execute as @s[scores={bow_texture=8}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.9
execute as @s[scores={bow_texture=8}] run playsound minecraft:block.copper.step master @s ^ ^ ^ 0.35 1.4
execute as @s[scores={bow_texture=8,random=0}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.1
execute as @s[scores={bow_texture=8,random=1}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.05
execute as @s[scores={bow_texture=8,random=2}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.15
execute as @s[scores={bow_texture=8,random=3}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.18

#
execute as @s[scores={bow_texture=9}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Leaf
execute as @s[scores={bow_texture=10}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.76 0.9
execute as @s[scores={bow_texture=10}] run playsound minecraft:block.big_dripleaf.break master @s ^ ^ ^ 0.6 1.3
execute as @s[scores={bow_texture=10}] run playsound minecraft:block.azalea_leaves.place master @s ^ ^ ^ 0.04 0.8

# Rust
execute as @s[scores={bow_texture=11}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.1
execute as @s[scores={bow_texture=11}] run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 0.45 1.8
execute as @s[scores={bow_texture=11}] run playsound minecraft:block.chain.break master @s ^ ^ ^ 0.23 1.1

#
execute as @s[scores={bow_texture=12..13}] run playsound custom:shoot_arrow master @s ^ ^ ^

# taco
#execute as @s[scores={bow_texture=14}] run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 0.4 1.3
execute as @s[scores={bow_texture=14}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.1
execute as @s[scores={bow_texture=14}] run playsound minecraft:entity.player.hurt_sweet_berry_bush master @s ^ ^ ^ 0.3 1.4

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

# Evil Bow
execute as @s[scores={bow_texture=17}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=17}] run playsound minecraft:block.sculk.place master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=17}] run playsound minecraft:block.soul_sand.break master @s ^ ^ ^ 0.04 0.8

# Line
execute as @s[scores={bow_texture=18}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.25
execute as @s[scores={bow_texture=18}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1
execute as @s[scores={bow_texture=18}] run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.2 0.7
execute as @s[scores={bow_texture=18}] run playsound minecraft:block.bamboo_wood_hanging_sign.step master @s ^ ^ ^ 0.4 0.9
execute as @s[scores={bow_texture=18}] run playsound minecraft:block.bamboo_wood_button.click_off master @s ^ ^ ^ 0.4 2

# Dark Orb
execute as @s[scores={bow_texture=19}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.15 0.4
execute as @s[scores={bow_texture=19}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=19}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.55
execute as @s[scores={bow_texture=19}] run playsound minecraft:block.large_amethyst_bud.place master @s ^ ^ ^ 0.15 0.8
execute as @s[scores={bow_texture=19}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ 0.3 1.7
execute as @s[scores={bow_texture=19}] run playsound minecraft:item.bottle.empty master @s ~ ~ ~ 0.2 1.5
execute as @s[scores={bow_texture=19}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .015 0

# Pink Bow (dupe)
execute as @s[scores={bow_texture=20..21}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.6 1.25
execute as @s[scores={bow_texture=20..21}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 0.8

# Bronze
execute as @s[scores={bow_texture=22}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=22}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.3
execute as @s[scores={bow_texture=22}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=22}] run playsound minecraft:block.copper.place master @s ^ ^ ^ 0.4 1.3
execute as @s[scores={bow_texture=22,random=0}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.28 1.2
execute as @s[scores={bow_texture=22,random=1}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.28 1.15
execute as @s[scores={bow_texture=22,random=2}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.28 1.25
execute as @s[scores={bow_texture=22,random=3}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.28 1.28

# Servent
execute as @s[scores={bow_texture=23}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.7
execute as @s[scores={bow_texture=23}] run playsound minecraft:entity.wither.hurt master @s ^ ^ ^ 0.025 1.7
execute as @s[scores={bow_texture=23}] run playsound minecraft:entity.wither.shoot master @s ^ ^ ^ 0.02 .6
execute as @s[scores={bow_texture=23}] run playsound minecraft:block.bone_block.fall master @s ^ ^ ^ 0.5 .4

# Lock
execute as @s[scores={bow_texture=24}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=24}] run playsound minecraft:entity.ender_eye.death master @s ^ ^ ^ .13 .2
execute as @s[scores={bow_texture=24}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ .32 1.3
execute as @s[scores={bow_texture=24}] run playsound minecraft:block.ender_chest.open master @s ^ ^ ^ 0.13 1.18

# Nature Magic
execute as @s[scores={bow_texture=25}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.2
execute as @s[scores={bow_texture=25}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 0.3
execute as @s[scores={bow_texture=25}] run playsound minecraft:entity.ender_dragon.shoot master @s ^ ^ ^ 0.1 2
execute as @s[scores={bow_texture=25}] run playsound minecraft:entity.ender_dragon.flap master @s ^ ^ ^ 0.1 1.7

# Turnip
execute as @s[scores={bow_texture=26}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=26}] run playsound minecraft:block.grass.step master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=26}] run playsound minecraft:entity.villager.work_farmer master @s ^ ^ ^ 0.15 0.8

# Shadow
execute as @s[scores={bow_texture=27}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.8
execute as @s[scores={bow_texture=27}] run playsound minecraft:entity.illusioner.cast_spell master @s ^ ^ ^ 0.23 2
execute as @s[scores={bow_texture=27}] run playsound minecraft:entity.allay.item_thrown master @s ^ ^ ^ 0.4 1
execute as @s[scores={bow_texture=27}] run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 0.4 0.9

# Orange Jade
execute as @s[scores={bow_texture=28}] run playsound custom:shoot_arrow master @s ^ ^ ^

#Violet
execute as @s[scores={bow_texture=29}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Lunar
execute as @s[scores={bow_texture=30}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=30}] run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 0.4 1.6
#execute as @s[scores={bow_texture=30}] run playsound minecraft:entity.ender_eye.death master @s ^ ^ ^ 0.2 0.9
execute as @s[scores={bow_texture=30}] run playsound minecraft:block.sculk_sensor.clicking_stop master @s ^ ^ ^ 0.7 1.6

# Arch
execute as @s[scores={bow_texture=31}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.35 1.25
execute as @s[scores={bow_texture=31}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.65 1
execute as @s[scores={bow_texture=31}] run playsound minecraft:block.wood.break master @s ~ ~ ~ 0.3 1.25
execute as @s[scores={bow_texture=31}] run playsound minecraft:block.wooden_button.click_on master @s ^ ^ ^ 0.2 .5

# NES and Pico
execute as @s[scores={bow_texture=32..34}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.73 1.05
execute as @s[scores={bow_texture=32..34}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=32..34,random=0..1}] run playsound minecraft:block.note_block.bass master @s ^ ^ ^ 0.3 0.5
execute as @s[scores={bow_texture=32..34,random=2}] run playsound minecraft:block.note_block.bass master @s ^ ^ ^ 0.3 .561
execute as @s[scores={bow_texture=32..34,random=3}] run playsound minecraft:block.note_block.bass master @s ^ ^ ^ 0.3 .63
execute as @s[scores={bow_texture=32..34}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=32..34,random=0}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .5
execute as @s[scores={bow_texture=32..34,random=2}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .561
execute as @s[scores={bow_texture=32..34,random=4}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .891
execute as @s[scores={bow_texture=32..34}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=32..34,random=0}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .63
execute as @s[scores={bow_texture=32..34,random=1}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .667
execute as @s[scores={bow_texture=32..34,random=2}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .749
execute as @s[scores={bow_texture=32..34,random=3}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .841

execute as @s[scores={bow_texture=50}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.73 1.05
execute as @s[scores={bow_texture=50}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=50,random=0..1}] run playsound minecraft:block.note_block.bass master @s ^ ^ ^ 0.3 0.5
execute as @s[scores={bow_texture=50,random=2}] run playsound minecraft:block.note_block.bass master @s ^ ^ ^ 0.3 .561
execute as @s[scores={bow_texture=50,random=3}] run playsound minecraft:block.note_block.bass master @s ^ ^ ^ 0.3 .63
execute as @s[scores={bow_texture=50}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=50,random=0}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .5
execute as @s[scores={bow_texture=50,random=2}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .561
execute as @s[scores={bow_texture=50,random=4}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .891
execute as @s[scores={bow_texture=50}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=50,random=0}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .63
execute as @s[scores={bow_texture=50,random=1}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .667
execute as @s[scores={bow_texture=50,random=2}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .749
execute as @s[scores={bow_texture=50,random=3}] run playsound minecraft:block.note_block.bit master @s ^ ^ ^ 0.12 .841

#Emperess
execute as @s[scores={bow_texture=35}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.65 1.05
execute as @s[scores={bow_texture=35}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.15 0.6
execute as @s[scores={bow_texture=35}] run playsound minecraft:entity.glow_squid.hurt master @s ~ ~ ~ 0.05 0.5

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

# Purple Bow
execute as @s[scores={bow_texture=38}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Ghost Bow
execute as @s[scores={bow_texture=39}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Assassin Bow
execute as @s[scores={bow_texture=40}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Trapper Bow
execute as @s[scores={bow_texture=41}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Wizard Bow
execute as @s[scores={bow_texture=42..44}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Shard Bow
execute as @s[scores={bow_texture=45}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Error Bow
execute as @s[scores={bow_texture=46}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.9
execute as @s[scores={bow_texture=46}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 0.4
execute as @s[scores={bow_texture=46}] run playsound minecraft:item.brush.brushing.gravel master @s ~ ~ ~ 0.5 0
execute as @s[scores={bow_texture=46}] run playsound minecraft:entity.creaking.deactivate master @s ~ ~ ~ 0.2 1.3

# G Gardener Bow
execute as @s[scores={bow_texture=47}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Peno
execute as @s[scores={bow_texture=48}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 1.29
execute as @s[scores={bow_texture=48}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.6 1
execute as @s[scores={bow_texture=48}] run playsound minecraft:block.wood.break master @s ~ ~ ~ 0.3 1.3
execute as @s[scores={bow_texture=48}] run playsound minecraft:block.wooden_button.click_on master @s ^ ^ ^ 0.2 .5

# Lime
execute as @s[scores={bow_texture=49}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.6 1.25
execute as @s[scores={bow_texture=49}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 0.8

### 50 is NES

# Red Lunar
execute as @s[scores={bow_texture=51}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=51}] run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 0.4 1.6
#execute as @s[scores={bow_texture=51}] run playsound minecraft:entity.ender_eye.death master @s ^ ^ ^ 0.2 0.9
execute as @s[scores={bow_texture=51}] run playsound minecraft:block.sculk_sensor.clicking_stop master @s ^ ^ ^ 0.7 1.6

# Pink Line
execute as @s[scores={bow_texture=52}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.25
execute as @s[scores={bow_texture=52}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1
execute as @s[scores={bow_texture=52}] run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.2 0.7
execute as @s[scores={bow_texture=52}] run playsound minecraft:block.bamboo_wood_hanging_sign.step master @s ^ ^ ^ 0.4 0.9
execute as @s[scores={bow_texture=52}] run playsound minecraft:block.bamboo_wood_button.click_off master @s ^ ^ ^ 0.4 2

# Red Emperor
execute as @s[scores={bow_texture=53}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.65 1.05
execute as @s[scores={bow_texture=53}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.15 0.6
execute as @s[scores={bow_texture=53}] run playsound minecraft:entity.glow_squid.hurt master @s ~ ~ ~ 0.05 0.4

# Crossbow Bow
execute as @s[scores={bow_texture=54}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=54}] run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~ 0.23 1.05

# graphic design
execute as @s[scores={bow_texture=55}] run playsound custom:shoot_arrow master @s ^ ^ ^ 1 1
execute as @s[scores={bow_texture=55}] run playsound custom:gd_shoot master @s ^ ^ ^ 0.8 1

# Stick Bow
execute as @s[scores={bow_texture=56}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.85 1
execute as @s[scores={bow_texture=56}] run playsound minecraft:item.axe.strip master @s ~ ~ ~ 0.6 2

# Netherrite Bow
execute as @s[scores={bow_texture=57}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.1
execute as @s[scores={bow_texture=57}] run playsound minecraft:block.netherite_block.hit master @s ~ ~ ~ 0.4 1.5

# Midas (slight WIP)
execute as @s[scores={bow_texture=58}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=58}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.3
execute as @s[scores={bow_texture=58}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=58}] run playsound minecraft:block.copper.step master @s ^ ^ ^ 0.6 0.7
execute as @s[scores={bow_texture=58,random=0}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.0
execute as @s[scores={bow_texture=58,random=1}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 0.95
execute as @s[scores={bow_texture=58,random=2}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.05
execute as @s[scores={bow_texture=58,random=3}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1.08

# Ice Bow (slight WIP)
execute as @s[scores={bow_texture=59}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.1
execute as @s[scores={bow_texture=59}] run playsound minecraft:item.hoe.till master @s ~ ~ ~ 0.2 1.34
#execute as @s[scores={bow_texture=59}] run playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 0.12 0.6

# Mushroom
execute as @s[scores={bow_texture=60}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=60}] run playsound minecraft:block.grass.step master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=60}] run playsound minecraft:entity.villager.work_farmer master @s ^ ^ ^ 0.15 0.8

# Storm
execute as @s[scores={bow_texture=61}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=61}] run playsound minecraft:block.metal.step master @s ~ ~ ~ 0.8 1.2
execute as @s[scores={bow_texture=61}] run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 0.65 2

# White Jade
execute as @s[scores={bow_texture=62}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Rail
execute as @s[scores={bow_texture=63}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.9 1.05
execute as @s[scores={bow_texture=63}] run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~ 0.15 1.05
execute as @s[scores={bow_texture=63}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.05 1.3
execute as @s[scores={bow_texture=63}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.05 0.5
execute as @s[scores={bow_texture=63}] run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 0.2 2
execute as @s[scores={bow_texture=63}] run playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 0.2 1

# Bow dot Zip
execute as @s[scores={bow_texture=64}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Pink Line
execute as @s[scores={bow_texture=65}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.25
execute as @s[scores={bow_texture=65}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1
execute as @s[scores={bow_texture=65}] run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.2 0.7
execute as @s[scores={bow_texture=65}] run playsound minecraft:block.bamboo_wood_hanging_sign.step master @s ^ ^ ^ 0.4 0.9
execute as @s[scores={bow_texture=65}] run playsound minecraft:block.bamboo_wood_button.click_off master @s ^ ^ ^ 0.4 2

# Angler
execute as @s[scores={bow_texture=66}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.85 0.9
execute as @s[scores={bow_texture=66}] run playsound minecraft:entity.axolotl.attack master @s ~ ~ ~ 0.24 2
execute as @s[scores={bow_texture=66}] run playsound minecraft:entity.elder_guardian.hurt_land master @s ~ ~ ~ 0.32 1.5

# Energy
execute as @s[scores={bow_texture=67}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.1
execute as @s[scores={bow_texture=67}] run playsound minecraft:entity.elder_guardian.hurt master @s ~ ~ ~ 0.1 2
execute as @s[scores={bow_texture=67}] run playsound minecraft:entity.guardian.death master @s ~ ~ ~ 0.07 1.7

# Jellyfish
execute as @s[scores={bow_texture=68}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.85 1.1
execute as @s[scores={bow_texture=68}] run playsound minecraft:entity.fish.swim master @s ~ ~ ~ 0.18 1.7

# Goo
execute as @s[scores={bow_texture=69}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1.1
execute as @s[scores={bow_texture=69}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 1.15
execute as @s[scores={bow_texture=69}] run playsound minecraft:block.slime_block.step master @s ~ ~ ~ 0.4 1.9

# Neoploitan
execute as @s[scores={bow_texture=70}] run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 0.07 2
execute as @s[scores={bow_texture=70}] run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 0.25 1.3
execute as @s[scores={bow_texture=70}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.8

# Mech
execute as @s[scores={bow_texture=71}] run playsound minecraft:block.piston.extend master @s ~ ~ ~ 0.12 2
execute as @s[scores={bow_texture=71}] run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 0.08 1.2
execute as @s[scores={bow_texture=71}] run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.08 1
execute as @s[scores={bow_texture=71}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 0.6

# Mini Bow
execute as @s[scores={bow_texture=72}] run playsound custom:shoot_arrow master @s ^ ^ ^ 1 1.1

# Orbit
execute as @s[scores={bow_texture=73}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.15 0.4
execute as @s[scores={bow_texture=73}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.75 1
execute as @s[scores={bow_texture=73}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 1.55
execute as @s[scores={bow_texture=73}] run playsound minecraft:block.large_amethyst_bud.place master @s ^ ^ ^ 0.15 0.8
execute as @s[scores={bow_texture=73}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ 0.3 1.7
execute as @s[scores={bow_texture=73}] run playsound minecraft:item.bottle.empty master @s ~ ~ ~ 0.2 1.5
execute as @s[scores={bow_texture=73}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .015 0

# Plasma
execute as @s[scores={bow_texture=74}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.1
execute as @s[scores={bow_texture=74}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.5 0.7
execute as @s[scores={bow_texture=74}] run playsound minecraft:entity.allay.item_taken master @s ^ ^ ^ 0.2 1.5
execute as @s[scores={bow_texture=74}] run playsound minecraft:entity.allay.hurt master @s ^ ^ ^ .06 1.6
execute as @s[scores={bow_texture=74}] run playsound minecraft:entity.firework_rocket.large_blast master @s ^ ^ ^ 0.3 2

# Silver
execute as @s[scores={bow_texture=75}] store result score @s random run random value 0..3
execute as @s[scores={bow_texture=75}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.3
execute as @s[scores={bow_texture=75}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=75}] run playsound minecraft:block.copper.place master @s ^ ^ ^ 0.45 1.1
execute as @s[scores={bow_texture=75,random=0}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.04 0.7
execute as @s[scores={bow_texture=75,random=1}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.04 0.65
execute as @s[scores={bow_texture=75,random=2}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.04 0.7
execute as @s[scores={bow_texture=75,random=3}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.04 0.65

# Unstable
execute as @s[scores={bow_texture=76}] run playsound minecraft:item.shovel.flatten master @s ~ ~ ~ 0.4 0.5
execute as @s[scores={bow_texture=76}] run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 0.35 0.7
execute as @s[scores={bow_texture=76}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.8
execute as @s[scores={bow_texture=76}] run playsound minecraft:entity.creaking.unfreeze master @s ~ ~ ~ 0.1 0.7

# Chain
execute as @s[scores={bow_texture=77}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.5 0.9
execute as @s[scores={bow_texture=77}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.2 0.6
execute as @s[scores={bow_texture=77}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.11 0
execute as @s[scores={bow_texture=77}] run playsound minecraft:block.chain.hit master @s ~ ~ ~ 0.09 0
execute as @s[scores={bow_texture=77}] run playsound minecraft:block.chain.place master @s ~ ~ ~ 0.09 0.1

# 3D Bow
execute as @s[scores={bow_texture=78}] run playsound custom:shoot_arrow master @s ^ ^ ^

# Micro
execute as @s[scores={bow_texture=79}] run playsound custom:shoot_arrow master @s ^ ^ ^ 1 1.3