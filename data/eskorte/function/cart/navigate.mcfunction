# Aktuelles waypoint_id in #current_wp speichern
execute store result score #current_wp temp run scoreboard players get @s waypoint_id
# execute store result score #current_back_wp temp run scoreboard players get @s waypoint_id

# scoreboard players remove #current_wp temp 1

# Für alle Waypoints mit passender ID:
# execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_back_wp temp at @s if entity @e[type=minecart,tag=escort_cart,distance=..1] if score @e[type=minecart,tag=escort_cart,limit=1,sort=nearest] cart_speed matches 5 run function eskorte:cart/waypoint_back_reached
# execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp at @s if entity @e[type=minecart,tag=escort_cart,distance=..1] if score @e[type=minecart,tag=escort_cart,limit=1,sort=nearest] cart_speed matches 5 run function eskorte:cart/waypoint_back_reached


execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp at @s if entity @e[type=minecart,tag=escort_cart,distance=..1] run function eskorte:cart/waypoint_reached

