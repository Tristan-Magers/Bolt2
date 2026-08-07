### convert entity selector to object
### area: "dx=###, dy=###, dz=###" -> bcm macro: {dx:###, dy:###, dz:###}


## remove unimportant characters: commas, spaces, equals
## "dx=###, dy=###, dz=###" -> "dx###dy###dz###"

# chars to remove & required concat settings
data modify storage bcm tmp set value {\
  chars:[\
    {char:","},\
    {char:" "},\
    {char:"="},\
  ],\
  in1:"",\
  out:"storage bcm tmp.in1"\
}

# first char
$data modify storage bcm tmp.str set value "$(area)"
data modify storage bcm tmp.char set string storage bcm tmp.str 0 1
data modify storage bcm tmp.str set string storage bcm tmp.str 1

# outputs to storage bcm tmp.in1
function bcm:util/remove_chars with storage bcm tmp
#tellraw @a ["reduced string: ",{nbt:"tmp.in1",storage:"bcm"}]


## get indexes of "dx", "dy", and "dz"
# input bcm tmp.str
data modify storage bcm tmp.str set from storage bcm tmp.in1
# save for next part
data remove storage bcm macro
data modify storage bcm macro.str set from storage bcm tmp.in1

# setup
scoreboard players set .i .calc 0
scoreboard players set i.dx .calc -1
scoreboard players set i.dy .calc -1
scoreboard players set i.dz .calc -1

# outputs to i.dx, i.dy, i.dz .calc
function bcm:util/index_of_areas
#tellraw @a ['index of "dx": ',{score:{name:"i.dx",objective:".calc"}},'\nindex of "dy": ',{score:{name:"i.dy",objective:".calc"}},'\nindex of "dz": ',{score:{name:"i.dz",objective:".calc"}}]


## get values of dx, dy, and dz
# input str, start, end
# start = index of value
# end = index of next key, string length if N/A

# dx
scoreboard players operation .i .calc = i.dx .calc
execute store result storage bcm macro.start int 1 run scoreboard players add .i .calc 2
execute store result storage bcm macro.end int 1 store result score .i .calc run data get storage bcm macro.str
execute if score i.dy .calc > i.dx .calc store result storage bcm macro.end int 1 run scoreboard players operation .i .calc < i.dy .calc
execute if score i.dz .calc > i.dx .calc store result storage bcm macro.end int 1 run scoreboard players operation .i .calc < i.dz .calc
function bcm:util/substring with storage bcm macro
data modify storage bcm macro.dx set from storage bcm tmp.out

# dy
scoreboard players operation .i .calc = i.dy .calc
execute store result storage bcm macro.start int 1 run scoreboard players add .i .calc 2
execute store result storage bcm macro.end int 1 store result score .i .calc run data get storage bcm macro.str
execute if score i.dx .calc > i.dy .calc store result storage bcm macro.end int 1 run scoreboard players operation .i .calc < i.dx .calc
execute if score i.dz .calc > i.dy .calc store result storage bcm macro.end int 1 run scoreboard players operation .i .calc < i.dz .calc
function bcm:util/substring with storage bcm macro
data modify storage bcm macro.dy set from storage bcm tmp.out

# dz
scoreboard players operation .i .calc = i.dz .calc
execute store result storage bcm macro.start int 1 run scoreboard players add .i .calc 2
execute store result storage bcm macro.end int 1 store result score .i .calc run data get storage bcm macro.str
execute if score i.dy .calc > i.dz .calc store result storage bcm macro.end int 1 run scoreboard players operation .i .calc < i.dy .calc
execute if score i.dx .calc > i.dz .calc store result storage bcm macro.end int 1 run scoreboard players operation .i .calc < i.dx .calc
function bcm:util/substring with storage bcm macro
data modify storage bcm macro.dz set from storage bcm tmp.out

#tellraw @a ["dx: ",{nbt:"macro.dx",storage:"bcm"},"\ndy: ",{nbt:"macro.dy",storage:"bcm"},"\ndz: ",{nbt:"macro.dz",storage:"bcm"}]

# cleanup
data remove storage bcm macro.start
data remove storage bcm macro.end
data remove storage bcm macro.str
data remove storage bcm tmp

#tellraw @a ["final result: ",{nbt:"macro",storage:"bcm"}]