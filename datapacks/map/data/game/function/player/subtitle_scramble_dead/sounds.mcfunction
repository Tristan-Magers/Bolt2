function game:algor/random_8

execute as @s[scores={random=0..4}] run playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 0.00000000001 1
#execute as @s[scores={random=1..5}] run playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 0.00000000001 1
execute as @s[scores={random=2..6}] run playsound minecraft:entity.player.small_fall master @s ~ ~ ~ 0.00000000001 1
execute as @s[scores={random=3..7}] run playsound minecraft:entity.player.big_fall master @s ~ ~ ~ 0.00000000001 1
execute as @s[scores={random=4..8}] run playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 0.00000000001 1
execute as @s[scores={random=1..5}] run playsound minecraft:entity.arrow.hit master @s ~ ~ ~ 0.00000000001 1