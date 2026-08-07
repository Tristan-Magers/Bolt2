# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# Return early to ensure code runs only on the latest available version
execute unless score $bs.load.major load.status matches 3 run return 0
execute unless score $bs.load.minor load.status matches 2 run return 0
execute unless score $bs.load.patch load.status matches 0 run return 0

execute unless function #bs.load:process/validate run return fail

data modify storage bs:ctx _ set value []
data modify storage bs:ctx _ append from storage bs:data load.modules[{enabled:1b}]
data modify storage bs:data load.status set value []
function bs.load:v3.2.0/status/module

tellraw @a [{text:"\n✔ ",color:"#4CCB5E",underlined:true},{text:"BOOKSHELF",bold:true},{text:" • Modules Loaded Successfully\n"}]
tellraw @a [{text:"◇ Loaded Modules: ",color:"#F3B512"},{text:"\n • ",color:"#CCCCCC"},{type:"nbt",storage:"bs:data",nbt:"load.status[]",color:"#CCCCCC",separator:"\n • ",interpret:true},"\n"]
return 1
