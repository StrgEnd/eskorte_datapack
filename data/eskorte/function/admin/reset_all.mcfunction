# Kompletter Reset - Alles zurücksetzen

# Spiel stoppen
scoreboard players set #game_state game_state 0

# Alle Escort-Entities entfernen
kill @e[type=minecart,tag=escort_cart]
kill @e[type=zombie,tag=escort_payload]
kill @e[type=armor_stand,tag=escort_waypoint]
kill @e[type=armor_stand,tag=escort_checkpoint]
kill @e[type=armor_stand,tag=escort_start]
kill @e[type=armor_stand,tag=escort_end]

# Scoreboards zurücksetzen
scoreboard players set #game_time escort_timer 3000
scoreboard players set #max_waypoints waypoint_id 0
scoreboard players reset @a escort_timer
scoreboard players reset @a escort_setup
scoreboard players reset @a waypoint_id
scoreboard players reset @a checkpoint_id
scoreboard players reset @a last_checkpoint
scoreboard players reset @a attackers_nearby
scoreboard players reset @a defenders_nearby
scoreboard players reset @a cart_speed
scoreboard players reset @a temp

# Teams leeren (Spieler bleiben in Teams aber können neu beitreten)
# team empty attackers
# team empty defenders

# Nachricht
tellraw @a {"text":"=== ESCORT SYSTEM KOMPLETT ZURÜCKGESETZT ===","color":"red","bold":true}
tellraw @a {"text":"Alle Waypoints, Checkpoints und Entities wurden entfernt!","color":"yellow"}
tellraw @a {"text":"Setup kann neu gestartet werden mit: /function escort:setup/start","color":"green"}

# Feuerwerk-Effekt
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16711680,255]}]}}}}

