# Game Tick - Läuft während aktiven Spiels

# Timer countdown
execute if score #game_time escort_timer matches 1.. run scoreboard players remove #game_time escort_timer 1

# Timer Display mit Bossbar
execute store result bossbar minecraft:escort_timer value run scoreboard players get #game_time escort_timer
# title @a actionbar ["",{"text":"Zeit: ","color":"white"},{"score":{"name":"#game_time","objective":"escort_timer"},"color":"yellow"},{"text":"s","color":"white"}]

# Team-Count Display in Actionbar
execute as @e[type=minecart,tag=escort_cart] at @s store result score #att_count temp run execute if entity @a[team=attackers,distance=..6]
execute as @e[type=minecart,tag=escort_cart] at @s store result score #def_count temp run execute if entity @a[team=defenders,distance=..6]
title @a actionbar ["",{"text":"Attackers: ","color":"red"},{"score":{"name":"#att_count","objective":"temp"},"color":"red"},{"text":" | Defenders: ","color":"blue"},{"score":{"name":"#def_count","objective":"temp"},"color":"blue"}]

# Cart Logic
execute as @e[type=minecart,tag=escort_cart] at @s run function eskorte:cart/main

# Win Conditions
execute if score #game_time escort_timer matches 0 run function eskorte:game/defenders_win
execute as @e[type=minecart,tag=escort_cart] at @s if entity @e[type=armor_stand,tag=escort_end,distance=..1] run function eskorte:game/attackers_win
