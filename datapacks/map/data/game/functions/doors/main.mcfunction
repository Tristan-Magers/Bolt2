#
execute as @s[tag=!new,tag=!red] at @s run function animated_java:shutter/summon
execute as @s[tag=!new,tag=red] at @s run function animated_java:shutter/summon/red
tag @s add new

#
tag @s add open
execute as @s[tag=red,y_rotation=-180] at @s positioned ^-1.5 ^-1 ^-2 unless entity @p[dx=-4,dy=3,dz=-2,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=-180] at @s positioned ^-1.5 ^-1 ^-2 unless entity @p[dx=-4,dy=3,dz=-2,team=blue] run tag @s remove open
execute as @s[tag=red,y_rotation=90] at @s positioned ^-2.5 ^-1 ^-2 unless entity @p[dx=-2,dy=3,dz=4,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=90] at @s positioned ^-2.5 ^-1 ^-2 unless entity @p[dx=-2,dy=3,dz=4,team=blue] run tag @s remove open
execute as @s[tag=red,y_rotation=-90] at @s positioned ^-1.5 ^-1 ^-3 unless entity @p[dx=2,dy=3,dz=-4,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=-90] at @s positioned ^-1.5 ^-1 ^-3 unless entity @p[dx=2,dy=3,dz=-4,team=blue] run tag @s remove open
execute as @s[tag=red,y_rotation=0] at @s positioned ^-2.5 ^-1 ^-3 unless entity @p[dx=4,dy=3,dz=2,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=0] at @s positioned ^-2.5 ^-1 ^-3 unless entity @p[dx=4,dy=3,dz=2,team=blue] run tag @s remove open

#
execute as @s[tag=open,tag=!open_2] at @s run fill ^-1 ^ ^ ^1 ^2 ^ air replace yellow_stained_glass_pane
execute as @s[tag=!open,tag=open_2] at @s run fill ^-1 ^ ^ ^1 ^2 ^ yellow_stained_glass_pane replace air

execute as @s[tag=open,tag=!open_2] at @s run execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function animated_java:shutter/animations/open_curled/play
execute as @s[tag=!open,tag=open_2] at @s run execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function animated_java:shutter/animations/close_curled/play

#
tag @s[tag=!open] remove open_2
tag @s[tag=open] add open_2