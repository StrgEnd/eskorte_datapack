# Startpunkt setzen
kill @e[tag=eskorte_start]
summon minecraft:armor_stand ~ ~ ~ {Tags:["eskorte_start"],Marker:1b,Invisible:1b,CustomName:'{"text":"Eskorte Start"}'}
tellraw @s {"text":"Startpunkt gesetzt!","color":"green"}