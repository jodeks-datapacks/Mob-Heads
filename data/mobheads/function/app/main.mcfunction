scoreboard players enable @a mobheads.config
execute as @a[scores={mobheads.config=1..}] run \
 function mobheads:config/dialog_config with storage mobheads:root

execute as @a[scores={mobheads.mined_creaking_heart=1..}] run function mobheads:app/notification/run/creaking

scoreboard players enable @a get_mob_head
execute as @a[scores={get_mob_head=1..}] run function mobheads:app/get_mob_head/get_mob_head_dialog