$scoreboard players set &drop_notification mob_heads.config $(dialog_drop_notification)
$data modify storage mob_heads:root data.drop_notification set value $(dialog_drop_notification)

data modify storage mob_heads:root data.dialog_drop_notification set value "$(dialog_drop_notification)"


$scoreboard players set &head_drop_advancement mob_heads.config $(dialog_head_drop_advancement)
$data modify storage mob_heads:root data.head_drop_advancement set value $(dialog_head_drop_advancement)

data modify storage mob_heads:root data.dialog_head_drop_advancement set value "$(dialog_head_drop_advancement)"

# 1 = player, 0 = charged creeper
$scoreboard players set &killed_by_player mob_heads.config $(dialog_killed_by)
execute if score &killed_by_player mob_heads.config matches 0 run data modify storage mob_heads:root data.killed_by_charged_creeper_initial set value 1
execute if score &killed_by_player mob_heads.config matches 0 run data modify storage mob_heads:root data.killed_by_player_initial set value 0
execute if score &killed_by_player mob_heads.config matches 1 run data modify storage mob_heads:root data.killed_by_charged_creeper_initial set value 0
execute if score &killed_by_player mob_heads.config matches 1 run data modify storage mob_heads:root data.killed_by_player_initial set value 1
