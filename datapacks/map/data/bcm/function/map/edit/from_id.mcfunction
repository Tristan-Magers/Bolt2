$tellraw @a ["Loading Map ",{nbt:"maps[$(mapID)].mapName",storage:"maps:list",plain:true}," into Editor..."]

$execute store success score .success .calc positioned 160 -48 160 run function bcm:map/edit with storage maps:list maps[$(mapID)]

$execute if score .success .calc matches 0 run tellraw @a [{color:"red",text:"Error Occured Trying to Load Map "},{nbt:"maps[$(mapID)].mapName",storage:"maps:list",plain:true}," into Editor"]