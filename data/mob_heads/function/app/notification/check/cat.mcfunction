execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.cat.ambient"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/cat

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.cat.beg_for_food"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/cat

  execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.cat.purr"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/cat