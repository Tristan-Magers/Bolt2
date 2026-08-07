$data modify storage maps:list tmp set from storage maps:list maps[$(map_id)]
function game:menu/rebuild_menu
data remove storage maps:list tmp