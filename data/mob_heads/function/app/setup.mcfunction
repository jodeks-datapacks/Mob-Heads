#> mob_heads:app/setup
# Called on load

scoreboard objectives add jodek.config dummy
execute unless score &mob_heads_load_message jodek.config = &mob_heads_load_message jodek.config run scoreboard players set &mob_heads_load_message jodek.config 1
execute unless score &mob_heads_advancements jodek.config = &mob_heads_advancements jodek.config run scoreboard players set &mob_heads_advancements jodek.config 1

# Set scoreboard objectives
  scoreboard objectives add mob_heads.config trigger
  scoreboard objectives add mob_heads.image dummy
  scoreboard objectives add mob_heads.check dummy
  scoreboard objectives add mob_heads.drop_notification dummy
  scoreboard objectives add mob_heads.random dummy
  scoreboard objectives add mob_heads.rarity dummy
  scoreboard objectives add mob_heads.killed.mob dummy
  scoreboard objectives add mob_heads.head_dropped.mob dummy
  scoreboard objectives add mob_heads.drop_rates dummy
  scoreboard objectives add mob_heads.mined_creaking_heart mined:creaking_heart
  scoreboard objectives add get_mob_head trigger

# Set scoreboard values
  scoreboard players set @a mob_heads.config 0

# Print the image
function mob_heads:config/image

function mob_heads:config/set_default

schedule function mob_heads:lib_check 1s