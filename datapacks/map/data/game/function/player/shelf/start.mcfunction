# undoes player putting items in shelf

# if 2 players somehow use different shelves simultaneously, this MIGHT destroy items
# if 2 players somehow use the same shelf simulatenously, this DEFINITELY destroys items
# i don't even know if getting the above cases is even possible though

advancement revoke @s only game:shelf
scoreboard players set .steps .calc 50
execute anchored eyes positioned ^ ^ ^0.25 unless function game:player/shelf/find_raycast unless function game:player/shelf/find_loop run tellraw @a [{text:"ERROR: ", color:red},{selector:"@s"}," used a shelf block, but I couldn't find it!"]