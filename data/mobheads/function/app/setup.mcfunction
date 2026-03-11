#> mobheads:app/setup
# Called on load

# Set scoreboard objectives
  scoreboard objectives add mobheads.config trigger
  scoreboard objectives add mobheads.image dummy
  scoreboard objectives add mobheads.check dummy
  scoreboard objectives add mobheads.drop_notification dummy
  scoreboard objectives add mobheads.random dummy
  scoreboard objectives add shulkertwoshells.check dummy
  scoreboard objectives add mobheads.rarity dummy
  scoreboard objectives add mobheads.killed.mob dummy
  scoreboard objectives add mobheads.head_dropped.mob dummy
  scoreboard objectives add mobheads.drop_rates dummy
  scoreboard objectives add mobheads.mined_creaking_heart mined:creaking_heart
  scoreboard objectives add get_mob_head trigger

# Set scoreboard values
  scoreboard players set @a mobheads.config 0

# Print the image
function mobheads:config/image

scoreboard objectives add jodek.loaded dummy
scoreboard players set &mobheads jodek.loaded 1

function mobheads:config/set_default
schedule function mobheads:config/set_dependencies 2s