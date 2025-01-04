#> Run from interaction entity
#> Does not include code related to killing the presumed display entity that renders the actual box
#> Throw a brick at my head

tag @e remove me
tag @s add me

scoreboard players add @s t2 1
#execute as @s[scores={t2=80}] at @s run fill ~ ~ ~ ~ ~ ~ ender_chest replace chest
execute as @s[scores={t2=80}] at @s run team join gold @e[type=shulker,distance=..1]
execute as @s[scores={t2=80}] at @s run tag @s add open
execute as @s[scores={t2=1}] at @s run playsound minecraft:entity.strider.saddle master @a ~ ~ ~ 1 1
execute as @s[scores={t2=80}] at @s run playsound minecraft:block.ender_chest.close master @a ~ ~ ~ 1 2

execute if data entity @s[tag=!open] interaction on target if entity @s run playsound minecraft:block.chest.locked master @s ~ ~ ~ 1 1.5
execute if data entity @s[tag=!open] interaction on target if entity @s run title @s actionbar [{"text":"NOT ACTIVE YET"}]

data remove entity @s[tag=!open] interaction

execute if data entity @s interaction on target if entity @s[team=red] run playsound minecraft:block.chest.locked master @s ~ ~ ~ 1 2
execute if data entity @s interaction on target if entity @s[team=red] run title @s actionbar [{"text":"Guard chests! Don't open them!"}]
execute if data entity @s interaction on target if entity @s[team=red] as @e[tag=me] run data remove entity @s interaction

execute if data entity @s interaction run scoreboard players add @s t 1
execute if data entity @s interaction run playsound minecraft:block.chest.locked master @a[team=!red] ~ ~ ~ 1 2

scoreboard players set @a[distance=..8,team=blue] title_pause 10
execute if data entity @s[scores={t=1}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□□□□□□□■"}]
execute if data entity @s[scores={t=2}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□□□□□□■■"}]
execute if data entity @s[scores={t=3}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□□□□□■■■"}]
execute if data entity @s[scores={t=4}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□□□□■■■■"}]
execute if data entity @s[scores={t=5}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□□□■■■■■"}]
execute if data entity @s[scores={t=6}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□□■■■■■■"}]
execute if data entity @s[scores={t=7}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□□■■■■■■■"}]
execute if data entity @s[scores={t=8}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □□■■■■■■■■"}]
execute if data entity @s[scores={t=9}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"Open progress: □■■■■■■■■■"}]
execute if data entity @s[scores={t=10}] interaction run title @a[distance=..8,team=blue] actionbar [{"text":"OPENED!"}]
execute if data entity @s[scores={t=10}] interaction run scoreboard players add .zombie_crates .data 1
execute if data entity @s[scores={t=10}] interaction run tellraw @a[team=blue,tag=playing] [{"text":"CRATE OPENED! "},{"text":"Return scrap to generator","color":"gray"}]
execute if data entity @s[scores={t=10}] interaction run tellraw @a[team=red,tag=playing] [{"text":"CRATE OPENED!"}]
execute if data entity @s[scores={t=10}] interaction run tellraw @a[gamemode=spectator,tag=!playing] [{"text":"CRATE OPENED!"}]
#execute if data entity @s[scores={t=10}] interaction run tellraw @a [{"text":"CRATE OPENED: "},{"score":{"objective":".data","name":".zombie_crates"}},{"text":"/6"}]
#execute if data entity @s[scores={t=10}] interaction if score .zombie_crates .data > .5 .num run function game:end

#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run clear @s[team=blue] iron_ingot

#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] panda_spawn_egg{custom_model_data={strings:["1"]},can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}','{"text":"Pushes players and enitites up.","color":"white","italic":false}']},entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}} 2
#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] snowball{custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']}} 1
#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] creeper_spawn_egg{can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}']},entity_data={PersistenceRequired:1b,Silent:1b}} 1
#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] iron_ingot{custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']}} 1

execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run scoreboard players add @s track_total_crates 1
execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num as @s[scores={track_total_crates=8..},tag=locked_71] run function game:player/unlock/71
execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 1
execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num as @s[team=blue] run function game:player/scrap_correct

data remove entity @s interaction

execute as @s[scores={t=10}] run playsound minecraft:block.ender_chest.open master @a[team=!red]
execute as @s[scores={t=10..}] run function game:game/infected/crates/despawn

tag @s remove me