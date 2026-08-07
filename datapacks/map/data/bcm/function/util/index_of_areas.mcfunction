# check this char pair
data modify storage bcm tmp.in1 set string storage bcm tmp.str 0 2

# equals "dx"?
execute if score i.dx .calc matches -1 run data modify storage bcm tmp.in2 set value "dx"
execute if score i.dx .calc matches -1 store success score .different .calc run data modify storage bcm tmp.in2 set from storage bcm tmp.in1
execute if score i.dx .calc matches -1 if score .different .calc matches 0 run scoreboard players operation i.dx .calc = .i .calc

# equals "dy"?
execute if score i.dy .calc matches -1 run data modify storage bcm tmp.in2 set value "dy"
execute if score i.dy .calc matches -1 store success score .different .calc run data modify storage bcm tmp.in2 set from storage bcm tmp.in1
execute if score i.dy .calc matches -1 if score .different .calc matches 0 run scoreboard players operation i.dy .calc = .i .calc

# equals "dz"?
execute if score i.dz .calc matches -1 run data modify storage bcm tmp.in2 set value "dz"
execute if score i.dz .calc matches -1 store success score .different .calc run data modify storage bcm tmp.in2 set from storage bcm tmp.in1
execute if score i.dz .calc matches -1 if score .different .calc matches 0 run scoreboard players operation i.dz .calc = .i .calc

# next char pair
scoreboard players add .i .calc 1
data modify storage bcm tmp.str set string storage bcm tmp.str 1
execute store result score .l .calc run data get storage bcm tmp.str
execute if score .l .calc matches 2.. run function bcm:util/index_of_areas