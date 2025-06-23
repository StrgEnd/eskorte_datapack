# Endpunkt setzen
kill @e[tag=eskorte_end]
summon minecraft:armor_stand ~ ~ ~ {Tags:["eskorte_end"],Marker:1b,Invisible:1b,CustomName:'{"text":"Eskorte Ziel"}'}
tellraw @s {"text":"Zielpunkt gesetzt!","color":"green"}