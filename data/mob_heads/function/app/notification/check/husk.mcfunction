execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.husk.ambient"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/husk

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.husk.converted_to_zombie"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/husk