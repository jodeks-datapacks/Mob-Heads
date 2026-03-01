$dialog show @s {\
type:"minecraft:multi_action",\ 
  title: {\
    "translate": "mobheads.config.action.drop_messages",\
    "fallback": "Drop Messages"\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mobheads.config.action.drop_messages.description",\
        "fallback": "Use %s as a placeholder for the entity"\
      },\
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_1",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 1"\
          }\
        ]\
      },\
      "initial": "$(drop_message_1)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_2",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 2"\
          }\
        ]\
      },\
      "initial": "$(drop_message_2)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_3",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 3"\
          }\
        ]\
      },\
      "initial": "$(drop_message_3)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_4",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 4"\
          }\
        ]\
      },\
      "initial": "$(drop_message_4)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_5",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 5"\
          }\
        ]\
      },\
      "initial": "$(drop_message_5)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_6",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 6"\
          }\
        ]\
      },\
      "initial": "$(drop_message_6)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_7",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 7"\
          }\
        ]\
      },\
      "initial": "$(drop_message_7)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_8",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 8"\
          }\
        ]\
      },\
      "initial": "$(drop_message_8)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_9",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 9"\
          }\
        ]\
      },\
      "initial": "$(drop_message_9)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_10",\
      label: {\
        "translate": "mobheads.config.action.drop_message",\
        "fallback": "Drop Message",\
        "extra": [\
          {\
            "text": " 10"\
          }\
        ]\
      },\
      "initial": "$(drop_message_10)",\
      "max_length": 200\
    }\
  ],\
  can_close_with_escape:1b,\
  "exit_action": {\
    "label": {\
      "translate": "jodek.save",\
      "fallback": "Save"\
    },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mobheads:config/update/update_drop_messages {dialog_drop_message_1:$(dialog_drop_message_1), dialog_drop_message_2:$(dialog_drop_message_2), dialog_drop_message_3:$(dialog_drop_message_3), dialog_drop_message_4:$(dialog_drop_message_4), dialog_drop_message_5:$(dialog_drop_message_5), dialog_drop_message_6:$(dialog_drop_message_6), dialog_drop_message_7:$(dialog_drop_message_7), dialog_drop_message_8:$(dialog_drop_message_8), dialog_drop_message_9:$(dialog_drop_message_9), dialog_drop_message_10:$(dialog_drop_message_10)}"\
    }\
  },\
  actions:[\
    {\
      label: {\
        "translate": "jodek.config.reset",\
        "fallback": "Reset config"\
      },\
      action:{\
        type:"run_command",\
        command:"function mobheads:config/reset/drop_messages"\
      }\
    }\
  ]\
}