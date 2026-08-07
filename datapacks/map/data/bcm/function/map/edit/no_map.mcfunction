tellraw @a "random is selected - teleporting to editor without loading a map"
tag @a[tag=in_map_editor] add exclude
execute as @a[tag=!exclude] run function bcm:editor/enter
tp @a[tag=!exclude] 255 -60 255
tag @a remove exclude

return 1