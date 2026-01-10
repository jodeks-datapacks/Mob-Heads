$dialog show @s {\
type:"minecraft:multi_action",\ 
  title:"Mob Heads Drop Messages",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": "Use %s as a placeholder for the entity"\
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_1",\
      label:"Drop message 1",\
      "initial": "$(drop_message_1)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_2",\
      label:"Drop message 2",\
      "initial": "$(drop_message_2)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_3",\
      label:"Drop message 3",\
      "initial": "$(drop_message_3)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_4",\
      label:"Drop message 4",\
      "initial": "$(drop_message_4)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_5",\
      label:"Drop message 5",\
      "initial": "$(drop_message_5)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_6",\
      label:"Drop message 6",\
      "initial": "$(drop_message_6)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_7",\
      label:"Drop message 7",\
      "initial": "$(drop_message_7)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_8",\
      label:"Drop message 8",\
      "initial": "$(drop_message_8)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_9",\
      label:"Drop message 9",\
      "initial": "$(drop_message_9)",\
      "max_length": 200\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_message_10",\
      label:"Drop message 10",\
      "initial": "$(drop_message_10)",\
      "max_length": 200\
    }\
  ],\
  can_close_with_escape:1b,\
  "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mobheads:config/update/update_drop_messages {dialog_drop_message_1:$(dialog_drop_message_1), dialog_drop_message_2:$(dialog_drop_message_2), dialog_drop_message_3:$(dialog_drop_message_3), dialog_drop_message_4:$(dialog_drop_message_4), dialog_drop_message_5:$(dialog_drop_message_5), dialog_drop_message_6:$(dialog_drop_message_6), dialog_drop_message_7:$(dialog_drop_message_7), dialog_drop_message_8:$(dialog_drop_message_8), dialog_drop_message_9:$(dialog_drop_message_9), dialog_drop_message_10:$(dialog_drop_message_10)}"\
    }\
  },\
  actions:[\
    {\
      label:"Save",\
      action:{\
        type:"dynamic/run_command",\
        template:"function mobheads:config/update/update_drop_messages {dialog_drop_message_1:$(dialog_drop_message_1), dialog_drop_message_2:$(dialog_drop_message_2), dialog_drop_message_3:$(dialog_drop_message_3), dialog_drop_message_4:$(dialog_drop_message_4), dialog_drop_message_5:$(dialog_drop_message_5), dialog_drop_message_6:$(dialog_drop_message_6), dialog_drop_message_7:$(dialog_drop_message_7), dialog_drop_message_8:$(dialog_drop_message_8), dialog_drop_message_9:$(dialog_drop_message_9), dialog_drop_message_10:$(dialog_drop_message_10)}"\
      }\
    }\
  ]\
}