execute if score &drop_notification mobheads.config matches 0 run data modify storage mobheads:config drop_notification_check set value 2610
execute if score &drop_notification mobheads.config matches 1 run data modify storage mobheads:config drop_notification_check set value 2611

execute if score &drop_notification mobheads.config matches 0 run data modify storage mobheads:config drop_notification_check_color set value red
execute if score &drop_notification mobheads.config matches 1 run data modify storage mobheads:config drop_notification_check_color set value green

execute if score &drop_notification_visibility mobheads.config matches 0 run data modify storage mobheads:config drop_notification_visibility_check set value 2610
execute if score &drop_notification_visibility mobheads.config matches 1 run data modify storage mobheads:config drop_notification_visibility_check set value 2611

execute if score &drop_notification_visibility mobheads.config matches 0 run data modify storage mobheads:config drop_notification_visibility_check_color set value red
execute if score &drop_notification_visibility mobheads.config matches 1 run data modify storage mobheads:config drop_notification_visibility_check_color set value green