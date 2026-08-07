tag @s remove in_map_editor
execute if entity @s[tag=!bypass_editor_boundary] run kill @n[sort=arbitrary,type=interaction,tag=x,tag=min]
execute if entity @s[tag=!bypass_editor_boundary] run kill @n[sort=arbitrary,type=interaction,tag=x,tag=max]
execute if entity @s[tag=!bypass_editor_boundary] run kill @n[sort=arbitrary,type=interaction,tag=z,tag=min]
execute if entity @s[tag=!bypass_editor_boundary] run kill @n[sort=arbitrary,type=interaction,tag=z,tag=max]