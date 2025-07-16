# Spiel beenden
scoreboard players set #game_state game_state 0
kill @e[type=minecart,tag=escort_cart]
kill @e[type=villager,tag=escort_payload]

function eskorte:stats/generate_stats_book
function eskorte:stats/reset_stats

# Bossbar verstecken
bossbar remove minecraft:escort_timer

tellraw @a {"text":"Escort-Spiel beendet!","color":"red"}