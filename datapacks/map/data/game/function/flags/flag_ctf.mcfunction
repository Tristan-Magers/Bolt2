# checks
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run function game:flags/ctf/red_take

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run function game:flags/ctf/blue_take

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run function game:flags/ctf/red_return

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run function game:flags/ctf/blue_return