# Waypoint platzieren
scoreboard players add #max_waypoints waypoint_id 1
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["escort_waypoint","new_waypoint"]}
setblock ~ ~ ~ rail

execute as @e[type=armor_stand,tag=new_waypoint] run scoreboard players operation @s waypoint_id = #max_waypoints waypoint_id
tag @e[type=armor_stand,tag=new_waypoint] remove new_waypoint

tellraw @s ["",{"text":"Waypoint ","color":"green"},{"score":{"name":"#max_waypoints","objective":"waypoint_id"},"color":"gold"},{"text":" platziert!","color":"green"}]
