

#> Run from interaction entity
#> Does not include code related to killing the presumed display entity that renders the actual box
#> Throw a brick at my head

tag @s remove scrap_added

tag @e remove me
tag @s add me

execute if data entity @s interaction on target if entity @s[team=red] run playsound minecraft:block.chest.locked master @s ~ ~ ~ 1 2
execute if data entity @s interaction on target if entity @s[team=red] run title @s actionbar [{"text":"Stop survivors from returning scrap here!"}]
execute if data entity @s interaction on target if entity @s[team=red] as @e[tag=me] run data remove entity @s interaction

execute if data entity @s interaction on target if entity @s[team=blue] run execute as @s store result score @s scrap_count run clear @s minecraft:netherite_scrap 1
execute if data entity @s interaction on target if entity @s[team=blue] run title @s[scores={scrap_count=0}] actionbar [{"text":"Bring Scrap here!"}]
#execute if data entity @s interaction on target if entity @s[team=blue] run clear @s minecraft:netherite_scrap 1
execute if data entity @s interaction on target if entity @s[team=blue] run scoreboard players operation @e[tag=me] scrap_count += @s scrap_count
execute if data entity @s interaction on target if entity @s[team=blue,scores={scrap_count=1..}] run tag @e[tag=me] add scrap_added

execute if data entity @s[tag=scrap_added] interaction on target run tag @a remove processor
execute if data entity @s[tag=scrap_added] interaction on target run tag @p add processor

execute if data entity @s[tag=scrap_added] interaction on target run execute as @p[tag=processor] run function game:algor/random_8

execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .0 .num run give @s[team=blue] bat_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 2
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .1 .num run give @s[team=blue] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .2 .num run give @s[team=blue] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .3 .num run clear @s[team=blue] iron_ingot
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .3 .num run give @s[team=blue] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .4 .num run give @s[team=blue] bat_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48} 2
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .5 .num run give @s[team=blue] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .6 .num run give @s[team=blue] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .7 .num run clear @s[team=blue] iron_ingot
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .7 .num run give @s[team=blue] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1

execute if data entity @s[tag=scrap_added] interaction on target run tag @a remove processor

execute if data entity @s[tag=scrap_added] interaction run execute store result bossbar scrap value run scoreboard players get @s scrap_count

execute if data entity @s[tag=scrap_added] interaction run tellraw @a [{"text":"SCRAP ADDED: "},{"score":{"objective":"scrap_count","name":"@s"}},{"text":"/10"}]
execute if data entity @s[tag=scrap_added,scores={scrap_count=10..}] interaction run function game:end

data remove entity @s interaction

tag @s remove me