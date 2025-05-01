# Append blank
function mobheads:image/process/append/blank

data modify storage mobheads:image tellraw append \
  from storage mobheads:image current.description_text

# Append blank
function mobheads:image/process/append/blank

# Append line_break
execute unless score $index.image_data mobheads.image = $length mobheads.image \
  run function mobheads:image/process/append/line_break

# Remove first element from the description
data remove storage mobheads:image current.description[0]
 