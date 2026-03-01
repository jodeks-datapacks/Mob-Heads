execute as @e[type=item,nbt={Item:{id:"minecraft:piglin_head"}}] \
  if items entity @s contents piglin_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.piglin.ambient","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents piglin_head run data modify storage mobheads:root entity set value piglin

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.piglin.ambient","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents piglin_head run function mobheads:config/drop_messages with storage mobheads:root

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.piglin.ambient"}}}] \
  if items entity @s contents piglin_head run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:1b}