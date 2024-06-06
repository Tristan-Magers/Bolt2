give @s minecraft:zombie_villager_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Minion","italic":false,"color":"gray"}',HideFlags:255,EntityTag:{PersistenceRequired:0b,CanPickUpLoot:0b,IsBaby:0b,Health:10f,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.3}]}] 1

scoreboard players remove @s drop_zombie 1

execute as @s[scores={drop_zombie=1..}] run function game:player/give/zombie