# handle kills
scoreboard players remove @s[scores={kill=1..}] kill 1

scoreboard players add .Kills .metric 1

scoreboard players add @s kills 1
scoreboard players add @s killStreak 1

# set to zero on modes with no killstreak
execute if score .mode .data = .6 .num run scoreboard players set @s killStreak 0
execute if score .mode .data = .7 .num run scoreboard players set @s killStreak 0

#
execute if score .mode .data = .1 .num run clear @s[scores={kills=1}] written_book
execute if score .mode .data = .1 .num run clear @s[scores={kills=15}] written_book
execute if score .mode .data = .1 .num run item replace entity @s[scores={kills=1}] hotbar.7 with written_book{pages:['["",{"text":"Every _ Kills","bold":true},{"text":"\\nx4 = Grenade\\nx5 = Walls\\nx15 = Crossbow\\n\\n","color":"reset"},{"text":"Kill Streak","bold":true},{"text":"\\n2 = Spawnpoint\\n3 = Traps\\n5 = Reveal\\n7 = Traps\\n10 = Reveal\\n11+ = Touch Grass\\n\\n","color":"reset"},{"text":"Capture","bold":true},{"text":" = Shield","color":"reset"}]'],title:"Item Aquirement",author:"Space Bleps"}

# kill items
give @s[scores={killStreak=2},team=blue] slime_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
give @s[scores={killStreak=2},team=red] magma_cube_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1

give @s[scores={killStreak=3}] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 2
give @s[scores={killStreak=5}] map{display:{Name:'{"text":"Reveal","italic":false,"color":"gray"}'}} 1
give @s[scores={killStreak=7}] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 2
give @s[scores={killStreak=10}] map{display:{Name:'{"text":"Reveal","italic":false,"color":"gray"}'}} 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .CrossKills .stats

execute if score .mode .data = .1 .num run give @s[scores={t=0}] crossbow{display:{Name:'{"text":"Crossbow (lasts 11 seconds)","italic":false,"color":"gray"}'}} 1
execute if score .mode .data = .7 .num run give @s[scores={t=0}] crossbow{display:{Name:'{"text":"Crossbow (lasts 11 seconds)","italic":false,"color":"gray"}'},Enchantments:[{id:"minecraft:quick_charge",lvl:4s}]} 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .GrenadeKills .stats

execute if score .mode .data = .1 .num run give @s[scores={t=0}] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1
execute if score .mode .data = .7 .num run give @s[scores={t=0}] snowball{display:{Name:'{"text":"Grenade (can\'t break emerald)","italic":false,"color":"gray"}'}} 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .WallKills .stats

give @s[scores={t=0}] silverfish_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b,NoAI:1},HideFlags:48} 4

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .BoostKills .stats

give @s[scores={t=0}] egg{display:{Name:'{"text":"Boost","italic":false,"color":"gray"}'}} 1

# text
execute if score .mode .data = .1 .num run tellraw @s[scores={t=0}] [{"text":"5 KILLS BONUS","color":"yellow"},{"text":" (5 Walls)","color":"gray"}]

execute if score .mode .data = .1 .num run execute as @s[scores={killStreak=3}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 3 KILL STREAK","color":"gold"}]
execute if score .mode .data = .1 .num run execute as @s[scores={killStreak=5}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 5 KILL STREAK","color":"gold"}]
execute if score .mode .data = .1 .num run execute as @s[scores={killStreak=7}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 7 KILL STREAK","color":"gold"}]
execute if score .mode .data = .1 .num run execute as @s[scores={killStreak=10}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" !10! KILL STREAK","color":"gold"}]

execute if score .mode .data = .1 .num run execute as @s[scores={kills=15}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 15 KILLS","color":"yellow"}]
execute if score .mode .data = .1 .num run execute as @s[scores={kills=30}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 30 KILLS","color":"yellow"}]
execute if score .mode .data = .1 .num run execute as @s[scores={kills=45}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 45 KILLS","color":"yellow"}]
execute if score .mode .data = .1 .num run execute as @s[scores={kills=60}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 60 KILLS","color":"yellow"}]
execute if score .mode .data = .1 .num run execute as @s[scores={kills=75}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 75 KILLS","color":"yellow"}]
execute if score .mode .data = .1 .num run execute as @s[scores={kills=90}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 90 KILLS","color":"yellow"}]

execute as @a[scores={kill=1..}] at @s run function game:player/kill