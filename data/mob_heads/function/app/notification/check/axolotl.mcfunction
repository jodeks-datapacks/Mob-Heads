execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.idle_air"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/axolotl

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.attack"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/axolotl

execute as @e[type=item,nbt={Item:{components:{"minecraft:note_block_sound":"minecraft:entity.axolotl.idle_water"}}}] \
  if items entity @s contents player_head unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run function mob_heads:app/notification/dropped/axolotl