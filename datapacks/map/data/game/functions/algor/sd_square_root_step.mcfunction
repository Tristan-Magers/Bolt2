#
scoreboard players operation .sd_root_t .calc = .sd_root .calc
scoreboard players operation .sd_root_t .calc *= .sd_root_t .calc

execute if score .sd_root_t .calc < .sd .calc run scoreboard players add .sd_root .calc 1

execute if score .sd_root_t .calc < .sd .calc run function game:algor/sd_square_root_step