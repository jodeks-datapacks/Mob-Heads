#> mobheads:image/process/generate
#
# This function generates the image data.

data modify storage mobheads:image current.image_data set from storage mobheads:image image_data
data modify storage mobheads:image current.description set from storage mobheads:image description
data modify storage mobheads:image current.pixel_character set from storage mobheads:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data mobheads.image 0
# Set width
execute store result score $width mobheads.image run data get storage mobheads:image width
# Set height
execute store result score $height mobheads.image run data get storage mobheads:image height
# Set length
scoreboard players operation $length mobheads.image = $width mobheads.image
scoreboard players operation $length mobheads.image *= $height mobheads.image
# Clear remaining entries in tellraw
data remove storage mobheads:image tellraw

# Add spacing on top
function mobheads:image/process/append/line_break
# Loop over image data
function mobheads:image/process/loop_over_image_data
# Add spacing on bottom
function mobheads:image/process/append/line_break