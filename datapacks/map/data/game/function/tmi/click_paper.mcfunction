#
execute if score .tmi_preset .data matches 0 run scoreboard players set .tmi_preset .data 101
execute if score .tmi_preset .data matches 1 run scoreboard players set .tmi_preset .data 102
execute if score .tmi_preset .data matches 2 run scoreboard players set .tmi_preset .data 103
execute if score .tmi_preset .data matches 3 run scoreboard players set .tmi_preset .data 104
execute if score .tmi_preset .data matches 4 run scoreboard players set .tmi_preset .data 105
execute if score .tmi_preset .data matches 5 run scoreboard players set .tmi_preset .data 106
execute if score .tmi_preset .data matches 6 run scoreboard players set .tmi_preset .data 107
execute if score .tmi_preset .data matches 7 run scoreboard players set .tmi_preset .data 100
execute if score .tmi_preset .data matches 8 run scoreboard players set .tmi_preset .data 109
execute if score .tmi_preset .data matches 9 run scoreboard players set .tmi_preset .data 110
execute if score .tmi_preset .data matches 10 run scoreboard players set .tmi_preset .data 111
execute if score .tmi_preset .data matches 11 run scoreboard players set .tmi_preset .data 112
execute if score .tmi_preset .data matches 12 run scoreboard players set .tmi_preset .data 100

execute if score .tmi_preset .data matches 100.. run function game:tmi/preset/0
execute if score .tmi_preset .data matches 101 run function game:tmi/preset/1
execute if score .tmi_preset .data matches 102 run function game:tmi/preset/2
execute if score .tmi_preset .data matches 103 run function game:tmi/preset/3
execute if score .tmi_preset .data matches 104 run function game:tmi/preset/4
execute if score .tmi_preset .data matches 105 run function game:tmi/preset/5
execute if score .tmi_preset .data matches 106 run function game:tmi/preset/6
execute if score .tmi_preset .data matches 107 run function game:tmi/preset/7

execute if score .tmi_preset .data matches 100 run scoreboard players set .tmi_preset .data 0
execute if score .tmi_preset .data matches 101 run scoreboard players set .tmi_preset .data 1
execute if score .tmi_preset .data matches 102 run scoreboard players set .tmi_preset .data 2
execute if score .tmi_preset .data matches 103 run scoreboard players set .tmi_preset .data 3
execute if score .tmi_preset .data matches 104 run scoreboard players set .tmi_preset .data 4
execute if score .tmi_preset .data matches 105 run scoreboard players set .tmi_preset .data 5
execute if score .tmi_preset .data matches 106 run scoreboard players set .tmi_preset .data 6
execute if score .tmi_preset .data matches 107 run scoreboard players set .tmi_preset .data 7
execute if score .tmi_preset .data matches 108 run scoreboard players set .tmi_preset .data 8
execute if score .tmi_preset .data matches 109 run scoreboard players set .tmi_preset .data 9
execute if score .tmi_preset .data matches 110 run scoreboard players set .tmi_preset .data 10
execute if score .tmi_preset .data matches 111 run scoreboard players set .tmi_preset .data 11
execute if score .tmi_preset .data matches 112 run scoreboard players set .tmi_preset .data 12

execute if score .tmi_preset .data matches 0 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 0: Blank","italic":false}']
execute if score .tmi_preset .data matches 1 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 1: Too Many Items","italic":false}']
execute if score .tmi_preset .data matches 2 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 2: Too Many Items 2","italic":false}']
execute if score .tmi_preset .data matches 3 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 3: Too Too Many Items","italic":false}']
execute if score .tmi_preset .data matches 4 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 4: Point Rush","italic":false}']
execute if score .tmi_preset .data matches 5 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 5: Nightmare","italic":false}']
execute if score .tmi_preset .data matches 6 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 6: Wind Rivals","italic":false}']
execute if score .tmi_preset .data matches 7 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 7: Deathmatch","italic":false}']
execute if score .tmi_preset .data matches 8 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 8: Nightmare","italic":false}']
execute if score .tmi_preset .data matches 9 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 9: One In The Quiver (give or take)","italic":false}']
execute if score .tmi_preset .data matches 10 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 10: Three Crossbows (in the quiver)","italic":false}']
execute if score .tmi_preset .data matches 11 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 11: Fog of War","italic":false}']
execute if score .tmi_preset .data matches 12 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 12: Peak Design","italic":false}']
