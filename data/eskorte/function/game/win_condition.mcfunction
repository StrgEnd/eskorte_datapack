# Sieg-Bedingungen prüfen
execute as @e[tag=eskorte_cart] at @s if entity @e[tag=eskorte_end,distance=1] run function eskorte:game/attackers_win

# Timer runterzählen
scoreboard players remove #timer eskorte_timer 1
execute if score #timer eskorte_timer matches 0 run function eskorte:game/defenders_win
execute if score #timer eskorte_timer matches 600 run tellraw @a {"text":"30 Sekunden verbleibend!","color":"red"}