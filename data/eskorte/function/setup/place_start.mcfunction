# Start Position setzen
kill @e[type=armor_stand,tag=escort_start]
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["escort_start"],CustomName:{"text":"START","color":"green","bold":true},CustomNameVisible:1b}
setblock ~ ~-1 ~ gold_block

tellraw @s {"text":"Start Position gesetzt!","color":"green"}