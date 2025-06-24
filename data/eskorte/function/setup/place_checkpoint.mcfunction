# Checkpoint platzieren
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["escort_checkpoint","new_checkpoint"]}
setblock ~ ~-1 ~ emerald_block
execute store result score @e[type=armor_stand,tag=new_checkpoint,limit=1] checkpoint_id run execute if entity @e[type=armor_stand,tag=escort_checkpoint]
tag @e[type=armor_stand,tag=new_checkpoint] remove new_checkpoint
tellraw @s {"text":"Checkpoint platziert!","color":"yellow"}
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0 10