scoreboard players set @a mobheads.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  "title": {\
    "translate": "mobheads.config.title",\
    "fallback": "Mob Heads Config"\
  },\
  body:{\
      type:"minecraft:plain_message",\
      contents: {\
        "translate": "mobheads.config.description",\
        "fallback": "Make sure to save your changes!"\
      },\
  },\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_killed_by",\
      "label": {\
        "translate": "mobheads.config.drop_condition",\
        "fallback": "Drop condition"\
      },\
      "options": [\
        {\
          "id": "0",\
          "display": {\
            "translate": "mobheads.config.drop_condition.killed_by_charged_creeper",\
            "fallback": "Killed by charged creeper"\
          },\
          "initial": $(killed_by_charged_creeper_initial)\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "mobheads.config.drop_condition.killed_by_player",\
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
        "translate": "mobheads.config.drop_notifications",\
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
        "translate": "mobheads.config.head_drop_advancement",\
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
      template:"function mobheads:config/update/update_config {dialog_killed_by:$(dialog_killed_by), dialog_drop_notification:$(dialog_drop_notification), dialog_head_drop_advancement:$(dialog_head_drop_advancement)}"\
    }\
  },\
  actions:[\
    {\
      label: {\
        "translate": "mobheads.config.drop_rates",\
        "fallback": "Drop Rates"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_drop_rates with storage mobheads:root"\
      }\
    },\
    {\
      label: {\
        "translate": "mobheads.config.rarity",\
        "fallback": "Rarity (Head Name Color)"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_rarity with storage mobheads:root"\
      }\
    },\
    {\
      label: {\
        "translate": "mobheads.config.drop_messages",\
        "fallback": "Drop Messages"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_drop_messages with storage mobheads:root"\
      }\
    },\
    {\
      label: {\
        "translate": "mobheads.config.drop_notifications",\
        "fallback": "Drop Notifications"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_drop_notifications with storage mobheads:root"\
      }\
    },\
    {\
      label: {\
        "translate": "mobheads.config.get_all_head_advancements",\
        "fallback": "Get all head advancements"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:app/advancement/grant_all_heads"\
      }\
    },\
    {\
      label: {\
        "translate": "mobheads.config.reset_all_head_advancements",\
        "fallback": "Reset all head advancements"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:app/advancement/revoke_all_heads"\
      }\
    }\
  ]\
}