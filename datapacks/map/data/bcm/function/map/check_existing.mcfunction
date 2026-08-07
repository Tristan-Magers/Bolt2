# 0 = no map
# 1 = item map
# 2 = non-item map
$execute if data storage maps:list maps[{mapName:"$(mapName)"}].isItemMap run return 1
$execute if data storage maps:list maps[{mapName:"$(mapName)"}] run return 2
return 0