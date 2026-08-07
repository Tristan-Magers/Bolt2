execute positioned ~1 ~ ~ if block ~ ~ ~ #wall_signs[facing=east] run data modify block ~ ~ ~ front_text.messages set value ["","","",""]
execute positioned ~-1 ~ ~ if block ~ ~ ~ #wall_signs[facing=west] run data modify block ~ ~ ~ front_text.messages set value ["","","",""]
execute positioned ~ ~ ~1 if block ~ ~ ~ #wall_signs[facing=south] run data modify block ~ ~ ~ front_text.messages set value ["","","",""]
execute positioned ~ ~ ~-1 if block ~ ~ ~ #wall_signs[facing=north] run data modify block ~ ~ ~ front_text.messages set value ["","","",""]