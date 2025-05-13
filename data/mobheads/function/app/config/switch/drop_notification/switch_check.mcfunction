execute if score @s mobheads.drop_notification matches 0 run function mobheads:app/config/switch/drop_notification/switch_to_1

execute unless score &check mobheads.check matches 1 run scoreboard players set @s mobheads.drop_notification 0

scoreboard players set &check mobheads.check 0


function mobheads:app/triggers/set_config_data with storage mobheads:config