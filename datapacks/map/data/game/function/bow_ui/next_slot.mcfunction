#
function game:bow_ui/make_slot

scoreboard players add @s v_1 1
scoreboard players add @s v_2 1

execute if score @s v_1 matches ..17 if score @s v_2 matches ..77 run function game:bow_ui/next_slot