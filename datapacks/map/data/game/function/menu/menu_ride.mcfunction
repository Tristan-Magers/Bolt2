tag @s remove rider

execute on passengers run tag @s add is_m_rider

#execute on passengers run effect give @s slow_falling 2 0 true
execute on passengers at @s run scoreboard players add @s menu_afk 1
execute on passengers at @s[scores={menu_afk=600..}] run ride @s dismount
execute on passengers at @s run particle cloud ~ ~0.3 ~ 0.25 .1 0.25 0 1 force
execute on passengers on vehicle run tag @s add rider
kill @s[tag=!rider]

