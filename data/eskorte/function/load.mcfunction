# Initialisierung beim Laden des Datapacks
tellraw @a {"text":"Eskorte Datapack geladen!","color":"green"}
scoreboard objectives add eskorte_timer dummy
scoreboard objectives add eskorte_setup dummy
scoreboard objectives add eskorte_checkpoint dummy
scoreboard objectives add eskorte_distance dummy

# Teams erstellen
function eskorte:setup/create_teams

# Info
tellraw @a {"text":"Für das Setup: ","color":"gray"},{"text":"/function eskorte:setup/init","color":"green","clickEvent":{"action":"suggest_command","value":"/function eskorte:setup/init"}}

# Marker für Spielstatus
scoreboard players set #game_active eskorte_setup 0
scoreboard players set #timer eskorte_timer 0
