# Lore vorwärts bewegen
scoreboard players set @s cart_speed 20

# Nächsten Waypoint finden
execute store result score #current_wp temp run scoreboard players get @s waypoint_id
scoreboard players add #current_wp temp 1

# Zum nächsten Waypoint navigieren
execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint