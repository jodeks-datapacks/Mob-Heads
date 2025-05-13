execute if score @s mobheads.drop_notification matches 0 run data modify storage mobheads:config drop_notification_check set value 2610
execute if score @s mobheads.drop_notification matches 1 run data modify storage mobheads:config drop_notification_check set value 2611

execute if score @s mobheads.drop_notification matches 0 run data modify storage mobheads:config drop_notification_check_color set value red
execute if score @s mobheads.drop_notification matches 1 run data modify storage mobheads:config drop_notification_check_color set value green


execute if score @s mobheads.drop_notification_visibility matches 0 run data modify storage mobheads:config drop_notification_visibility_check set value 2610
execute if score @s mobheads.drop_notification_visibility matches 1 run data modify storage mobheads:config drop_notification_visibility_check set value 2611

execute if score @s mobheads.drop_notification_visibility matches 0 run data modify storage mobheads:config drop_notification_visibility_check_color set value red
execute if score @s mobheads.drop_notification_visibility matches 1 run data modify storage mobheads:config drop_notification_visibility_check_color set value green


function mobheads:app/triggers/mobheads.config with storage mobheads:config

scoreboard players set @a mobheads.config 0