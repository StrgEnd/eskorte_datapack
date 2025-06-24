# Bewegung zum spezifischen Waypoint
execute store result score #wp_x temp run data get entity @s Pos[0] 100
execute store result score #wp_z temp run data get entity @s Pos[2] 100
execute as @e[type=minecart,tag=escort_cart] store result score #cart_x temp run data get entity @s Pos[0] 100
execute as @e[type=minecart,tag=escort_cart] store result score #cart_z temp run data get entity @s Pos[2] 100

# Richtungsberechnung
scoreboard players operation #diff_x temp = #wp_x temp
scoreboard players operation #diff_x temp -= #cart_x temp
scoreboard players operation #diff_z temp = #wp_z temp
scoreboard players operation #diff_z temp -= #cart_z temp

# Bewegung setzen basierend auf Richtung und Geschwindigkeit
execute as @e[type=minecart,tag=escort_cart] run function eskorte:cart/apply_motion