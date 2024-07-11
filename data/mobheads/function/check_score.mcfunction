# loop function every 2 seconds
schedule function mobheads:check_score 1s

# what drop condition is = always / never / only when killed by player
# tags are head_always_drops.mobheads and head_drops_when_killed_by_player.mobheads

# remove tags if score is 0 so there will no head drop
execute if score &drop_condition mobheads.config matches 0 run function mobheads:remove_tag

execute if score &drop_condition mobheads.config matches 0 run function mobheads:remove_tag

# add tag if score is 1 so heads always drop
execute if score &drop_condition mobheads.config matches 1.. run function mobheads:add_tag_always

# add tag if score is 2 so heads only drop when killed by player
# execute if score &drop_condition mobheads.config matches 2.. run function mobheads:add_tag_killed_by_player





