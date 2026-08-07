effect give @s slow_falling 1 0 true
execute rotated ~ 0 run summon marker ^ ^ ^-0.28 {Tags:["burst_delay"]}
execute rotated ~ 0 run summon marker ^ ^ ^-0.28 {Tags:["burst_delay"]}
scoreboard players set @s lowgravity 12
tag @s remove is_m_rider2
