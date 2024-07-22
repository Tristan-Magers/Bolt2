#
clear @s[nbt=!{Inventory:[{id:"minecraft:bone_meal",Slot:7b}]},gamemode=adventure] bone_meal
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:bone_meal",Slot:7b}]},gamemode=adventure] ran_bow_icon_timer 0
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bone_meal",Slot:7b}]},gamemode=adventure] hotbar.7 with minecraft:bone_meal[custom_name='{"italic":false,"text":"Use inventory to select bow skin"}',custom_model_data=2]

#
clear @s[nbt=!{Inventory:[{id:"minecraft:written_book",Slot:6b}]},gamemode=adventure] written_book
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:written_book",Slot:6b}]},gamemode=adventure] hotbar.6 with minecraft:written_book[written_book_content={title:"Book for Nerds",author:"Bleps",generation:0,resolved:1b,pages:['[{"text":"Book for nerds","bold":true,"underlined":false},{"text":"\\nGame Version 1.0.0","underlined":false,"bold":false},{"text":"\\n\\nLinks:","underlined":false},{"text":"\\n\\nDiscord","color":"dark_aqua","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Talk with the community and find out about upcoming tournaments. :)","color":"dark_green"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/6xatFYH"}},{"text":"\\n\\nSupport Me :3","color":"#1B4EA6","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Just letting me know you enjoy the game is enough, but if you are inclined, I have a Patreon.","color":"dark_aqua"}]},"clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"\\n\\nGitHub","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Download of world and all files. May be a slightly different version.","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Tristan-Magers/Bolt2"}}]','[{"text":"Credits\\n","bold":true,"underlined":false},{"text":"\\nChainsawNinja","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Lead/Dev/Design","color":"gold"}]}},{"text":"\\nGoombGoombus","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Art/Building","color":"gold"}]}},{"text":"\\nSlabfred","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nMiffenKop","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Art/Models","color":"gold"}]}},{"text":"\\nAiden_Monster","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Art/Models/Server","color":"gold"}]}},{"text":"\\nDerpine","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building/Logo","color":"gold"}]}},{"text":"\\nTheViralMelon","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Dev","color":"gold"}]}},{"text":"\\nTannerDubord","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nramencakes_","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nphoenixxempire","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}}]','[{"text":"Special Thanks\\n","bold":true,"underlined":false},{"text":"\\nflamingo_iris","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Emotional support 💗","color":"gold"}]}},{"text":"\\nShuba_Shuba","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Code/Playtesting","color":"gold"}]}},{"text":"\\nmphotons","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Bow Art/Playtesting","color":"gold"}]}},{"text":"\\nbetaRadiation","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Bow Art/Playtesting","color":"gold"}]}},{"text":"\\nrubix_yi","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}},{"text":"\\nSmartyAlek","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}}]']}] 1

#
scoreboard players add @s lobby_text_time 1

scoreboard players set @s[gamemode=spectator] lobby_text_time 20

title @s[scores={team_pref=-1,lobby_text_time=1}] actionbar {"text":"Unjoined! (will spectate)","color":"gray"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team (infected or survivor)","color":"light_purple"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=1,lobby_text_time=1}] actionbar {"text":"Selected Infected Team","color":"red"}
execute if score .mode_screen .data = .6 .num run title @s[scores={team_pref=2,lobby_text_time=1}] actionbar {"text":"Selected Survivor Team","color":"dark_aqua"}

execute unless score .mode_screen .data = .6 .num if score .mode_screen .data = .1 .num if score .ranked .data = .1 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team (uses matchmaking)","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num if score .mode_screen .data = .1 .num if score .ranked .data = .0 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num unless score .mode_screen .data = .1 .num run title @s[scores={team_pref=0,lobby_text_time=1}] actionbar {"text":"Selected Random Team","color":"light_purple"}
execute unless score .mode_screen .data = .6 .num run title @s[scores={team_pref=1,lobby_text_time=1}] actionbar {"text":"Selected Red Team","color":"red"}
execute unless score .mode_screen .data = .6 .num run title @s[scores={team_pref=2,lobby_text_time=1}] actionbar {"text":"Selected Blue Team","color":"dark_aqua"}

scoreboard players set @s[scores={lobby_text_time=100..}] lobby_text_time 0

#
tag @s[scores={click=1..}] add no_switch_text
scoreboard players add @s[scores={click=1..}] team_pref 1
scoreboard players set @s[scores={click=1..,team_pref=3..}] team_pref -1
clear @s[scores={click=1..}] carrot_on_a_stick

clear @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] carrot_on_a_stick
item replace entity @s[scores={team_pref=0},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"light_purple","text":"Random"}]',custom_model_data=1]
item replace entity @s[scores={team_pref=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"red","text":"Red"}]',custom_model_data=2]
item replace entity @s[scores={team_pref=2},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"dark_aqua","text":"Blue"}]',custom_model_data=3]
item replace entity @s[scores={team_pref=-1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]},gamemode=adventure] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"gray","text":"Spectator"}]',custom_model_data=4]

scoreboard players set @s click 0