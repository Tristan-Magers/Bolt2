fill ~ ~17 ~ ~1 ~20 ~26 air strict
$execute positioned ~1 ~17 ~13 run fill ~ ~ ~$(mapTextBlocks) ~ ~2 ~-$(mapTextBlocks) mud strict
$execute positioned ~ ~17 ~13 run fill ~ ~3 ~$(mapTextBlocks) ~1 ~3 ~-$(mapTextBlocks) black_concrete strict
$execute positioned ~ ~17 ~14 positioned ~ ~ ~$(mapTextBlocks) run fill ~ ~ ~ ~1 ~3 ~ black_concrete strict
$execute positioned ~ ~17 ~12 positioned ~ ~ ~-$(mapTextBlocks) run fill ~ ~ ~ ~1 ~3 ~ black_concrete strict

# prevent thumbnail structure from overwriting text box area
# why this command works: item structures load in XZY order, from bottom to top, and stop at the end of the size area even when there's more entries
data modify storage item_structures save.size[1] set value 16