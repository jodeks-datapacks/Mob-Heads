execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.copper_golem.step"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/copper_golem


execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.copper_golem.spin"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/copper_golem


execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.copper_golem_weathered.step"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/copper_golem


execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.copper_golem_oxidized.step"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/copper_golem