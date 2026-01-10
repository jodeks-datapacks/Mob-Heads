scoreboard players set @a mobheads.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Mob Heads Config",\
  body:{\
      type:"minecraft:plain_message",\
      contents:"Make sure to save"\
  },\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_killed_by",\
      "label": "Drop condition",\
      "options": [\
        {\
          "id": "0",\
          "display": "Killed by charged creeper",\
          "initial": $(killed_by_charged_creeper_initial)\
        },\
        {\
          "id": "1",\
          "display": "Killed by player",\
          "initial": $(killed_by_player_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification",\
      label:"Drop Notification (Global)",\
      initial:$(drop_notification),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_head_drop_advancement",\
      label:"Head Drop Advancement (Global)",\
      initial:$(head_drop_advancement),\
      on_true:"2",\
      on_false:"0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mobheads:config/update/update_config {dialog_killed_by:$(dialog_killed_by), dialog_drop_notification:$(dialog_drop_notification), dialog_head_drop_advancement:$(dialog_head_drop_advancement)}"\
    }\
  },\
  actions:[\
    {\
      label:"Drop Rates",\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_drop_rates with storage mobheads:root"\
      }\
    },\
    {\
      label:"Rarity (Head Name Color)",\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_rarity with storage mobheads:root"\
      }\
    },\
    {\
      label:"Drop Messages",\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_drop_messages with storage mobheads:root"\
      }\
    },\
    {\
      label:"Drop Notifications",\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/dialog_drop_notifications with storage mobheads:root"\
      }\
    },\
    {\
      label:"Get all head advancements",\
      action:{\
        type:"run_command",\
        command:"function mobheads:app/advancement/grant_all_heads"\
      }\
    },\
    {\
      label:"Reset all head advancements",\
      action:{\
        type:"run_command",\
        command:"function mobheads:app/advancement/revoke_all_heads"\
      }\
    }\
  ]\
}