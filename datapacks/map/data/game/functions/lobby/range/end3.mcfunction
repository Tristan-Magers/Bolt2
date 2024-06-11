setblock 251 -50 -266 minecraft:iron_door[facing=east,half=lower,hinge=right] destroy
setblock 251 -49 -266 minecraft:iron_door[facing=east,half=upper,hinge=right] destroy

tp @a[x=251.5,y=-50,z=-266.5,distance=..1.8] 251.5 -50.00 -263.9

scoreboard players set .range3 .data 0