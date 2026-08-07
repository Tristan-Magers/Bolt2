tag @s remove inspawn
$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f positioned $(origin) as @s[$(area)] run tag @s add inspawn
scoreboard players operation @s[tag=inspawn,scores={invul=1..}] invul = .map_setting invul