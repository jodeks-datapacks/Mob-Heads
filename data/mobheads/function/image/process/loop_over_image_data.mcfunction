# Copy current pixel
data modify storage mobheads:image current.pixel_color set \
  from storage mobheads:image current.image_data[0]
data modify storage mobheads:image current.description_text set \
  from storage mobheads:image current.description[0]

scoreboard players add $index.image_data mobheads.image 1

# Calculate column
scoreboard players operation $index.column mobheads.image = $index.image_data mobheads.image
scoreboard players operation $index.column mobheads.image %= $width mobheads.image

# Calculate row
scoreboard players operation $index.row mobheads.image = $index.image_data mobheads.image
scoreboard players operation $index.row mobheads.image /= $width mobheads.image

# Append start spacing
execute if score $index.column mobheads.image matches 1 run \
  function mobheads:image/process/append/blank

# Append colored pixel
execute unless data storage mobheads:image current{pixel_color: ''} run \
  function mobheads:image/process/append/pixel
# Append background pixel
execute if data storage mobheads:image current{pixel_color: ''} run \
  function mobheads:image/process/append/background

# Append description
execute if score $index.column mobheads.image matches 0 run \
    function mobheads:image/process/image_end/description

# Remove first element from the image_data array
data remove storage mobheads:image current.image_data[0]
# Loop over rows
execute if score $index.row mobheads.image < $height mobheads.image run \
  function mobheads:image/process/loop_over_image_data
 