# Lore vorwärts bewegen
scoreboard players set @s cart_speed 10

function eskorte:cart/navigate

# Nächsten Waypoint finden
execute store result score #current_wp temp run scoreboard players get @s waypoint_id
# scoreboard players add #current_wp temp 1

# Debug-Ausgabe
tellraw @a ["",{"text":"Vorwärts: WP=","color":"yellow"},{"score":{"name":"#current_wp","objective":"temp"},"color":"white"},{"text":" LastCP=","color":"yellow"},{"score":{"name":"#last_cp","objective":"temp"},"color":"white"}]

# Zum nächsten Waypoint navigieren
execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint