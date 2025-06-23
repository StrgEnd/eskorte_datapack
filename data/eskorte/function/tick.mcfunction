# Läuft jeden Tick
execute if score #game_active eskorte_setup matches 1 run function eskorte:game/cart_movement
execute if score #game_active eskorte_setup matches 1 run function eskorte:game/check_players
execute if score #game_active eskorte_setup matches 1 run function eskorte:game/win_condition

# Interaktionsschutz - verhindert das Schieben der Lore
execute as @e[tag=eskorte_cart] at @s run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute as @e[tag=eskorte_cart] run data modify entity @s Invulnerable set value 1b