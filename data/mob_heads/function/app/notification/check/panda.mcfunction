execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.panda.ambient"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/panda

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.panda.cant_breed"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/panda

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.panda.sneeze"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/panda