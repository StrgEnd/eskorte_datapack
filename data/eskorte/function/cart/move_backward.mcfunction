# Lore rückwärts bewegen (langsamer)
scoreboard players set @s cart_speed 5
tellraw @a[team=defenders] {"text":"Lore bewegt sich rückwärts!","color":"blue"}

# 1. Aktuelle WP- und Checkpoint-Werte holen
execute store result score #current_wp temp run scoreboard players get @s waypoint_id
execute store result score #last_cp temp run scoreboard players get @s last_checkpoint

# Debug
tellraw @a {"text":"Rückwärts-Debug: Current WP, Last CP","color":"yellow"}

# 2. Prüfen, ob Rückwärtsbewegung erlaubt ist
execute if score #current_wp temp > #last_cp temp run scoreboard players remove #current_wp temp 1

# 3. Falls Bewegung erlaubt war, neuen WP setzen
execute if score #current_wp temp >= #last_cp temp run scoreboard players operation @s waypoint_id = #current_wp temp

# 4. Armor Stand finden und bewegen
execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint

# 5. Stoppen wenn Checkpoint erreicht
execute unless score #current_wp temp > #last_cp temp run function eskorte:cart/stop
