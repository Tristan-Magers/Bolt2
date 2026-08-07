# keep or remove this char?
data modify storage bcm tmp.in2 set value ""
$execute unless data storage bcm tmp.chars[{char:"$(char)"}] run data modify storage bcm tmp.in2 set value "$(char)"
function bcm:util/string_concat with storage bcm tmp

# get length of unprocessed part
$data modify storage bcm tmp.str set value "$(str)"
execute store result score .l .calc run data get storage bcm tmp.str

# next char
execute unless score .l .calc matches 1.. run return 1
data modify storage bcm tmp.char set string storage bcm tmp.str 0 1
data modify storage bcm tmp.str set string storage bcm tmp.str 1
function bcm:util/remove_chars with storage bcm tmp