# Minecart vorwärts bewegen
scoreboard players set @s cart_speed 5

function eskorte:cart/navigate_back

# Macht den Villager traurig/böse (nur alle 30 ticks = weniger häufig)
execute as @e[type=villager,tag=escort_payload] if predicate eskorte:random_mid run particle minecraft:angry_villager ~ ~2 ~ 0.3 0.3 0.3 0.05 1 force
execute as @e[type=villager,tag=escort_payload] if predicate eskorte:random_low run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 0.3 0.7

execute store result score #last_cp temp run scoreboard players get @s last_checkpoint

# Nächsten Waypoint finden
execute store result score #current_wp temp run scoreboard players get @s waypoint_id

# Debug-Ausgabe
# tellraw @a ["",{"text":"Rückwärts: WP=","color":"yellow"},{"score":{"name":"#current_wp","objective":"temp"},"color":"white"},{"text":" LastCP=","color":"yellow"},{"score":{"name":"#last_cp","objective":"temp"},"color":"white"}]


# Zum nächsten Waypoint navigieren
execute as @e[type=armor_stand,tag=escort_waypoint] if score @s waypoint_id = #current_wp temp run function eskorte:cart/move_to_waypoint

scoreboard players add #last_cp temp 1

execute if score #current_wp temp = #last_cp temp run function eskorte:cart/stop
execute if score #current_wp temp = #last_cp temp run tellraw @a[team=defenders] {"text":"Lore am Checkpoint gestoppt!","color":"blue"}