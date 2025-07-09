# Aktuelles waypoint_id in #current_wp speichern
execute store result score #current_wp temp run scoreboard players get @s waypoint_id

execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp at @s if entity @e[type=minecart,tag=escort_cart,distance=..1] run function eskorte:cart/waypoint_reached

