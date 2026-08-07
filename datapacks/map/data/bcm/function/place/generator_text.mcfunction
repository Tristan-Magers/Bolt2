# default
data modify block ~ ~ ~ front_text.messages set value [{text:"Item Generator",click_event:{action:"run_command",command:"function bcm:dialog/item_generator"}},"","DEFAULT","SETTINGS"]
execute if score @s bcm_generator_time matches 45 if score @s bcm_generator_warmup matches 5 run return 1

# not default
tag @s add this
data modify block ~ ~ ~ front_text.messages[2] set value ["Item every ",{score:{name:"@n[type=block_display,tag=this]",objective:"bcm_generator_time"}},"s"]
data modify block ~ ~ ~ front_text.messages[3] set value ["Warm-up: ",{score:{name:"@n[type=block_display,tag=this]",objective:"bcm_generator_warmup"}},"s"]
tag @s remove this