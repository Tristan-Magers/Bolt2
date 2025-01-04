clear @s[tag=!click_select] carrot_on_a_stick
tag @s add lobby_inv_correct
item replace entity @s[scores={team_pref=0}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={flag:1b},custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"light_purple","text":"Random"}]',custom_model_data={strings:["1"]}]
item replace entity @s[scores={team_pref=1}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={flag:1b},custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"red","text":"Red"}]',custom_model_data={strings:["2"]}]
item replace entity @s[scores={team_pref=2}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={flag:1b},custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"dark_aqua","text":"Blue"}]',custom_model_data={strings:["3"]}]
item replace entity @s[scores={team_pref=-1}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={flag:1b},custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"gray","text":"Spectator"}]',custom_model_data={strings:["4"]}]

item replace entity @s[tag=!no_music] hotbar.2 with minecraft:carrot_on_a_stick[custom_data={music:1b},custom_name='[{"italic":false,"text":"Music: "},{"italic":false,"color":"green","text":"ON"}]',custom_model_data={strings:["music_on"]}]
item replace entity @s[tag=no_music] hotbar.2 with minecraft:carrot_on_a_stick[custom_data={music:1b},custom_name='[{"italic":false,"text":"Music: "},{"italic":false,"color":"red","text":"OFF"}]',custom_model_data={strings:["music_off"]}]

tag @s remove click_select