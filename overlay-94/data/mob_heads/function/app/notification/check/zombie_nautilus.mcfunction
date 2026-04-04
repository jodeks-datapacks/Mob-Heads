execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.zombie_nautilus.ambient"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/zombie_nautilus

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.zombie_nautilus.dash"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/zombie_nautilus