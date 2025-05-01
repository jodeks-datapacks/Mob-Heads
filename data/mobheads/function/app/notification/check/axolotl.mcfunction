# normal variants
execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.idle_air"}}}] \
  if items entity @s contents player_head run data modify entity @s Item.components.custom_data set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.idle_air","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run function mobheads:app/notification/drop/axolotl

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.idle_air"}}}] \
  if items entity @s contents player_head run data merge entity @s {Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}

# blue variant
execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.attack"}}}] \
  if items entity @s contents player_head run data modify entity @s Item.components.custom_data set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.attack","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run function mobheads:app/notification/drop/axolotl_blue

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.attack"}}}] \
  if items entity @s contents player_head run data merge entity @s {Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}