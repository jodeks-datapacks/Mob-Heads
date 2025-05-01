execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.cat.ambient"}}}] \
  if items entity @s contents player_head run data modify entity @s Item.components.custom_data set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.cat.ambient","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run function mobheads:app/notification/drop/cat

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.cat.ambient"}}}] \
  if items entity @s contents player_head run data merge entity @s {Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}