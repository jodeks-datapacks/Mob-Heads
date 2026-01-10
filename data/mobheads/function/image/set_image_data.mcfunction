#> mobheads:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage mobheads:image image_data  
# @writes storage mobheads:image width  
# @writes storage mobheads:image height  
# @writes storage mobheads:image background_color  
# @writes storage mobheads:image description  
# @writes storage mobheads:image pixel_character.blank  
# @writes storage mobheads:image pixel_character.chat  
# @writes storage mobheads:image pixel_character.lore

data remove storage mobheads:image image_data
data remove storage mobheads:image width
data remove storage mobheads:image height
data remove storage mobheads:image background_color
data remove storage mobheads:image description

$data modify storage mobheads:image image_data set value $(image_data)
$data modify storage mobheads:image width set value $(width)
$data modify storage mobheads:image height set value $(height)
$data modify storage mobheads:image background_color set value "$(background_color)"
$data modify storage mobheads:image description set value $(description)

data modify storage mobheads:image pixel_character.blank set value "　"
data modify storage mobheads:image pixel_character.pixel set value "▌▌"
data modify storage mobheads:image pixel_character.line_break set value '\n'

function mobheads:image/process/generate
