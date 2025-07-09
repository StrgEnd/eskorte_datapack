# Setup Tick - Items mit Shift halten erkennen
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{escort_rail:1b}}}}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{escort_rail:1b}}}} run function eskorte:setup/check_rail_use
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{escort_checkpoint:1b}}}}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{escort_checkpoint:1b}}}} run function eskorte:setup/check_checkpoint_use
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{escort_start:1b}}}}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{escort_start:1b}}}} run function eskorte:setup/check_start_use
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{escort_end:1b}}}}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{escort_end:1b}}}} run function eskorte:setup/check_end_use

# Partikel-Vorschau für Setup
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{escort_rail:1b}}}}] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:end_rod ~ ~-1 ~ 0 0 0 0 1