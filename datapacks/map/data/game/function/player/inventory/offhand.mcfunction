function game:player/offhand_correct
advancement revoke @s only game:offhand_detection

# ping location
tellraw @s[scores={delay_ping=300..}] {text:"Ping on cooldown",color:gray}
execute unless score @s delay_ping matches 300.. anchored eyes positioned ^ ^ ^ run function game:player/ping/raycast