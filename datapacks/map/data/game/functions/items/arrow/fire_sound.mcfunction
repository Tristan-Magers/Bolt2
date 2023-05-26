execute as @s[scores={bow_texture=0}] run playsound custom:shoot_arrow master @s ^ ^ ^

execute as @s[scores={bow_texture=1}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.2
execute as @s[scores={bow_texture=1}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.4 0.3
execute as @s[scores={bow_texture=1}] run playsound minecraft:entity.ender_dragon.shoot master @s ^ ^ ^ 0.1 2
execute as @s[scores={bow_texture=1}] run playsound minecraft:entity.ender_dragon.flap master @s ^ ^ ^ 0.1 1.7

execute as @s[scores={bow_texture=2}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 0.9
execute as @s[scores={bow_texture=2}] run playsound minecraft:block.grass.step master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=2}] run playsound minecraft:entity.villager.work_farmer master @s ^ ^ ^ 0.04 0.8

execute as @s[scores={bow_texture=3}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.3 1.1
execute as @s[scores={bow_texture=3}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.5 0.7
execute as @s[scores={bow_texture=3}] run playsound minecraft:entity.allay.item_taken master @s ^ ^ ^ 0.2 1.5 
execute as @s[scores={bow_texture=3}] run playsound minecraft:entity.allay.hurt master @s ^ ^ ^ .06 1.6
execute as @s[scores={bow_texture=3}] run playsound minecraft:entity.firework_rocket.large_blast master @s ^ ^ ^ 0.3 2

execute as @s[scores={bow_texture=4}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.8 1
execute as @s[scores={bow_texture=4}] run playsound minecraft:entity.drowned.shoot master @s ~ ~ ~ 0.05 0.8
execute as @s[scores={bow_texture=4}] run playsound minecraft:block.bubble_column.whirlpool_inside master @s ~ ~ ~ 0.13 2
execute as @s[scores={bow_texture=4}] run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 0.15 2

execute as @s[scores={bow_texture=5..14}] run playsound custom:shoot_arrow master @s ^ ^ ^

execute as @s[scores={bow_texture=15}] run playsound custom:shoot_arrow master @s ^ ^ ^ 0.7 1.3
execute as @s[scores={bow_texture=15}] run playsound minecraft:block.large_amethyst_bud.place master @s ^ ^ ^ 0.1 0.8
execute as @s[scores={bow_texture=15}] run playsound minecraft:block.tripwire.click_on master @s ^ ^ ^ 0.6 1.7
execute as @s[scores={bow_texture=15}] run playsound minecraft:item.bottle.empty master @s ~ ~ ~ 0.1 1.5
execute as @s[scores={bow_texture=15}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .01 0

execute as @s[scores={bow_texture=16..}] run playsound custom:shoot_arrow master @s ^ ^ ^