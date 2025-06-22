# Spiel starten
scoreboard players set #game_active eskorte_setup 1
scoreboard players set #timer eskorte_timer 6000
function eskorte:setup/spawn_cart
tellraw @a {"text":"Eskorte-Spiel gestartet! 5 Minuten Timer","color":"green"}