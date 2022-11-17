
execute as @e[tag=boost,limit=10] at @s run tp @s ^ ^-0.0016 ^
scoreboard players add @s t5 1
execute as @s[scores={t5=..-1}] run function game:test2