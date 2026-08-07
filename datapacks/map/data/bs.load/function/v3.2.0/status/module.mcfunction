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

data modify storage bs:data load.status append value ["",": ",""]
data modify storage bs:data load.status[-1][0] set from storage bs:ctx _[0].module
data modify storage bs:data load.status[-1][2] set from storage bs:ctx _[0].version

data remove storage bs:ctx _[0]
execute if data storage bs:ctx _[0] run function bs.load:v3.2.0/status/module
