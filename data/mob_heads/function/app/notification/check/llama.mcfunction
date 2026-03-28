execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.llama.ambient"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.llama.ambient","minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
  if items entity @s contents player_head run data modify storage mob_heads:root data.entity set value llama

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.llama.ambient","minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
  if items entity @s contents player_head run function mob_heads:config/drop_messages with storage mob_heads:root data

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.llama.ambient"}}}] \
  if items entity @s contents player_head run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:1b}