# this probably has little to no performance benefit over the brute force search, however this gives better results if it is possible for 2 players to somehow shelf items simultaneously because the raycast is more likely to find the correct shelf before the wrong shelf. but both would have some potential to mess up if the above premise is indeed possible (idk if it is though)

execute positioned ~ ~ ~ if predicate game:used_shelf run return run function game:player/shelf/found
execute positioned ~1 ~ ~ if predicate game:used_shelf run return run function game:player/shelf/found
execute positioned ~ ~1 ~ if predicate game:used_shelf run return run function game:player/shelf/found
execute positioned ~ ~ ~1 if predicate game:used_shelf run return run function game:player/shelf/found
execute positioned ~-1 ~ ~ if predicate game:used_shelf run return run function game:player/shelf/found
execute positioned ~ ~-1 ~ if predicate game:used_shelf run return run function game:player/shelf/found
execute positioned ~ ~ ~-1 if predicate game:used_shelf run return run function game:player/shelf/found

scoreboard players remove .steps .calc 1
execute unless score .steps .calc matches 1.. run return fail
execute positioned ^ ^ ^0.25 run return run function game:player/shelf/find_raycast