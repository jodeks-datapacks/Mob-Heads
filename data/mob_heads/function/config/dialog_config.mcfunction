scoreboard players set @a mob_heads.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  "title": {\
    "translate": "mob_heads.config.title",\
    "fallback": "Mob Heads Config"\
  },\
  body:{\
      type:"minecraft:plain_message",\
      contents: {\
        "translate": "mob_heads.config.description",\
        "fallback": "Make sure to save your changes!"\
      },\
  },\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_killed_by",\
      "label": {\
        "translate": "mob_heads.config.drop_condition",\
        "fallback": "Drop condition"\
      },\
      "options": [\
        {\
          "id": "0",\
          "display": {\
            "translate": "mob_heads.config.drop_condition.charged_creeper",\
            "fallback": "Killed by charged creeper"\
          },\
          "initial": $(killed_by_charged_creeper_initial)\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "mob_heads.config.drop_condition.player",\
            "fallback": "Killed by player"\
          },\
          "initial": $(killed_by_player_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification",\
      label: {\
        "translate": "mob_heads.config.drop_notifications",\
        "fallback": "Drop Notifications"\
      },\
      initial:$(drop_notification),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_head_drop_advancement",\
      label: {\
        "translate": "mob_heads.config.head_drop_advancement",\
        "fallback": "Head Drop Advancements"\
      },\
      initial:$(head_drop_advancement),\
      on_true:"2",\
      on_false:"0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
    "label": {\
      "translate": "jodek.save",\
      "fallback": "Save"\
    },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mob_heads:config/update/update_config {dialog_killed_by:$(dialog_killed_by), dialog_drop_notification:$(dialog_drop_notification), dialog_head_drop_advancement:$(dialog_head_drop_advancement)}"\
    }\
  },\
  actions:[\
    {\
      label: {\
        "translate": "mob_heads.config.set_1",\
        "fallback": "Set drop rates to 100%"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/update/set_1"\
      }\
    },\
    {\
      label: {\
        "translate": "mob_heads.config.drop_rates",\
        "fallback": "Drop Rates"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/dialog_drop_rates with storage mob_heads:root data"\
      }\
    },\
    {\
      label: {\
        "translate": "mob_heads.config.rarity",\
        "fallback": "Rarity (Head Name Color)"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/dialog_rarity with storage mob_heads:root data"\
      }\
    },\
    {\
      label: {\
        "translate": "mob_heads.config.drop_messages",\
        "fallback": "Drop Messages"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/dialog_drop_messages with storage mob_heads:root data"\
      }\
    },\
    {\
      label: {\
        "translate": "mob_heads.config.drop_notifications",\
        "fallback": "Drop Notifications"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/dialog_drop_notifications with storage mob_heads:root data"\
      }\
    },\
    {\
      label: {\
        "translate": "jodek.config.reset",\
        "fallback": "Reset config"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/reset/config"\
      }\
    },\
    {\
      label: {\
        "translate": "jodek.config.reset_all",\
        "fallback": "Reset all configs"\
      },\
      action:{\
        type:"run_command",\
        command:"function mob_heads:config/reset/all"\
      }\
    }\
  ]\
}