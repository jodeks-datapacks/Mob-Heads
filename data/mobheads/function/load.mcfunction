tellraw @a ["",{"text":"Mob Heads","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mob-heads"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/mob-heads"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mob-heads/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/mob-heads"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mob-heads"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/mob-heads"}},{"text":" ","hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/mob-heads"}},{"text":"v.2.6.4","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/mob-heads"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/mob-heads"}}]

schedule function mobheads:check_score 2s

# config scoreboard
scoreboard objectives add mobheads.config dummy

# config score for when the heads should be dropped
# 0 = no heads are dropped
# 1 = heads are always dropped (not matter how killed)
# 2 = heads are only dropped when killed by a player
execute as @a unless score &drop_condition mobheads.config = &drop_condition mobheads.config run scoreboard players set &drop_condition mobheads.config 1

scoreboard objectives add help.mobheads trigger