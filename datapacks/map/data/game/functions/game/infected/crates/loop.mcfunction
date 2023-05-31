#> Run from interaction entity
#> Does not include code related to killing the presumed display entity that renders the actual box
#> Throw a brick at my head

tag @e remove me
tag @s add me

scoreboard players add @s t2 1
execute as @s[scores={t2=80}] at @s run fill ~ ~ ~ ~ ~ ~ ender_chest replace chest
execute as @s[scores={t2=80}] at @s run team join purple @e[type=shulker,distance=..1]
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

execute if data entity @s[scores={t=1}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□□□□□□□■"}]
execute if data entity @s[scores={t=2}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□□□□□□■■"}]
execute if data entity @s[scores={t=3}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□□□□□■■■"}]
execute if data entity @s[scores={t=4}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□□□□■■■■"}]
execute if data entity @s[scores={t=5}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□□□■■■■■"}]
execute if data entity @s[scores={t=6}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□□■■■■■■"}]
execute if data entity @s[scores={t=7}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□□■■■■■■■"}]
execute if data entity @s[scores={t=8}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □□■■■■■■■■"}]
execute if data entity @s[scores={t=9}] interaction run title @a[distance=..8] actionbar [{"text":"Open progress: □■■■■■■■■■"}]
execute if data entity @s[scores={t=10}] interaction run title @a[distance=..8] actionbar [{"text":"OPENED!"}]
execute if data entity @s[scores={t=10}] interaction run scoreboard players add .zombie_crates .data 1
execute if data entity @s[scores={t=10}] interaction run tellraw @a [{"text":"CRATE OPENED"}]
#execute if data entity @s[scores={t=10}] interaction run tellraw @a [{"text":"CRATE OPENED: "},{"score":{"objective":".data","name":".zombie_crates"}},{"text":"/6"}]
#execute if data entity @s[scores={t=10}] interaction if score .zombie_crates .data > .5 .num run function game:end

#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run clear @s[team=blue] iron_ingot

#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] bat_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 2
#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1
#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 1
#execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1

execute if data entity @s[scores={t=10}] interaction on target run execute if score .mode .data = .6 .num run give @s[team=blue] minecraft:netherite_scrap{display:{Name:'{"text":"Scrap (Return to crafting table)","italic":false}'}} 1

data remove entity @s interaction

execute as @s[scores={t=10}] run playsound minecraft:block.ender_chest.open master @a[team=!red]
execute as @s[scores={t=10..}] run function game:game/infected/crates/despawn

tag @s remove me