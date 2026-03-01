data modify storage mobheads:root drop_notification set value 1
data modify storage mobheads:root dialog_drop_notification set value "$(dialog_drop_notification)"
scoreboard players set &drop_notification mobheads.config 1

data modify storage mobheads:root killed_by_player_initial set value 1
data modify storage mobheads:root killed_by_charged_creeper_initial set value 0
data modify storage mobheads:root dialog_killed_by set value "$(dialog_killed_by)"
scoreboard players set &killed_by_player mobheads.config 1

data modify storage mobheads:root head_drop_advancement set value 2
data modify storage mobheads:root dialog_head_drop_advancement set value "$(dialog_head_drop_advancement)"
scoreboard players set &head_drop_advancement mobheads.config 2