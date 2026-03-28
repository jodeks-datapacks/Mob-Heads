
# normal creeper
  execute as @e[type=item,nbt={Item:{id:"minecraft:creeper_head"}}] \
    if items entity @s contents creeper_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:0b}

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.ambient","minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
    if items entity @s contents creeper_head run data modify storage mob_heads:root data.entity set value creeper

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.ambient","minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
    if items entity @s contents creeper_head run function mob_heads:config/drop_messages with storage mob_heads:root data

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.ambient"}}}] \
    if items entity @s contents creeper_head run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:1b}

# charged creeper
  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.hurt"}}}] \
    if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:0b}

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.hurt","minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
    if items entity @s contents player_head run data modify storage mob_heads:root data.entity set value charged_creeper

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.hurt","minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
    if items entity @s contents player_head run function mob_heads:config/drop_messages with storage mob_heads:root data

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.creeper.hurt"}}}] \
    if items entity @s contents player_head run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:1b}