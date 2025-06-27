# Checkpoint erreicht - speichert Waypoint-ID als letzten Checkpoint
execute as @e[type=minecart,tag=escort_cart] run scoreboard players operation @s last_checkpoint = @e[type=armor_stand,tag=escort_checkpoint,limit=1,sort=nearest] waypoint_id
tellraw @a ["",{"text":"Checkpoint ","color":"yellow"},{"score":{"name":"@e[type=armor_stand,tag=escort_checkpoint,limit=1,sort=nearest]","objective":"waypoint_id"},"color":"gold"},{"text":" erreicht!","color":"yellow"}]
execute at @e[type=minecart,tag=escort_cart] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5