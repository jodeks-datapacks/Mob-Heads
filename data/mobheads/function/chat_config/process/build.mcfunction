# init array
data remove storage config_system:mobheads menu
data modify storage config_system:mobheads menu set value []

# Add title
# Line break
function mobheads:chat_config/process/append/handle/line_break

$data modify storage config_system:mobheads menu append value {text:"$(title)",bold:true}

# Line break
function mobheads:chat_config/process/append/handle/line_break
# Line break
function mobheads:chat_config/process/append/handle/line_break

# Store options in mobheads storage
$data modify storage config_system:mobheads options set value $(options)

scoreboard players set #pagination_enabled chat_config.mobheads 0
# Process options for current page
function mobheads:chat_config/process/options

# pagination type + store data
execute if score #pagination_enabled chat_config.mobheads matches 1 run data modify storage config_system:mobheads pagination set from storage config_system:mobheads options[-1]
execute if score #pagination_enabled chat_config.mobheads matches 1 run data remove storage config_system:mobheads options[-1]

# Get current page from selector
$execute if score #pagination_enabled chat_config.mobheads matches 1 run execute store result score #current_page chat_config.mobheads run scoreboard players get $(target) chat_config.mobheads.page

# Ensure current page is at least 1
execute if score #pagination_enabled chat_config.mobheads matches 1 run execute if score #current_page chat_config.mobheads matches ..0 run scoreboard players set #current_page chat_config.mobheads 1

# copy of all options
data modify storage config_system:mobheads all_options set from storage config_system:mobheads options

# Filter options for current page
function mobheads:chat_config/process/filter_options

# Add pagination
execute if score #pagination_enabled chat_config.mobheads matches 1 run function mobheads:chat_config/process/pagination

# Display
$tellraw $(target) {nbt:"menu[]",storage:"config_system:mobheads",interpret:true,separator:""}