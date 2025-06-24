# Spiel starten
scoreboard players set #game_state game_state 1
scoreboard players set #game_time escort_timer 6000

# Bossbar aktivieren
bossbar set escort:timer players @a
execute store result bossbar escort:timer value run scoreboard players get #game_time escort_timer

# Minecart spawnen
execute at @e[type=armor_stand,tag=escort_start] run summon minecart ~ ~ ~ {Tags:["escort_cart"],Invulnerable:1b,NoGravity:1b}
execute at @e[type=armor_stand,tag=escort_start] run summon villager ~ ~1 ~ {Tags:["escort_payload"],PersistenceRequired:1b,Silent:1b,NoAI:1b}
execute as @e[type=minecart,tag=escort_cart] run scoreboard players set @s waypoint_id 1
execute as @e[type=minecart,tag=escort_cart] run scoreboard players set @s last_checkpoint 0

# Villiger in Minecart setzen
ride @e[type=villager,tag=escort_payload,limit=1] mount @e[type=minecart,tag=escort_cart,limit=1]

tellraw @a {"text":"Das Escort-Spiel hat begonnen!","color":"gold","bold":true}
title @a title {"text":"ESCORT","color":"gold","bold":true}
title @a subtitle {"text":"Attackers: Eskortiert die Lore zum Ziel!","color":"red"}