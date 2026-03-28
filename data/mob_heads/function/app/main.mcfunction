scoreboard players enable @a mob_heads.config
execute as @a[scores={mob_heads.config=1..}] run \
 function mob_heads:config/dialog_config with storage mob_heads:root data

execute as @a[scores={mob_heads.mined_creaking_heart=1..}] run function mob_heads:app/notification/run/creaking

scoreboard players enable @a get_mob_head
execute as @a[scores={get_mob_head=1..}] run function mob_heads:app/get_mob_head/get_mob_head_dialog