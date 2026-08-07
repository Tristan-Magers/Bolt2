# skip if matching previous block (compression shortcut)
execute if function item_structures:zprivate/save/block_match_prev run return 0
# get string form of block
function item_structures:zprivate/save/block_string
# string -> int
function item_structures:zprivate/save/block_index with storage bs:out block
return 1