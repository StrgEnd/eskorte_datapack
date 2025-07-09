# Sneak mit Escort Rail erkennen
execute if predicate eskorte:is_sneaking run scoreboard players add @s temp 1
execute unless predicate eskorte:is_sneaking run scoreboard players set @s temp 0

# Nach 40 Ticks (2 Sekunden) Sneak + Item platzieren
execute if score @s temp matches 40.. at @s run function eskorte:setup/place_waypoint
execute if score @s temp matches 40.. run scoreboard players set @s temp 0

# Feedback für Spieler
execute if score @s temp matches 20 run title @s actionbar {"text":"Halte Sneak + Item...","color":"yellow"}
execute if score @s temp matches 35 run title @s actionbar {"text":"Fast fertig...","color":"gold"}