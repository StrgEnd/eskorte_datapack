# Waypoint erreicht - zum nächsten wechseln
execute as @e[type=minecart,tag=escort_cart] run scoreboard players remove @s waypoint_id 1
tellraw @a[team=defenders] {"text":"Waypoint erreicht!","color":"green"}