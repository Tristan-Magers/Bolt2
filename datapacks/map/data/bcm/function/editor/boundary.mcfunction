tag @n[sort=arbitrary,type=interaction,tag=!tmp_tped,tag=x,tag=min] add tmp_tp
tag @n[sort=arbitrary,type=interaction,tag=!tmp_tped,tag=x,tag=max] add tmp_tp
tag @n[sort=arbitrary,type=interaction,tag=!tmp_tped,tag=z,tag=min] add tmp_tp
tag @n[sort=arbitrary,type=interaction,tag=!tmp_tped,tag=z,tag=max] add tmp_tp

tp @n[sort=arbitrary,type=interaction,tag=tmp_tp,tag=x,tag=min] 27.51 ~-6 ~
tp @n[sort=arbitrary,type=interaction,tag=tmp_tp,tag=x,tag=max] 484.4999999 ~-6 ~
tp @n[sort=arbitrary,type=interaction,tag=tmp_tp,tag=z,tag=min] ~ ~-6 27.51
tp @n[sort=arbitrary,type=interaction,tag=tmp_tp,tag=z,tag=max] ~ ~-6 484.4999999

tag @e[type=interaction,tag=tmp_tp] add tmp_tped
tag @e[type=interaction] remove tmp_tp

execute unless predicate bcm:in_map_editor_area run function bcm:editor/out_of_bounds