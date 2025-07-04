# Lore rückwärts bewegen (langsamer)
scoreboard players set @s cart_speed 5
tellraw @a[team=defenders] {"text":"Lore bewegt sich rückwärts!","color":"blue"}

# Aktuelle Waypoint-ID und letzten Checkpoint holen
execute store result score #current_wp temp run scoreboard players get @s waypoint_id
execute store result score #last_cp temp run scoreboard players get @s last_checkpoint

# Debug-Ausgabe
tellraw @a ["",{"text":"Rückwärts: WP=","color":"yellow"},{"score":{"name":"#current_wp","objective":"temp"},"color":"white"},{"text":" LastCP=","color":"yellow"},{"score":{"name":"#last_cp","objective":"temp"},"color":"white"}]

# Nur rückwärts wenn aktueller WP größer als letzter Checkpoint
execute if score #current_wp temp > #last_cp temp run scoreboard players remove #current_wp temp 1
execute store result score #current_wp temp run scoreboard players get @s waypoint_id

tellraw @a ["",{"text":"Rückwärts: WP=","color":"yellow"},{"score":{"name":"#current_wp","objective":"temp"},"color":"white"},{"text":" LastCP=","color":"yellow"},{"score":{"name":"#last_cp","objective":"temp"},"color":"white"}]

# Rückwärtsbewegung – Ziel-Waypoint bestimmen
execute if score #current_wp temp > #last_cp temp run scoreboard players operation #target_wp temp = #current_wp temp
execute if score #current_wp temp > #last_cp temp run scoreboard players remove #target_wp temp 1
execute if score #current_wp temp > #last_cp temp run scoreboard players operation @s waypoint_id = #target_wp temp


# Zum Ziel-Waypoint bewegen
execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint

# execute if score #current_wp temp > #last_cp temp as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint

# Stoppen wenn am Checkpoint angekommen
execute if score #current_wp temp <= #last_cp temp run function eskorte:cart/stop
execute if score #current_wp temp <= #last_cp temp run tellraw @a[team=defenders] {"text":"Lore am Checkpoint gestoppt!","color":"blue"}
