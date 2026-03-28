execute if score &mob_heads_load_message jodek.config matches 1 run tellraw @a [\
  {\
    text: "[",\
    color: "#aaaaaa"\
  },\
  {\
    translate: "mob_heads.title", fallback: "Mob Heads",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          "nbt":"tellraw[]",\
          "storage": "mob_heads:image",\
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
          "storage": "mob_heads:image",\
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
          "storage": "mob_heads:image",\
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
          "storage": "mob_heads:image",\
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