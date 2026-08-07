tag @e[tag=coin_spawn,tag=!has_coin,limit=1,sort=random] add new_coin

execute as @e[tag=new_coin] at @s run summon item_display ~ ~ ~ {interpolation_duration:8,teleport_duration:10,Tags:["coin_vis"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:gold_ingot",count:1}}
execute as @e[tag=new_coin] at @s run summon interaction ~ ~ ~ {height:1,width:1,Tags:["coin_interact"]}

tag @e[tag=new_coin] add has_coin

tag @e remove new_coin