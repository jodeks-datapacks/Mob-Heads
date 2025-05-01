data modify storage config_system:mobheads menu append value {text:"---------------",color:"gray"}
data modify storage config_system:mobheads menu append value "\n"

# Add current page indicator
data modify storage config_system:mobheads menu append value {text:"Page ",color:"gray"}
data modify storage config_system:mobheads menu append value {score:{"name":"#current_page",objective:"chat_config.mobheads"},color:"white"}
data modify storage config_system:mobheads menu append value " "

# Add previous page button
execute if score #current_page chat_config.mobheads matches 2.. run data modify storage config_system:mobheads menu append value {text:"[◀ Prev]",color:"white",click_event:{action:"run_command",command:"/execute as @s run function mobheads:chat_config/process/append/handle/page_prev"}}
execute if score #current_page chat_config.mobheads matches ..1 run data modify storage config_system:mobheads menu append value {text:"[◀ Prev]",color:"dark_gray"}
data modify storage config_system:mobheads menu append value " "

# Add next page button
execute if score #current_page chat_config.mobheads < #total_pages chat_config.mobheads run data modify storage config_system:mobheads menu append value {text:"[Next ▶]",color:"white",click_event:{action:"run_command",command:"/execute as @s run function mobheads:chat_config/process/append/handle/page_next"}}
execute if score #current_page chat_config.mobheads = #total_pages chat_config.mobheads run data modify storage config_system:mobheads menu append value {text:"[Next ▶]",color:"dark_gray"}

# Add line break
data modify storage config_system:mobheads menu append value "\n"