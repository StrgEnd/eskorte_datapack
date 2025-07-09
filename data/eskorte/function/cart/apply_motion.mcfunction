# Motion basierend auf Richtung und Geschwindigkeit anwenden

# Debug für Rückwärtsfahrt
execute if score @s cart_speed matches 5 run tellraw @a[team=defenders] {"text":"Applying backward motion","color":"blue"}

# Normale Vorwärts-Bewegung
execute if score @s cart_speed matches 10 if score #diff_x temp matches 50.. run data modify entity @s Motion set value [0.2d, 0.0d, 0.0d]
execute if score @s cart_speed matches 10 if score #diff_x temp matches ..-50 run data modify entity @s Motion set value [-0.2d, 0.0d, 0.0d]
execute if score @s cart_speed matches 10 if score #diff_z temp matches 50.. run data modify entity @s Motion set value [0.0d, 0.0d, 0.2d]
execute if score @s cart_speed matches 10 if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.0d, 0.0d, -0.2d]

# Rückwärts-Bewegung (umgekehrte Richtung)
execute if score @s cart_speed matches 5 if score #diff_x temp matches 50.. run data modify entity @s Motion set value [-0.1d, 0.0d, 0.0d]
execute if score @s cart_speed matches 5 if score #diff_x temp matches ..-50 run data modify entity @s Motion set value [0.1d, 0.0d, 0.0d]
execute if score @s cart_speed matches 5 if score #diff_z temp matches 50.. run data modify entity @s Motion set value [0.0d, 0.0d, -0.1d]
execute if score @s cart_speed matches 5 if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.0d, 0.0d, 0.1d]

# Diagonale Bewegung vorwärts
execute if score @s cart_speed matches 10 if score #diff_x temp matches 50.. if score #diff_z temp matches 50.. run data modify entity @s Motion set value [0.15d, 0.0d, 0.15d]
execute if score @s cart_speed matches 10 if score #diff_x temp matches 50.. if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.15d, 0.0d, -0.15d]
execute if score @s cart_speed matches 10 if score #diff_x temp matches ..-50 if score #diff_z temp matches 50.. run data modify entity @s Motion set value [-0.15d, 0.0d, 0.15d]
execute if score @s cart_speed matches 10 if score #diff_x temp matches ..-50 if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [-0.15d, 0.0d, -0.15d]

# Diagonale Bewegung rückwärts (umgekehrt)
execute if score @s cart_speed matches 5 if score #diff_x temp matches 50.. if score #diff_z temp matches 50.. run data modify entity @s Motion set value [-0.1d, 0.0d, -0.1d]
execute if score @s cart_speed matches 5 if score #diff_x temp matches 50.. if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [-0.1d, 0.0d, 0.1d]
execute if score @s cart_speed matches 5 if score #diff_x temp matches ..-50 if score #diff_z temp matches 50.. run data modify entity @s Motion set value [0.1d, 0.0d, -0.1d]
execute if score @s cart_speed matches 5 if score #diff_x temp matches ..-50 if score #diff_z temp matches ..-50 run data modify entity @s Motion set value [0.1d, 0.0d, 0.1d]
