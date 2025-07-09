# Hauptlogik für das Minecart

# WICHTIG: Physik-Immunität NACH der Bewegung setzen
data modify entity @s Invulnerable set value 1b
data modify entity @s NoGravity set value 1b
data modify entity @s PushX set value 0.0d
data modify entity @s PushZ set value 0.0d

# Spieler in der Nähe zählen
execute store result score @s attackers_nearby run execute if entity @a[team=attackers,distance=..6]
execute store result score @s defenders_nearby run execute if entity @a[team=defenders,distance=..6]

# Debug
# execute if score @s attackers_nearby matches 1.. run tellraw @a[team=attackers] {"text":"Attackers erkannt!","color":"green"}

# Bewegungslogik basierend auf Teams
execute if score @s attackers_nearby matches 1.. unless score @s defenders_nearby matches 1.. run function eskorte:cart/move_forward
execute unless score @s attackers_nearby matches 1.. if score @s defenders_nearby matches 1.. run function eskorte:cart/move_backward
execute unless score @s attackers_nearby matches 1.. unless score @s defenders_nearby matches 1.. run function eskorte:cart/stop

# Checkpoint Check
function eskorte:cart/check_checkpoint

# Waypoint Navigation
# function eskorte:cart/navigate