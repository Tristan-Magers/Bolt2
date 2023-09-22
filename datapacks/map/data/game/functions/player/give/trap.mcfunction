give @s creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 1

scoreboard players remove @s drop_creeper 1

execute as @s[scores={drop_creeper=1..}] run function game:player/give/trap