data modify storage mob_heads:root data.entity set value zoglin
function mob_heads:config/drop_messages with storage mob_heads:root data
scoreboard players add &zoglin mob_heads.head_dropped.mob 1
data modify entity @s Item.components."minecraft:custom_data" set value {mob_heads.checked_head:1b}