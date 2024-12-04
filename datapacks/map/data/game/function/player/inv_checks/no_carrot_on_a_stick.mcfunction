clear @s carrot_on_a_stick
tag @s add lobby_inv_correct
item replace entity @s[scores={team_pref=0}] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"light_purple","text":"Random"}]',custom_model_data={strings:["1"]}]
item replace entity @s[scores={team_pref=1}] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"red","text":"Red"}]',custom_model_data={strings:["2"]}]
item replace entity @s[scores={team_pref=2}] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"dark_aqua","text":"Blue"}]',custom_model_data={strings:["3"]}]
item replace entity @s[scores={team_pref=-1}] hotbar.1 with minecraft:carrot_on_a_stick[custom_name='[{"italic":false,"text":"Selected: "},{"italic":false,"color":"gray","text":"Spectator"}]',custom_model_data={strings:["4"]}]
