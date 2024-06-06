# count scrap
execute as @s[tag=!scrap_data] store result score @s scrap run clear @s minecraft:netherite_scrap
tag @s remove scrap_data

#
item replace entity @s[scores={scrap=1}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 1
item replace entity @s[scores={scrap=2}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 2
item replace entity @s[scores={scrap=3}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 3
item replace entity @s[scores={scrap=4}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 4
item replace entity @s[scores={scrap=5}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 5
item replace entity @s[scores={scrap=6}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 6
item replace entity @s[scores={scrap=7}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 7
item replace entity @s[scores={scrap=8}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 8
item replace entity @s[scores={scrap=9}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 9
item replace entity @s[scores={scrap=10}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 10
item replace entity @s[scores={scrap=11}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 11
item replace entity @s[scores={scrap=12..}] weapon.offhand with minecraft:netherite_scrap[custom_name='{"text":"Scrap (Return to Generator)","italic":false}'] 12