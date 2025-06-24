# End Position setzen  
kill @e[type=armor_stand,tag=escort_end]
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["escort_end"],CustomName:{"text":"ZIEL","color":"blue","bold":true},CustomNameVisible:1b}
setblock ~ ~-1 ~ diamond_block
tellraw @s {"text":"Ziel Position gesetzt!","color":"blue"}