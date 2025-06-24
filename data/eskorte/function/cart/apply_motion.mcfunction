# Motion basierend auf Richtung und Geschwindigkeit anwenden

# Einfache Richtungsberechnung - immer konstante Geschwindigkeit
execute if score #diff_x temp matches 50.. run data modify entity @s Motion set value [0.2d, 0.0d, 0.0d]
execute if score #diff_x temp matches ..-50 run data modify entity @s Motion set value [-0.2d, 0.0d, 0.0d]
execute if score #diff_z temp matches 50.. run data modify entity @s Motion set value [0.0d, 0.0d, 0.2d]
execute if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.0d, 0.0d, -0.2d]

# Diagonale Bewegung
execute if score #diff_x temp matches 50.. if score #diff_z temp matches 50.. run data modify entity @s Motion set value [0.15d, 0.0d, 0.15d]
execute if score #diff_x temp matches 50.. if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.15d, 0.0d, -0.15d]
execute if score #diff_x temp matches ..-50 if score #diff_z temp matches 50.. run data modify entity @s Motion set value [-0.15d, 0.0d, 0.15d]
execute if score #diff_x temp matches ..-50 if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [-0.15d, 0.0d, -0.15d]

# Rückwärts langsamer
execute if score @s cart_speed matches 10 run data modify entity @s Motion[0] set value 0.0d
execute if score @s cart_speed matches 10 run data modify entity @s Motion[2] set value 0.0d
execute if score @s cart_speed matches 10 if score #diff_x temp matches ..-50 run data modify entity @s Motion set value [-0.1d, 0.0d, 0.0d]
execute if score @s cart_speed matches 10 if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.0d, 0.0d, -0.1d]