scoreboard players set @a mobheads.config 0

$tellraw @s \ 
[\
  "\n",\
  {\
    "text":"Mob Heads Config",\
    "bold":true\
  },\
  "\n\n",\
  {\
    "text":"\u$(drop_notification_check)",\
    "color":"$(drop_notification_check_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function mobheads:app/config/switch/drop_notification/switch_check"\
    }\
  },\
  " Drop notification \n",\
  {\
    "text":"enabling this will display a mob head drop in your chat",\
    "color":"gray"\
  },\
  "\n\n",\
  {\
    "text":"To change the drop rates and rarities:",\
    "color":"white"\
  },\
  "\n",\
  {\
    "text":"Open ",\
    "color":"white"\
  },\
  {\
    "text":"MobHeads/data/mobheads/function/config",\
    "color":"gray",\
    "italic": true\
  },\
  "\n",\
  {\
    "text":"In there, change the values as you like",\
    "color":"dark_gray"\
  }\
]

# "\n\n",\
# {\
#   "text":"\u$(drop_notification_visibility_check)",\
#   "color":"$(drop_notification_visibility_check_color)",\
#   "clickEvent":{\
#     "action":"run_command",\
#     "value":"/function mobheads:app/config/switch/drop_notification_visibility/switch_check"\
#   }\
# },\
# " Everyone can see the notification \n",\
# {\
#   "text":"disabling this will display the notification only for you",\
#   "color":"gray"\
# }