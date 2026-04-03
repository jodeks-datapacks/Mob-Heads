execute as @e[type=item,nbt={Item:{id:"minecraft:piglin_head"}}] \
  if items entity @s contents piglin_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/piglin

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.piglin.retreat"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/piglin