clear @s bone_meal
tag @s add lobby_inv_correct
scoreboard players set @s ran_bow_icon_timer 0
item replace entity @s hotbar.7 with minecraft:bone_meal[custom_name='{"italic":false,"text":"Use inventory to select bow skin"}',custom_model_data=2]
