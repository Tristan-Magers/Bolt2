scoreboard players set @s balloon_cooldown 3

execute at @s rotated ~ 0 run summon pig ^-0.15 ^1.1 ^0.2 {Passengers:[{id:"minecraft:pig",Tags:["balloon","hitbox"],Silent:1b,attributes:[{id:"minecraft:scale",base:0.6},{id:"minecraft:follow_range",base:0},{id:"minecraft:max_health",base:999999},{id:"minecraft:movement_speed",base:0},{id:"minecraft:tempt_range",base:0},{id:"minecraft:gravity",base:-0.1}],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}]},{id:"minecraft:interaction",width:0.8f,height:0.8f,Tags:["balloon_interact"],translation:[0.0f,-0.3f,0.f]},{id:"minecraft:item_display",interpolation_duration:18,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.2f,-0.1f],scale:[0.2f,0.2f,0.2f]},item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},Tags:["balloon_display","new"]}],Silent:1b,Tags:["balloon","new"],attributes:[{id:"minecraft:follow_range",base:0},{id:"minecraft:max_health",base:999999},{id:"minecraft:movement_speed",base:0},{id:"minecraft:tempt_range",base:0},{id:"minecraft:gravity",base:-0.1}],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}]}
execute at @s rotated ~ 0 positioned ^-0.15 ^1.1 ^0.6 unless block ~ ~ ~ air run tp @e[type=pig,tag=new,tag=balloon,limit=1] ^ ^ ^-0.8
data merge entity @e[limit=1,tag=balloon_display,tag=new] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.1f,-0.5f],scale:[1f,1f,1f]}}

execute store result score .random .calc run random value 0..16
execute if score .random .calc matches 2..3 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["2"]}}}}
execute if score .random .calc matches 4..5 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["3"]}}}}
execute if score .random .calc matches 6..7 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["4"]}}}}
execute if score .random .calc matches 8..9 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["5"]}}}}
execute if score .random .calc matches 10..11 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["6"]}}}}
execute if score .random .calc matches 12 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["7"]}}}}
execute if score .random .calc matches 13..14 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["8"]}}}}
execute if score .random .calc matches 15..16 run data merge entity @e[limit=1,tag=balloon_display,tag=new] {item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["10"]}}}}

tag @e[tag=balloon_display] remove new

scoreboard players set @e[type=pig,tag=new,tag=balloon,limit=1] t3 0

scoreboard players operation @e[type=pig,tag=new,tag=balloon,limit=1] ID = @s ID

data modify entity @e[type=pig,tag=new,tag=balloon,limit=1] leash.UUID set from entity @s UUID
data modify entity @e[type=pig,tag=new,tag=balloon,limit=1] data.uuidsave set from entity @s UUID
tag @e[tag=balloon] remove new

# use item
scoreboard players set .count .calc 0
execute store result score .count .calc run data get entity @s SelectedItem.count

execute if score .count .calc matches 2.. run item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b,conditions:[]}]
execute if score .count .calc matches 1 run tag @s add last_balloon

scoreboard players add @s balloon_cooldown 1
tag @s add new_balloon
tag @s add has_balloon

playsound minecraft:ui.loom.select_pattern master @a[distance=..6] ~ ~ ~ 0.5 2
playsound minecraft:block.lava.pop master @a[distance=..6] ~ ~ ~ 1 0
playsound minecraft:entity.breeze.inhale master @a[distance=..6] ~ ~ ~ 0.5 2