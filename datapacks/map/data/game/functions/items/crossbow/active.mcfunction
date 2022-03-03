title @s[scores={crossbowTime=240}] actionbar [{"text":"","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=228}] actionbar [{"text":"⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=216}] actionbar [{"text":"⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=204}] actionbar [{"text":"⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=192}] actionbar [{"text":"⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=180}] actionbar [{"text":"⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=168}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=156}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=144}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=132}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=120}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=108}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=96}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=84}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=72}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=60}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=48}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=36}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=24}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛⬛","color":"dark_green"}]
title @s[scores={crossbowTime=12}] actionbar [{"text":"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜","color":"gray"},{"text":"⬛","color":"dark_green"}]
title @s[scores={crossbowTime=1}] actionbar [{"text":"","color":"gray"},{"text":"","color":"dark_green"}]

execute as @s[scores={crossbowTime=240}] at @s run tellraw @a [{"selector":"@s"},{"text":" activated","color":"white"},{"text":" CROSSBOW","color":"green"}]

tag @s remove loadedCross

tag @s[scores={crossbowTime=1},nbt={Inventory:{id:"minecraft:crossbow",tag:{Charged:1b}}}] add loadedCross
clear @s[scores={crossbowTime=1},tag=loadedCross] crossbow{Charged:1b}
clear @s[scores={crossbowTime=1},tag=!loadedCross] crossbow 1
scoreboard players set @s[scores={crossbowTime=1}] crossbowReload 0
scoreboard players remove @s[scores={crossbowTime=1..}] crossbowTime 1


