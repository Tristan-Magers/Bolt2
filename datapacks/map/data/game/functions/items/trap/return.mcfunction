scoreboard players operation @a ID -= @s ID

tag @s add kill
tell @p[scores={ID=0}] can't place there!
give @p[scores={ID=0}] creeper_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48} 1

scoreboard players operation @a ID += @s ID