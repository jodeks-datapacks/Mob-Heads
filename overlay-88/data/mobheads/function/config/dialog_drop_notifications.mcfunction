$dialog show @s {\
type:"minecraft:multi_action",\ 
  title: {\
    "translate": "mobheads.config.drop_notifications",\
    "fallback": "Drop Notifications"\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mobheads.config.drop_notifications.description",\
        "fallback": "Individually enable or disable drop notifications"\
      },\
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_allay",\
      label: {\
        "translate": "entity.minecraft.allay",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_allay),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_armadillo",\
      label: {\
        "translate": "entity.minecraft.armadillo",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_armadillo),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_axolotl",\
      label: {\
        "translate": "entity.minecraft.axolotl",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_axolotl),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_bat",\
      label: {\
        "translate": "entity.minecraft.bat",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_bat),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_bee",\
      label: {\
        "translate": "entity.minecraft.bee",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_bee),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_blaze",\
      label: {\
        "translate": "entity.minecraft.blaze",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_blaze),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_bogged",\
      label: {\
        "translate": "entity.minecraft.bogged",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_bogged),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_breeze",\
      label: {\
        "translate": "entity.minecraft.breeze",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_breeze),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_camel",\
      label: {\
        "translate": "entity.minecraft.camel",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_camel),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cat",\
      label: {\
        "translate": "entity.minecraft.cat",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_cat),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cave_spider",\
      label: {\
        "translate": "entity.minecraft.cave_spider",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_cave_spider),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_chicken",\
      label: {\
        "translate": "entity.minecraft.chicken",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_chicken),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cod",\
      label: {\
        "translate": "entity.minecraft.cod",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_cod),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_copper_golem",\
      label: {\
        "translate": "entity.minecraft.copper_golem",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_copper_golem),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cow",\
      label: {\
        "translate": "entity.minecraft.cow",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_cow),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_creaking",\
      label: {\
        "translate": "entity.minecraft.creaking",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_creaking),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_creeper",\
      label: {\
        "translate": "entity.minecraft.creeper",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_creeper),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_dolphin",\
      label: {\
        "translate": "entity.minecraft.dolphin",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_dolphin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_donkey",\
      label: {\
        "translate": "entity.minecraft.donkey",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_donkey),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_drowned",\
      label: {\
        "translate": "entity.minecraft.drowned",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_drowned),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_elder_guardian",\
      label: {\
        "translate": "entity.minecraft.elder_guardian",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_elder_guardian),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ender_dragon",\
      label: {\
        "translate": "entity.minecraft.ender_dragon",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_ender_dragon),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_enderman",\
      label: {\
        "translate": "entity.minecraft.enderman",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_enderman),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_endermite",\
      label: {\
        "translate": "entity.minecraft.endermite",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_endermite),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_evoker",\
      label: {\
        "translate": "entity.minecraft.evoker",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_evoker),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_fox",\
      label: {\
        "translate": "entity.minecraft.fox",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_fox),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_frog",\
      label: {\
        "translate": "entity.minecraft.frog",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_frog),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ghast",\
      label: {\
        "translate": "entity.minecraft.ghast",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_ghast),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_glow_squid",\
      label: {\
        "translate": "entity.minecraft.glow_squid",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_glow_squid),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_goat",\
      label: {\
        "translate": "entity.minecraft.goat",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_goat),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_guardian",\
      label: {\
        "translate": "entity.minecraft.guardian",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_guardian),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_happy_ghast",\
      label: {\
        "translate": "entity.minecraft.happy_ghast",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_happy_ghast),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_hoglin",\
      label: {\
        "translate": "entity.minecraft.hoglin",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_hoglin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_horse",\
      label: {\
        "translate": "entity.minecraft.horse",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_horse),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_husk",\
      label: {\
        "translate": "entity.minecraft.husk",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_husk),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_illusioner",\
      label: {\
        "translate": "entity.minecraft.illusioner",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_illusioner),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_iron_golem",\
      label: {\
        "translate": "entity.minecraft.iron_golem",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_iron_golem),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_llama",\
      label: {\
        "translate": "entity.minecraft.llama",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_llama),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_magma_cube",\
      label: {\
        "translate": "entity.minecraft.magma_cube",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_magma_cube),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_mooshroom",\
      label: {\
        "translate": "entity.minecraft.mooshroom",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_mooshroom),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_mooshroom_brown",\
      label: {\
        "translate": "entity.minecraft.mooshroom",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "item.minecraft.firework_star.brown",\
            "fallback": "Brown"\
          },\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_mooshroom_brown),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_mule",\
      label: {\
        "translate": "entity.minecraft.mule",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_mule),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ocelot",\
      label: {\
        "translate": "entity.minecraft.ocelot",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_ocelot),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_panda",\
      label: {\
        "translate": "entity.minecraft.panda",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_panda),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_parrot",\
      label: {\
        "translate": "entity.minecraft.parrot",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_parrot),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_phantom",\
      label: {\
        "translate": "entity.minecraft.phantom",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_phantom),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_pig",\
      label: {\
        "translate": "entity.minecraft.pig",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_pig),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_piglin_brute",\
      label: {\
        "translate": "entity.minecraft.piglin_brute",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_piglin_brute),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_piglin",\
      label: {\
        "translate": "entity.minecraft.piglin",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_piglin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_pillager",\
      label: {\
        "translate": "entity.minecraft.pillager",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_pillager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_polar_bear",\
      label: {\
        "translate": "entity.minecraft.polar_bear",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_polar_bear),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_pufferfish",\
      label: {\
        "translate": "entity.minecraft.pufferfish",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_pufferfish),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_rabbit",\
      label: {\
        "translate": "entity.minecraft.rabbit",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_rabbit),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ravager",\
      label: {\
        "translate": "entity.minecraft.ravager",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_ravager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_salmon",\
      label: {\
        "translate": "entity.minecraft.salmon",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_salmon),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_sheep",\
      label: {\
        "translate": "entity.minecraft.sheep",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_sheep),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_shulker",\
      label: {\
        "translate": "entity.minecraft.shulker",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_shulker),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_silverfish",\
      label: {\
        "translate": "entity.minecraft.silverfish",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_silverfish),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_skeleton_horse",\
      label: {\
        "translate": "entity.minecraft.skeleton_horse",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_skeleton_horse),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_skeleton",\
      label: {\
        "translate": "entity.minecraft.skeleton",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_skeleton),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_slime",\
      label: {\
        "translate": "entity.minecraft.slime",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_slime),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_sniffer",\
      label: {\
        "translate": "entity.minecraft.sniffer",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_sniffer),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_snow_golem",\
      label: {\
        "translate": "entity.minecraft.snow_golem",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_snow_golem),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_spider",\
      label: {\
        "translate": "entity.minecraft.spider",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_spider),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_squid",\
      label: {\
        "translate": "entity.minecraft.squid",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_squid),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_stray",\
      label: {\
        "translate": "entity.minecraft.stray",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_stray),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_strider",\
      label: {\
        "translate": "entity.minecraft.strider",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_strider),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_tadpole",\
      label: {\
        "translate": "entity.minecraft.tadpole",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_tadpole),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_trader_llama",\
      label: {\
        "translate": "entity.minecraft.trader_llama",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_trader_llama),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_tropical_fish",\
      label: {\
        "translate": "entity.minecraft.tropical_fish",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_tropical_fish),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_turtle",\
      label: {\
        "translate": "entity.minecraft.turtle",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_turtle),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_vex",\
      label: {\
        "translate": "entity.minecraft.vex",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_vex),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_villager",\
      label: {\
        "translate": "entity.minecraft.villager",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_villager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_vindicator",\
      label: {\
        "translate": "entity.minecraft.vindicator",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_vindicator),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wandering_trader",\
      label: {\
        "translate": "entity.minecraft.wandering_trader",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_wandering_trader),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_warden",\
      label: {\
        "translate": "entity.minecraft.warden",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_warden),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_witch",\
      label: {\
        "translate": "entity.minecraft.witch",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_witch),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wither",\
      label: {\
        "translate": "entity.minecraft.wither",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_wither),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wither_invulnerable",\
      label: {\
        "translate": "entity.minecraft.wither",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.advancement.collection.boss.wither.invulnerable",\
            "fallback": "Invulnerable"\
          },\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_wither_invulnerable),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wolf",\
      label: {\
        "translate": "entity.minecraft.wolf",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_wolf),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zoglin",\
      label: {\
        "translate": "entity.minecraft.zoglin",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_zoglin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie_horse",\
      label: {\
        "translate": "entity.minecraft.zombie_horse",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_zombie_horse),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie_villager",\
      label: {\
        "translate": "entity.minecraft.zombie_villager",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_zombie_villager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie",\
      label: {\
        "translate": "entity.minecraft.zombie",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_zombie),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombified_piglin",\
      label: {\
        "translate": "entity.minecraft.zombified_piglin",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mobheads.config.drop_notification.label",\
            "fallback": "Drop Notification"\
          }\
        ]\
      },\
      initial:$(drop_notification_zombified_piglin),\
      on_true:"1",\
      on_false:"0"\
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
      template:"function mobheads:config/update/update_drop_notifications {dialog_drop_notification_copper_golem:$(dialog_drop_notification_copper_golem), dialog_drop_notification_allay:$(dialog_drop_notification_allay), dialog_drop_notification_armadillo:$(dialog_drop_notification_armadillo), dialog_drop_notification_axolotl:$(dialog_drop_notification_axolotl), dialog_drop_notification_bat:$(dialog_drop_notification_bat), dialog_drop_notification_bee:$(dialog_drop_notification_bee), dialog_drop_notification_blaze:$(dialog_drop_notification_blaze), dialog_drop_notification_bogged:$(dialog_drop_notification_bogged), dialog_drop_notification_breeze:$(dialog_drop_notification_breeze), dialog_drop_notification_camel:$(dialog_drop_notification_camel), dialog_drop_notification_cat:$(dialog_drop_notification_cat), dialog_drop_notification_cave_spider:$(dialog_drop_notification_cave_spider), dialog_drop_notification_chicken:$(dialog_drop_notification_chicken), dialog_drop_notification_cod:$(dialog_drop_notification_cod), dialog_drop_notification_cow:$(dialog_drop_notification_cow), dialog_drop_notification_creaking:$(dialog_drop_notification_creaking), dialog_drop_notification_creeper:$(dialog_drop_notification_creeper), dialog_drop_notification_dolphin:$(dialog_drop_notification_dolphin), dialog_drop_notification_donkey:$(dialog_drop_notification_donkey), dialog_drop_notification_drowned:$(dialog_drop_notification_drowned), dialog_drop_notification_elder_guardian:$(dialog_drop_notification_elder_guardian), dialog_drop_notification_ender_dragon:$(dialog_drop_notification_ender_dragon), dialog_drop_notification_enderman:$(dialog_drop_notification_enderman), dialog_drop_notification_endermite:$(dialog_drop_notification_endermite), dialog_drop_notification_evoker:$(dialog_drop_notification_evoker), dialog_drop_notification_fox:$(dialog_drop_notification_fox), dialog_drop_notification_frog:$(dialog_drop_notification_frog), dialog_drop_notification_ghast:$(dialog_drop_notification_ghast), dialog_drop_notification_glow_squid:$(dialog_drop_notification_glow_squid), dialog_drop_notification_goat:$(dialog_drop_notification_goat), dialog_drop_notification_guardian:$(dialog_drop_notification_guardian), dialog_drop_notification_happy_ghast:$(dialog_drop_notification_happy_ghast), dialog_drop_notification_hoglin:$(dialog_drop_notification_hoglin), dialog_drop_notification_horse:$(dialog_drop_notification_horse), dialog_drop_notification_husk:$(dialog_drop_notification_husk), dialog_drop_notification_illusioner:$(dialog_drop_notification_illusioner), dialog_drop_notification_iron_golem:$(dialog_drop_notification_iron_golem), dialog_drop_notification_llama:$(dialog_drop_notification_llama), dialog_drop_notification_magma_cube:$(dialog_drop_notification_magma_cube), dialog_drop_notification_mooshroom:$(dialog_drop_notification_mooshroom), dialog_drop_notification_mooshroom_brown:$(dialog_drop_notification_mooshroom_brown), dialog_drop_notification_mule:$(dialog_drop_notification_mule), dialog_drop_notification_ocelot:$(dialog_drop_notification_ocelot), dialog_drop_notification_panda:$(dialog_drop_notification_panda), dialog_drop_notification_parrot:$(dialog_drop_notification_parrot), dialog_drop_notification_phantom:$(dialog_drop_notification_phantom), dialog_drop_notification_pig:$(dialog_drop_notification_pig), dialog_drop_notification_piglin_brute:$(dialog_drop_notification_piglin_brute), dialog_drop_notification_piglin:$(dialog_drop_notification_piglin), dialog_drop_notification_pillager:$(dialog_drop_notification_pillager), dialog_drop_notification_polar_bear:$(dialog_drop_notification_polar_bear), dialog_drop_notification_pufferfish:$(dialog_drop_notification_pufferfish), dialog_drop_notification_rabbit:$(dialog_drop_notification_rabbit), dialog_drop_notification_ravager:$(dialog_drop_notification_ravager), dialog_drop_notification_salmon:$(dialog_drop_notification_salmon), dialog_drop_notification_sheep:$(dialog_drop_notification_sheep), dialog_drop_notification_shulker:$(dialog_drop_notification_shulker), dialog_drop_notification_silverfish:$(dialog_drop_notification_silverfish), dialog_drop_notification_skeleton_horse:$(dialog_drop_notification_skeleton_horse), dialog_drop_notification_skeleton:$(dialog_drop_notification_skeleton), dialog_drop_notification_slime:$(dialog_drop_notification_slime), dialog_drop_notification_sniffer:$(dialog_drop_notification_sniffer), dialog_drop_notification_snow_golem:$(dialog_drop_notification_snow_golem), dialog_drop_notification_spider:$(dialog_drop_notification_spider), dialog_drop_notification_squid:$(dialog_drop_notification_squid), dialog_drop_notification_stray:$(dialog_drop_notification_stray), dialog_drop_notification_strider:$(dialog_drop_notification_strider), dialog_drop_notification_tadpole:$(dialog_drop_notification_tadpole), dialog_drop_notification_trader_llama:$(dialog_drop_notification_trader_llama), dialog_drop_notification_tropical_fish:$(dialog_drop_notification_tropical_fish), dialog_drop_notification_turtle:$(dialog_drop_notification_turtle), dialog_drop_notification_vex:$(dialog_drop_notification_vex), dialog_drop_notification_villager:$(dialog_drop_notification_villager), dialog_drop_notification_vindicator:$(dialog_drop_notification_vindicator), dialog_drop_notification_wandering_trader:$(dialog_drop_notification_wandering_trader), dialog_drop_notification_warden:$(dialog_drop_notification_warden), dialog_drop_notification_witch:$(dialog_drop_notification_witch), dialog_drop_notification_wither:$(dialog_drop_notification_wither), dialog_drop_notification_wither_invulnerable:$(dialog_drop_notification_wither_invulnerable), dialog_drop_notification_wolf:$(dialog_drop_notification_wolf), dialog_drop_notification_zoglin:$(dialog_drop_notification_zoglin), dialog_drop_notification_zombie_horse:$(dialog_drop_notification_zombie_horse), dialog_drop_notification_zombie_villager:$(dialog_drop_notification_zombie_villager), dialog_drop_notification_zombie:$(dialog_drop_notification_zombie), dialog_drop_notification_zombified_piglin:$(dialog_drop_notification_zombified_piglin)}"\
    }\
  },\
  actions:[\
    {\
      label: {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      action:{\
        type:"dynamic/run_command",\
        template:"function mobheads:config/update/update_drop_notifications {dialog_drop_notification_copper_golem:$(dialog_drop_notification_copper_golem), dialog_drop_notification_allay:$(dialog_drop_notification_allay), dialog_drop_notification_armadillo:$(dialog_drop_notification_armadillo), dialog_drop_notification_axolotl:$(dialog_drop_notification_axolotl), dialog_drop_notification_bat:$(dialog_drop_notification_bat), dialog_drop_notification_bee:$(dialog_drop_notification_bee), dialog_drop_notification_blaze:$(dialog_drop_notification_blaze), dialog_drop_notification_bogged:$(dialog_drop_notification_bogged), dialog_drop_notification_breeze:$(dialog_drop_notification_breeze), dialog_drop_notification_camel:$(dialog_drop_notification_camel), dialog_drop_notification_cat:$(dialog_drop_notification_cat), dialog_drop_notification_cave_spider:$(dialog_drop_notification_cave_spider), dialog_drop_notification_chicken:$(dialog_drop_notification_chicken), dialog_drop_notification_cod:$(dialog_drop_notification_cod), dialog_drop_notification_cow:$(dialog_drop_notification_cow), dialog_drop_notification_creaking:$(dialog_drop_notification_creaking), dialog_drop_notification_creeper:$(dialog_drop_notification_creeper), dialog_drop_notification_dolphin:$(dialog_drop_notification_dolphin), dialog_drop_notification_donkey:$(dialog_drop_notification_donkey), dialog_drop_notification_drowned:$(dialog_drop_notification_drowned), dialog_drop_notification_elder_guardian:$(dialog_drop_notification_elder_guardian), dialog_drop_notification_ender_dragon:$(dialog_drop_notification_ender_dragon), dialog_drop_notification_enderman:$(dialog_drop_notification_enderman), dialog_drop_notification_endermite:$(dialog_drop_notification_endermite), dialog_drop_notification_evoker:$(dialog_drop_notification_evoker), dialog_drop_notification_fox:$(dialog_drop_notification_fox), dialog_drop_notification_frog:$(dialog_drop_notification_frog), dialog_drop_notification_ghast:$(dialog_drop_notification_ghast), dialog_drop_notification_glow_squid:$(dialog_drop_notification_glow_squid), dialog_drop_notification_goat:$(dialog_drop_notification_goat), dialog_drop_notification_guardian:$(dialog_drop_notification_guardian), dialog_drop_notification_happy_ghast:$(dialog_drop_notification_happy_ghast), dialog_drop_notification_hoglin:$(dialog_drop_notification_hoglin), dialog_drop_notification_horse:$(dialog_drop_notification_horse), dialog_drop_notification_husk:$(dialog_drop_notification_husk), dialog_drop_notification_illusioner:$(dialog_drop_notification_illusioner), dialog_drop_notification_iron_golem:$(dialog_drop_notification_iron_golem), dialog_drop_notification_llama:$(dialog_drop_notification_llama), dialog_drop_notification_magma_cube:$(dialog_drop_notification_magma_cube), dialog_drop_notification_mooshroom:$(dialog_drop_notification_mooshroom), dialog_drop_notification_mooshroom_brown:$(dialog_drop_notification_mooshroom_brown), dialog_drop_notification_mule:$(dialog_drop_notification_mule), dialog_drop_notification_ocelot:$(dialog_drop_notification_ocelot), dialog_drop_notification_panda:$(dialog_drop_notification_panda), dialog_drop_notification_parrot:$(dialog_drop_notification_parrot), dialog_drop_notification_phantom:$(dialog_drop_notification_phantom), dialog_drop_notification_pig:$(dialog_drop_notification_pig), dialog_drop_notification_piglin_brute:$(dialog_drop_notification_piglin_brute), dialog_drop_notification_piglin:$(dialog_drop_notification_piglin), dialog_drop_notification_pillager:$(dialog_drop_notification_pillager), dialog_drop_notification_polar_bear:$(dialog_drop_notification_polar_bear), dialog_drop_notification_pufferfish:$(dialog_drop_notification_pufferfish), dialog_drop_notification_rabbit:$(dialog_drop_notification_rabbit), dialog_drop_notification_ravager:$(dialog_drop_notification_ravager), dialog_drop_notification_salmon:$(dialog_drop_notification_salmon), dialog_drop_notification_sheep:$(dialog_drop_notification_sheep), dialog_drop_notification_shulker:$(dialog_drop_notification_shulker), dialog_drop_notification_silverfish:$(dialog_drop_notification_silverfish), dialog_drop_notification_skeleton_horse:$(dialog_drop_notification_skeleton_horse), dialog_drop_notification_skeleton:$(dialog_drop_notification_skeleton), dialog_drop_notification_slime:$(dialog_drop_notification_slime), dialog_drop_notification_sniffer:$(dialog_drop_notification_sniffer), dialog_drop_notification_snow_golem:$(dialog_drop_notification_snow_golem), dialog_drop_notification_spider:$(dialog_drop_notification_spider), dialog_drop_notification_squid:$(dialog_drop_notification_squid), dialog_drop_notification_stray:$(dialog_drop_notification_stray), dialog_drop_notification_strider:$(dialog_drop_notification_strider), dialog_drop_notification_tadpole:$(dialog_drop_notification_tadpole), dialog_drop_notification_trader_llama:$(dialog_drop_notification_trader_llama), dialog_drop_notification_tropical_fish:$(dialog_drop_notification_tropical_fish), dialog_drop_notification_turtle:$(dialog_drop_notification_turtle), dialog_drop_notification_vex:$(dialog_drop_notification_vex), dialog_drop_notification_villager:$(dialog_drop_notification_villager), dialog_drop_notification_vindicator:$(dialog_drop_notification_vindicator), dialog_drop_notification_wandering_trader:$(dialog_drop_notification_wandering_trader), dialog_drop_notification_warden:$(dialog_drop_notification_warden), dialog_drop_notification_witch:$(dialog_drop_notification_witch), dialog_drop_notification_wither:$(dialog_drop_notification_wither), dialog_drop_notification_wither_invulnerable:$(dialog_drop_notification_wither_invulnerable), dialog_drop_notification_wolf:$(dialog_drop_notification_wolf), dialog_drop_notification_zoglin:$(dialog_drop_notification_zoglin), dialog_drop_notification_zombie_horse:$(dialog_drop_notification_zombie_horse), dialog_drop_notification_zombie_villager:$(dialog_drop_notification_zombie_villager), dialog_drop_notification_zombie:$(dialog_drop_notification_zombie), dialog_drop_notification_zombified_piglin:$(dialog_drop_notification_zombified_piglin)}"\
      }\
    }\
  ]\
}




