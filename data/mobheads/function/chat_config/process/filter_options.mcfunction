
# clear options
data remove storage config_system:mobheads options
data modify storage config_system:mobheads options set value []

# Get current page 
scoreboard players operation #current_page chat_config.mobheads = #current_page chat_config.mobheads

# recursive filter options
function mobheads:chat_config/process/filter_options_recursive