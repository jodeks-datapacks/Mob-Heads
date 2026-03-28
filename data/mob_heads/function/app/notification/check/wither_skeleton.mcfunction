execute as @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] \
  if items entity @s contents wither_skeleton_skull unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:1b}}}}] run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:0b}

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:0b}}}}] \
  if items entity @s contents wither_skeleton_skull run data modify storage mob_heads:root data.entity set value wither_skeleton

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mob_heads.checked_head:0b}},id:"minecraft:wither_skeleton_skull"}}] \
  if items entity @s contents wither_skeleton_skull run function mob_heads:config/drop_messages with storage mob_heads:root data

execute as @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] \
  if items entity @s contents wither_skeleton_skull run data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:1b}