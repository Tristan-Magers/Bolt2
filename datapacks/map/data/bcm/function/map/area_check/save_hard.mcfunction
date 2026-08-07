# separate function necessary to make all markers INDIVIDUALLY run this sequence all the way through
# e.g. if markers A and B are outside save area this makes it say "A is..." then "B is..."
# but if it was in the parent function it'd say "B is..." twice, because it'd check each marker, then wait until AFTER ALL OF THE CHECKS to print warnings
execute unless function bcm:map/area_check/save as @p store success score .can_save_map .calc run function bcm:fail/tellraw {input:'["Failed to save map: ",{nbt:"error.text",storage:"bcm",interpret:true},"is outside the save area"]'}