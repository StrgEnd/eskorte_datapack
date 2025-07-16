# Das fertige Statistik-Buch über Storage erstellen und geben
data modify storage minecraft:stats final_book set value {id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Match Statistics",author:"GameServer",pages:[]}}}

# Seiten aus Storage ins Buch kopieren
data modify storage minecraft:stats final_book.components."minecraft:written_book_content".pages set from storage minecraft:stats pages

# Statistikbuch an alle Spieler im Team "attackers" geben
execute as @a[team=attackers] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Match Statistics",author:"GameServer",pages:[]}}},PickupDelay:0,Owner:[I;0,0,0,0]}
execute as @a[team=attackers] at @s run data modify entity @e[type=item,distance=..1,limit=1,sort=nearest] Item.components."minecraft:written_book_content".pages set from storage minecraft:stats pages
execute as @a[team=attackers] at @s run data modify entity @e[type=item,distance=..1,limit=1,sort=nearest] Owner set from entity @s UUID

# Statistikbuch an alle Spieler im Team "defenders" geben
execute as @a[team=defenders] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Match Statistics",author:"GameServer",pages:[]}}},PickupDelay:0,Owner:[I;0,0,0,0]}
execute as @a[team=defenders] at @s run data modify entity @e[type=item,distance=..1,limit=1,sort=nearest] Item.components."minecraft:written_book_content".pages set from storage minecraft:stats pages
execute as @a[team=defenders] at @s run data modify entity @e[type=item,distance=..1,limit=1,sort=nearest] Owner set from entity @s UUID
