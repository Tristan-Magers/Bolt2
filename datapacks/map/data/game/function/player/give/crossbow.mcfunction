give @s crossbow[custom_name='{"text":"Crossbow (11 seconds)","italic":false,"color":"gray"}',lore=['{"text":"Automatic rapid fire crossbow","color":"white","italic":false}','{"text":"Keep out of range of small children","color":"white","italic":false}'],enchantments={levels:{"minecraft:quick_charge":1},show_in_tooltip:false},custom_data={trigger:1b}] 1

scoreboard players set @s[scores={crossbowTime=1..}] crossbowTime 1

scoreboard players set @s drop_crossbow 0