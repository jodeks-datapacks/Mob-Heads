tellraw @s \
[\
  "\n",\
  {\
  text:"[HELP] ",\
    color:"gray"\
  },\
  {\
  text:"Mob Heads\n",\
    "bold":true\
  },\
    "\nConfig: \n",\
  {\
    text:"/trigger mobheads.config\n",\
    click_event:\
      {\
        "action":"copy_to_clipboard",\
        "value":"/trigger mobheads.config"\
      },\
      hover_event:\
      {\
        "action":"show_text",\
        value:"click to copy"\
      },\
    color:"yellow"\
  },\
  "\nTo uninstall run \n",\
  {\
    text:"/function mobheads:uninstall\n",\
    click_event:\
      {\
        "action":"copy_to_clipboard",\
        "value":"/function mobheads:uninstall"\
      },\
      hover_event:\
      {\
        "action":"show_text",\
        value:"click to copy"\
      },\
    color:"yellow"\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
      {\
        "action":"open_url",\
        url:"https://modrinth.com/datapack/mob-heads"\
      },\
    hover_event:\
      {\
        "action":"show_text",\
        value:"modrinth.com/datapack/mob-heads"\
      }\
  },\
  {\
    text:"Modrinth Mob Heads",\
    color:"dark_purple",\
    click_event:\
    {\
      "action":"open_url",\
      url:"https://modrinth.com/datapack/mob-heads"\
    },\
    hover_event:\
    {\
      "action":"show_text",\
      value:"modrinth.com/datapack/mob-heads"\
    }\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
    {\
      "action":"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      "action":"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  {\
    text:"Discord Server",\
    color:"blue",\
    click_event:\
    {\
      "action":"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      "action":"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  " --> for issues, suggestions, questions and news"\
]



