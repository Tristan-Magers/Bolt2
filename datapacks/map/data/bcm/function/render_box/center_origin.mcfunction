$execute at @s run tp @s[tag=!x] ~$(x) ~ ~
$execute at @s run tp @s[tag=!y] ~ ~$(y) ~
$execute at @s run tp @s[tag=!z] ~ ~ ~$(z)
execute store result entity @s[tag=!x] transformation.translation[0] float -.5 run data get storage bcm tmp.size.x
execute store result entity @s[tag=!y] transformation.translation[1] float -.5 run data get storage bcm tmp.size.y
execute store result entity @s[tag=!z] transformation.translation[2] float -.5 run data get storage bcm tmp.size.z