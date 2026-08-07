#
tag @s remove adjust

execute at @s if block ~0.28 ~1.7 ~0.28 #minecraft:walls run tag @s add adjust
execute at @s if block ~-0.28 ~1.7 ~0.28 #minecraft:walls run tag @s add adjust
execute at @s if block ~0.28 ~1.7 ~-0.28 #minecraft:walls run tag @s add adjust
execute at @s if block ~-0.28 ~1.7 ~-0.28 #minecraft:walls run tag @s add adjust

execute as @s[tag=adjust] align xz run tp @s ~0.5 ~1 ~0.5

tag @s[tag=adjust] remove suff
tag @s[tag=adjust] add test_head_air
tag @s remove adjust