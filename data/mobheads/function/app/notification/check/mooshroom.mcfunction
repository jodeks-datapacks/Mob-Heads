# red mooshroom variant
execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.eat"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.eat","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run data modify storage mobheads:root entity set value "red mooshroom"

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.eat","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run function mobheads:config/drop_messages with storage mobheads:root

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.eat"}}}] \
  if items entity @s contents player_head run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:1b}

# brown mooshroom variant
execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.convert"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mobheads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.convert","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run data modify storage mobheads:root entity set value "brown mooshroom"

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.convert","minecraft:custom_data":{mobheads.checked_head:0b}}}}] \
  if items entity @s contents player_head run function mobheads:config/drop_messages with storage mobheads:root

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.mooshroom.convert"}}}] \
  if items entity @s contents player_head run data modify entity @s Item.components."minecraft:custom_data" set value {mobheads.checked_head:1b}