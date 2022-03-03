scoreboard players remove @s[scores={kill=1..}] kill 1

scoreboard players add @s kills 1
scoreboard players add @s killStreak 1

give @s[scores={killStreak=2},team=blue] slime_spawn_egg{CanPlaceOn:["minecraft:gravel","minecraft:quartz_block","minecraft:quartz_slab","minecraft:quartz_stairs","minecraft:crimson_planks","minecraft:crimson_slab","minecraft:crimson_stairs","minecraft:warped_planks","minecraft:warped_slab","minecraft:warped_stairs","minecraft:spruce_planks","minecraft:spruce_slab","minecraft:red_terracotta","minecraft:pink_terracotta","minecraft:blue_terracotta","minecraft:light_blue_terracotta","minecraft:white_terracotta","minecraft:light_gray_terracotta","minecraft:stone","minecraft:stone_stairs","minecraft:dripstone_block","minecraft:oak_planks","minecraft:oak_slab","minecraft:light_gray_concrete","minecraft:stone_bricks","minecraft:smooth_stone","minecraft:smooth_stone_slab","minecraft:white_concrete","minecraft:spruce_stairs","minecraft:spruce_fence","minecraft:cyan_terracotta"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{Silent:1b,Size:0},HideFlags:48} 1
give @s[scores={killStreak=2},team=red] magma_cube_spawn_egg{CanPlaceOn:["minecraft:gravel","minecraft:quartz_block","minecraft:quartz_slab","minecraft:quartz_stairs","minecraft:crimson_planks","minecraft:crimson_slab","minecraft:crimson_stairs","minecraft:warped_planks","minecraft:warped_slab","minecraft:warped_stairs","minecraft:spruce_planks","minecraft:spruce_slab","minecraft:red_terracotta","minecraft:pink_terracotta","minecraft:blue_terracotta","minecraft:light_blue_terracotta","minecraft:white_terracotta","minecraft:light_gray_terracotta","minecraft:stone","minecraft:stone_stairs","minecraft:dripstone_block","minecraft:oak_planks","minecraft:oak_slab","minecraft:light_gray_concrete","minecraft:stone_bricks","minecraft:smooth_stone","minecraft:smooth_stone_slab","minecraft:white_concrete","minecraft:spruce_stairs","minecraft:spruce_fence","minecraft:cyan_terracotta"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{Silent:1b,Size:0},HideFlags:48} 1

give @s[scores={killStreak=3}] creeper_spawn_egg{CanPlaceOn:["minecraft:gravel","minecraft:quartz_block","minecraft:quartz_slab","minecraft:quartz_stairs","minecraft:crimson_planks","minecraft:crimson_slab","minecraft:crimson_stairs","minecraft:warped_planks","minecraft:warped_slab","minecraft:warped_stairs","minecraft:spruce_planks","minecraft:spruce_slab","minecraft:red_terracotta","minecraft:pink_terracotta","minecraft:blue_terracotta","minecraft:light_blue_terracotta","minecraft:white_terracotta","minecraft:light_gray_terracotta","minecraft:stone","minecraft:stone_stairs","minecraft:dripstone_block","minecraft:oak_planks","minecraft:oak_slab","minecraft:light_gray_concrete","minecraft:stone_bricks","minecraft:smooth_stone","minecraft:smooth_stone_slab","minecraft:white_concrete","minecraft:spruce_stairs","minecraft:spruce_fence","minecraft:cyan_terracotta"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 2
give @s[scores={killStreak=5}] map{display:{Name:'{"text":"Reveal","italic":false,"color":"gray"}'}} 1
give @s[scores={killStreak=7}] creeper_spawn_egg{CanPlaceOn:["minecraft:gravel","minecraft:quartz_block","minecraft:quartz_slab","minecraft:quartz_stairs","minecraft:crimson_planks","minecraft:crimson_slab","minecraft:crimson_stairs","minecraft:warped_planks","minecraft:warped_slab","minecraft:warped_stairs","minecraft:spruce_planks","minecraft:spruce_slab","minecraft:red_terracotta","minecraft:pink_terracotta","minecraft:blue_terracotta","minecraft:light_blue_terracotta","minecraft:white_terracotta","minecraft:light_gray_terracotta","minecraft:stone","minecraft:stone_stairs","minecraft:dripstone_block","minecraft:oak_planks","minecraft:oak_slab","minecraft:light_gray_concrete","minecraft:stone_bricks","minecraft:smooth_stone","minecraft:smooth_stone_slab","minecraft:white_concrete","minecraft:spruce_stairs","minecraft:spruce_fence","minecraft:cyan_terracotta"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 3
give @s[scores={killStreak=10}] map{display:{Name:'{"text":"Reveal","italic":false,"color":"gray"}'}} 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .CrossKills .stats

give @s[scores={t=0}] crossbow{display:{Name:'{"text":"Crossbow (lasts 11 seconds)","italic":false,"color":"gray"}'}} 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .GrenadeKills .stats

give @s[scores={t=0}] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .WallKills .stats

give @s[scores={t=0}] bat_spawn_egg{CanPlaceOn:["minecraft:gravel","minecraft:quartz_block","minecraft:quartz_slab","minecraft:quartz_stairs","minecraft:crimson_planks","minecraft:crimson_slab","minecraft:crimson_stairs","minecraft:warped_planks","minecraft:warped_slab","minecraft:warped_stairs","minecraft:spruce_planks","minecraft:spruce_slab","minecraft:red_terracotta","minecraft:pink_terracotta","minecraft:blue_terracotta","minecraft:light_blue_terracotta","minecraft:white_terracotta","minecraft:light_gray_terracotta","minecraft:stone","minecraft:stone_stairs","minecraft:dripstone_block","minecraft:oak_planks","minecraft:oak_slab","minecraft:light_gray_concrete","minecraft:stone_bricks","minecraft:smooth_stone","minecraft:smooth_stone_slab","minecraft:white_concrete","minecraft:spruce_stairs","minecraft:spruce_fence","minecraft:cyan_terracotta"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 5

tellraw @s[scores={t=0}] [{"text":"5 KILLS BONUS","color":"yellow"},{"text":" (5 Walls)","color":"gray"}]

execute as @s[scores={killStreak=3}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 3 KILL STREAK","color":"gold"}]
execute as @s[scores={killStreak=5}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 5 KILL STREAK","color":"gold"}]
execute as @s[scores={killStreak=7}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 7 KILL STREAK","color":"gold"}]
execute as @s[scores={killStreak=10}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" !10! KILL STREAK","color":"gold"}]

execute as @s[scores={kills=15}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 15 KILLS","color":"yellow"}]
execute as @s[scores={kills=30}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 30 KILLS","color":"yellow"}]
execute as @s[scores={kills=45}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 45 KILLS","color":"yellow"}]
execute as @s[scores={kills=60}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 60 KILLS","color":"yellow"}]
execute as @s[scores={kills=75}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 75 KILLS","color":"yellow"}]
execute as @s[scores={kills=90}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 90 KILLS","color":"yellow"}]

execute as @a[scores={kill=1..}] at @s run function game:player/kill