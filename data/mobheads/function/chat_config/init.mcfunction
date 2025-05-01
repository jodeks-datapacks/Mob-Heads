scoreboard objectives add chat_config.mobheads dummy
scoreboard objectives add chat_config.mobheads.page dummy
# For operator check
scoreboard objectives add operator.check dummy
# Check for operator status
execute as @a store success score @s operator.check run random reset 1 1