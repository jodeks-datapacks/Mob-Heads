tellraw @a [\
  "",\
  {\
    text: "[",\
    color: "#aaaaaa"\
  },\
  {\
    translate: "mobheads.title", fallback: "Mob Heads",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          "nbt":"tellraw[]",\
          "storage": "mobheads:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/mob-heads/"\
    }\
  },\
  {\
    text: "]",\
    color: "#aaaaaa",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          "nbt":"tellraw[]",\
          "storage": "mobheads:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/mob-heads/"\
    }\
  },\
  {\
    translate: "jodek.loaded", fallback: " loaded! ",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          "nbt":"tellraw[]",\
          "storage": "mobheads:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/mob-heads/"\
    }\
  },\
  {\
    translate: "jodek.hover_for_more_info", fallback: "hover for more info",\
    color: "#929796",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          "nbt":"tellraw[]",\
          "storage": "mobheads:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/mob-heads/"\
    }\
  }\
]