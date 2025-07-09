# Bossbar erstellen
bossbar add minecraft:escort_timer {"text":"Escort Timer","color":"gold"}
bossbar set minecraft:escort_timer color yellow
bossbar set minecraft:escort_timer style progress
bossbar set minecraft:escort_timer max 3000
bossbar set minecraft:escort_timer players @a

# Spiel starten
scoreboard players set #game_state game_state 1
scoreboard players set #game_time escort_timer 3000

# Bossbar aktivieren
bossbar set minecraft:escort_timer players @a
execute store result bossbar minecraft:escort_timer value run scoreboard players get #game_time escort_timer

# Minecart spawnen
execute at @e[type=armor_stand,tag=escort_start] run summon minecart ~ ~ ~ {Tags:["escort_cart"],Invulnerable:1b,NoGravity:1b}
execute at @e[type=armor_stand,tag=escort_start] run summon villager ~ ~1 ~ {Tags:["escort_payload"],PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]}}
execute as @e[type=minecart,tag=escort_cart] run scoreboard players set @s waypoint_id 1
execute as @e[type=minecart,tag=escort_cart] run scoreboard players set @s last_checkpoint 0

# Villiger in Minecart setzen
ride @e[type=villager,tag=escort_payload,limit=1] mount @e[type=minecart,tag=escort_cart,limit=1]

tellraw @a {"text":"Das Escort-Spiel hat begonnen!","color":"gold","bold":true}
title @a title {"text":"ESCORT","color":"gold","bold":true}
title @a subtitle {"text":"Attackers: Eskortiert die Lore zum Ziel!","color":"red"}