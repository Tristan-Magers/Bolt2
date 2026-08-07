$title @s actionbar [{text:"",color:"red"},$(input)]

stopsound @s ui entity.enderman.teleport
execute at @s run playsound entity.enderman.teleport ui @s ~ ~ ~ 1 0.5

return fail