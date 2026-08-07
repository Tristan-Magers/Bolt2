# remove old doors
$execute positioned $(load_point) as @e[type=marker,tag=door,dx=$(dx),dy=$(dy),dz=$(dz)] at @s run function bcm:place/delete_door

# place new doors
$execute if data storage bcm tmp.doors[-1] positioned $(load_point) summon marker run function bcm:place/door_auto with storage bcm tmp.doors[-1]
data remove storage bcm tmp