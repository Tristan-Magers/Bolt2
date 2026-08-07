#
tag @s remove in_spec_area

#
function game:map/spec_box with storage maps:active settings.spectatorBoundingBox
#execute if score .map .data = .1 .num as @s[x=-54,y=-62,z=-16,dx=-37,dy=30,dz=76] run tag @s add in_spec_area
#execute if score .map .data = .2 .num as @s[x=-154,y=-62,z=-86,dx=-42,dy=21,dz=-72] run tag @s add in_spec_area
#execute if score .map .data = .3 .num as @s[x=-112,y=-2,z=354,dx=-49,dy=23,dz=59] run tag @s add in_spec_area
#execute if score .map .data = .5 .num as @s[x=-355,y=-62,z=-95,dx=31,dy=27,dz=46] run tag @s add in_spec_area
#execute if score .map .data = .6 .num as @s[x=-433,y=-62,z=67,dx=46,dy=31,dz=-99] run tag @s add in_spec_area
#execute if score .map .data = .10 .num as @s[x=-257,y=-58,z=-456,dx=41,dy=28,dz=47] run tag @s add in_spec_area
#execute if score .map .data = .12 .num as @s[x=-44,y=-60,z=-362,dx=80,dy=30,dz=110] run tag @s add in_spec_area
#execute if score .map .data = .14 .num as @s[x=-476,y=-25,z=-257,dx=-65,dy=28,dz=-97] run tag @s add in_spec_area
#execute if score .map .data = .15 .num as @s[x=-404,y=-42,z=171,dx=-84,dy=26,dz=52] run tag @s add in_spec_area

#
execute if score .running .data = .0 .num run tag @s remove in_spec_area

#
scoreboard players set @s[tag=!in_spec_area] Leave 1