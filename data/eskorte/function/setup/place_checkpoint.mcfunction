# Checkpoint platzieren - wird automatisch als Waypoint gezählt
scoreboard players add #max_waypoints waypoint_id 1
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["escort_checkpoint","escort_waypoint","new_checkpoint"],CustomName:{"text":"CP","color":"yellow"},CustomNameVisible:1b}
setblock ~ ~-1 ~ emerald_block
execute as @e[type=armor_stand,tag=new_checkpoint] run scoreboard players operation @s waypoint_id = #max_waypoints waypoint_id
execute as @e[type=armor_stand,tag=new_checkpoint] run scoreboard players operation @s checkpoint_id = #max_waypoints waypoint_id
tag @e[type=armor_stand,tag=new_checkpoint] remove new_checkpoint
tellraw @s ["",{"text":"Checkpoint (WP ","color":"yellow"},{"score":{"name":"#max_waypoints","objective":"waypoint_id"},"color":"gold"},{"text":") platziert!","color":"yellow"}]
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0 10

