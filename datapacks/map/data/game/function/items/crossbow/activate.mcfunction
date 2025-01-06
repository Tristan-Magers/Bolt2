clear @s crossbow[custom_name='{"text":"Crossbow [Active]","italic":false,"color":"gray"}']
execute if score .tmi .data = .0 .num if score .mode .data = .1 .num as @s[tag=locked_54] run function game:player/unlock/54
execute if score .mode .data = .7 .num as @s[tag=locked_32] run function game:player/unlock/32
scoreboard players add @s crossbowTime 240
item replace entity @s weapon.mainhand with crossbow[custom_name='{"text":"Crossbow [Active]","italic":false,"color":"gray"}',unbreakable={show_in_tooltip:false},custom_data={trigger:0b},charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
