# Minecart vorwärts bewegen
scoreboard players set @s cart_speed 10

function eskorte:cart/navigate

# Macht den Villager fröhlich (nur alle 20 ticks = 1x pro Sekunde)
execute as @e[type=villager,tag=escort_payload] if predicate eskorte:random_high run particle minecraft:happy_villager ~ ~2 ~ 0.3 0.3 0.3 0.05 1 force
execute as @e[type=villager,tag=escort_payload] if predicate eskorte:random_low run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 0.3 1.3

# Nächsten Waypoint finden
execute store result score #current_wp temp run scoreboard players get @s waypoint_id

# Debug-Ausgabe
# tellraw @a ["",{"text":"Vorwärts: WP=","color":"yellow"},{"score":{"name":"#current_wp","objective":"temp"},"color":"white"},{"text":" LastCP=","color":"yellow"},{"score":{"name":"#last_cp","objective":"temp"},"color":"white"}]

# Zum nächsten Waypoint navigieren
execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint