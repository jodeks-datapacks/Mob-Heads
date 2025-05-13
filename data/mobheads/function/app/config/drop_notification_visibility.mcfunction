execute if score &afk_invulnerable mobheads.config matches 0 run data modify storage mobheads:config afk_invulnerable_check set value 2610
execute if score &afk_invulnerable mobheads.config matches 1 run data modify storage mobheads:config afk_invulnerable_check set value 2611

execute if score &afk_invulnerable mobheads.config matches 0 run data modify storage mobheads:config afk_invulnerable_check_color set value red
execute if score &afk_invulnerable mobheads.config matches 1 run data modify storage mobheads:config afk_invulnerable_check_color set value green