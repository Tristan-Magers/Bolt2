clear @s

execute if score .mode .data = .6 .num run give @s[scores={bow_texture=78}] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
give @s[scores={bow_texture=78},nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow{Unbreakable:1b,HideFlags:1} 1
give @s[nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1

#item replace entity @s[team=red] armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b}
#item replace entity @s[team=blue] armor.chest with leather_chestplate{display:{color:22015},Unbreakable:1b}