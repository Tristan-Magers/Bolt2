tag @a remove me

tag @s remove killed_by_claw

tag @s add me

execute on attacker as @s[type=player] run scoreboard players operation @p[tag=me] KILL_ID = @s ID
execute on attacker as @s[type=player,scores={sword_break=1..}] run tag @p[tag=me] add killed_by_claw

tag @a remove me