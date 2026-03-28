data modify storage mob_heads:root data.drop_notification set value 1
data modify storage mob_heads:root data.dialog_drop_notification set value "$(dialog_drop_notification)"
scoreboard players set &drop_notification mob_heads.config 1

data modify storage mob_heads:root data.killed_by_player_initial set value 1
data modify storage mob_heads:root data.killed_by_charged_creeper_initial set value 0
data modify storage mob_heads:root data.dialog_killed_by set value "$(dialog_killed_by)"
scoreboard players set &killed_by_player mob_heads.config 1

data modify storage mob_heads:root data.head_drop_advancement set value 2
data modify storage mob_heads:root data.dialog_head_drop_advancement set value "$(dialog_head_drop_advancement)"
scoreboard players set &head_drop_advancement mob_heads.config 2