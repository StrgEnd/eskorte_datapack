# Lore rückwärts bewegen (langsamer)
scoreboard players set @s cart_speed 10

# Vorherigen Waypoint finden (aber nicht weiter als letzter Checkpoint)
execute store result score #current_wp temp run scoreboard players get @s waypoint_id
execute store result score #last_cp temp run scoreboard players get @s last_checkpoint

# Nur rückwärts wenn nicht am letzten Checkpoint
execute if score #current_wp temp > #last_cp temp run scoreboard players remove #current_wp temp 1
execute if score #current_wp temp > #last_cp temp as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint