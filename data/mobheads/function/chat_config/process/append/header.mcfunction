# Add header
data modify storage config_system:mobheads menu append value {"text":"","color":"white"}
$data modify storage config_system:mobheads menu[-1].text set value "$(name)"

# Line break
function mobheads:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:mobheads current_option.description run function mobheads:chat_config/process/append/handle/description with storage config_system:mobheads current_option

# Line break
function mobheads:chat_config/process/append/handle/line_break


