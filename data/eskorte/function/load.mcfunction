# Escort Gamemode Load Function
tellraw @a {"text":"[Escort] Datapack geladen! Version 1.0","color":"green"}

# Scoreboards erstellen
scoreboard objectives add escort_timer dummy "Escort Timer"
scoreboard objectives add escort_setup dummy "Setup Mode"
scoreboard objectives add waypoint_id dummy "Waypoint ID"
scoreboard objectives add checkpoint_id dummy "Checkpoint ID"
scoreboard objectives add last_checkpoint dummy "Last Checkpoint"
scoreboard objectives add attackers_nearby dummy "Attackers Nearby"
scoreboard objectives add defenders_nearby dummy "Defenders Nearby"
scoreboard objectives add cart_speed dummy "Cart Speed"
scoreboard objectives add game_state dummy "Game State"
scoreboard objectives add temp dummy "Temporary"

# Teams erstellen
team add attackers "Attackers"
team modify attackers color red
team modify attackers prefix {"text":"[ATK] ","color":"red"}

team add defenders "Defenders" 
team modify defenders color blue
team modify defenders prefix {"text":"[DEF] ","color":"blue"}

# Globale Variablen
scoreboard players set #game_time escort_timer 3000
scoreboard players set #game_state game_state 0
scoreboard players set #max_waypoints waypoint_id 0
scoreboard players set #cart_base_speed cart_speed 10