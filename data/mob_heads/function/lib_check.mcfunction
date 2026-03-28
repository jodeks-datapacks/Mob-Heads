scoreboard objectives add jodek.installed dummy
scoreboard players set &5555ff_lib jodek.installed 0
execute if function jodek:check run scoreboard players set &5555ff_lib jodek.installed 1

execute if score &5555ff_lib jodek.installed matches 0 run \
tellraw @a [\
  {\
    "text":"[5555ff-lib]",\
    "color":"red",\
    "click_event":{\
      "action":"open_url",\
      "url":"https://modrinth.com/datapack/lib-5555ff"\
    }\
  },\
  " ",\
  {\
    "translate":"jodek.not_installed",\
    "fallback":"Not Installed!",\
    "color":"white",\
    "click_event":{\
      "action":"open_url",\
      "url":"https://modrinth.com/datapack/lib-5555ff"\
    }\
  },\
  " ",\
  {\
    "translate":"jodek.click_to_get_it",\
    "fallback":"click to get it",\
    "color":"gray",\
    "click_event":{\
      "action":"open_url",\
      "url":"https://modrinth.com/datapack/lib-5555ff"\
    }\
  }\
]