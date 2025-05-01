# Add button
$data modify storage config_system:mobheads menu append value {text:" [$(name)] ",color:"aqua",click_event:{action:"run_command",command:"/$(command)"}}

# Line break
function mobheads:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:mobheads current_option.description run function mobheads:chat_config/process/append/handle/description with storage config_system:mobheads current_option

# Line break
function mobheads:chat_config/process/append/handle/line_break


