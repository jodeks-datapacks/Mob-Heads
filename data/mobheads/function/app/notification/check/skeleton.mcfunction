execute as @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull"}}] \
  if items entity @s contents skeleton_skull unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.skeleton.ambient","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents skeleton_skull run data modify storage mobheads:root entity set value skeleton

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.skeleton.ambient","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents skeleton_skull run function mobheads:config/drop_messages with storage mobheads:root

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.skeleton.ambient"}}}] \
  if items entity @s contents skeleton_skull run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:1b}