# add to anti-index (block -> id)
data modify storage item_structures tmp.block set from storage bs:out block.block
execute store result storage item_structures tmp.id short 1 store result storage item_structures save.stack short 1 run scoreboard players add id commands 1
data modify storage item_structures anti_index append from storage item_structures tmp
data remove storage item_structures tmp

# add to index (id -> block)
data modify storage item_structures save.index append from storage bs:out block.block