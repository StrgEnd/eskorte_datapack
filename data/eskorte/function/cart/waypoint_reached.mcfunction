# Waypoint erreicht - zum nächsten wechseln
execute as @e[type=minecart,tag=escort_cart] run scoreboard players add @s waypoint_id 1

# tellraw @a[team=attackers] {"text":"Waypoint erreicht!","color":"green"}