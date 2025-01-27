give @s minecraft:zombie_villager_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Minion","italic":false,"color":"gray"}',lore=['{"text":"Summon zombie that attacks enemies","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:zombie_villager",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],Attributes:[{Name:max_health,Base:1},{Name:movement_speed,Base:0.33}]}] 1

scoreboard players remove @s drop_zombie 1

execute as @s[scores={drop_zombie=1..}] run function game:player/give/zombie