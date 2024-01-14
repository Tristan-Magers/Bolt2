# REMOVE DROP SCORES IN LOBBY TO PREVENT TMI CHEST EXPLOIT
execute as @s[tag=lobby] run function game:player/inventory/lobby_drop

# GIVE ITEMS THAT ARE DROPPED
execute as @s[scores={drop_snowball=1..}] run function game:player/give/grenade
execute as @s[scores={drop_creeper=1..}] run function game:player/give/trap
execute as @s[scores={drop_silver=1..}] run function game:player/give/wall
execute as @s[scores={drop_slime=1..}] run function game:player/give/blue_spawn
execute as @s[scores={drop_magma=1..}] run function game:player/give/red_spawn
execute as @s[scores={drop_map=1..}] run function game:player/give/reveal
execute as @s[scores={drop_iron=1..}] run function game:player/give/shield
execute as @s[scores={drop_sword=1..}] run function game:player/give/claws
execute as @s[scores={drop_egg=1..}] run function game:player/give/boost
execute as @s[scores={drop_crossbow=1..}] run function game:player/give/crossbow
execute as @s[scores={drop_lingering=1..}] run function game:player/give/acid
execute as @s[scores={drop_zombie=1..}] run function game:player/give/zombie
execute as @s[scores={drop_scrap=1..}] run function game:player/give/scrap
execute as @s[scores={drop_turret=1..}] run function game:player/give/turret
execute as @s[scores={drop_zoom=1..}] run function game:player/give/zoom