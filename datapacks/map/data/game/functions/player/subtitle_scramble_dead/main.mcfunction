tag @s add sub_scramb
tag @s[tag=stop_scramb] remove sub_scramb

function game:algor/random_4

execute as @s[scores={random=0}] at @s positioned ^1 ^ ^1 run function game:player/subtitle_scramble/sounds
execute as @s[scores={random=1}] at @s positioned ^-1 ^ ^1 run function game:player/subtitle_scramble/sounds
execute as @s[scores={random=2}] at @s positioned ^1 ^ ^-1 run function game:player/subtitle_scramble/sounds
execute as @s[scores={random=3}] at @s positioned ^-1 ^ ^-1 run function game:player/subtitle_scramble/sounds