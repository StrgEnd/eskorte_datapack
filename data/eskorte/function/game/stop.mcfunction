# Spiel beenden
scoreboard players set #game_state game_state 0
kill @e[type=minecart,tag=escort_cart]
kill @e[type=villager,tag=escort_payload]

# Bossbar verstecken
bossbar remove eskorte:timer

tellraw @a {"text":"Escort-Spiel beendet!","color":"red"}