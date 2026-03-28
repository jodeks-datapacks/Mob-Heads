# Append blank
function mob_heads:image/process/append/blank

data modify storage mob_heads:image data.tellraw append \
  from storage mob_heads:image data.current.description_text

# Append blank
function mob_heads:image/process/append/blank

# Append line_break
execute unless score $index.image_data mob_heads.image = $length mob_heads.image \
  run function mob_heads:image/process/append/line_break

# Remove first element from the description
data remove storage mob_heads:image data.current.description[0]
 