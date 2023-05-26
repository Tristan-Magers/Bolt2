execute as @a at @s run function game:player/subtitle_scramble/main

tag @a remove processor
tag @p add processor

execute as @a[tag=processor] run function game:algor/random_4

execute as @p[tag=processor,scores={random=0}] run schedule function game:player/subtitle_scramble/schedule_trig 2t
execute as @p[tag=processor,scores={random=1}] run schedule function game:player/subtitle_scramble/schedule_trig 3t
execute as @p[tag=processor,scores={random=2}] run schedule function game:player/subtitle_scramble/schedule_trig 4t
execute as @p[tag=processor,scores={random=3}] run schedule function game:player/subtitle_scramble/schedule_trig 5t

tag @a remove processor