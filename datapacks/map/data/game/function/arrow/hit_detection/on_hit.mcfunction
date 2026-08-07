# advancement that triggers the function, revoke it so it can trigger again.
advancement revoke @s only game:hit_detection

# only run the rest of the functions if the target (@s) is a viable target
execute unless entity @s[tag=!killed,tag=!totem,scores={invul=..0}] run return 0


tag @s add killed
execute on attacker run scoreboard players add @s kill 1
execute on attacker run scoreboard players add @s killP 1

tag @s add me
execute at @s on attacker run scoreboard players operation @a[tag=me] KILL_ID = @s ID
tag @s remove me

# debug stuff, needs more info.
tellraw @a[tag=verbose] [{text:"kill_id: "},{score:{name:"@s",objective:"KILL_ID"}}]
