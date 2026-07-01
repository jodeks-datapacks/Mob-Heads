$dialog show @s {\
type:"minecraft:multi_action",\ 
  title: {\
    "translate": "mob_heads.config.drop_rates",\
    "fallback": "Drop Rates"\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.drop_rates.description.1",\
        "fallback": "Drop rates are in decimal, e.g. 0.5 = 50%%",\
        "extra": [\
          "\n",\
          "\n",\
          {\
            "translate": "mob_heads.config.drop_rates.description.2",\
            "fallback": "The value in () is the multiplied value"\
          },\
          "\n",\
          {\
            "translate": "mob_heads.config.drop_rates.description.3",\
            "fallback": "which is used as the actual drop rate"\
          }\
        ]\
      }\
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_rate_multiplier",\
      label: {\
        "translate": "mob_heads.config.drop_rate_multiplier",\
        "fallback": "Drop Rate Multiplier"\
      },\
      initial: "$(drop_rate_multiplier)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_allay",\
      label: {\
        "translate": "entity.minecraft.allay",\
        "extra": [\
          {\
            "text": " ($(allay))"\
          }\
        ]\
      },\
      initial: "$(allay_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_armadillo",\
      label: {\
        "translate": "entity.minecraft.armadillo",\
        "extra": [\
          {\
            "text": " ($(armadillo))"\
          }\
        ]\
      },\
      initial: "$(armadillo_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_axolotl",\
      label: {\
        "translate": "entity.minecraft.axolotl",\
        "extra": [\
          {\
            "text": " ($(axolotl))"\
          }\
        ]\
      },\
      initial: "$(axolotl_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_axolotl_blue",\
      label: {\
        "translate": "item.minecraft.firework_star.blue",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "entity.minecraft.axolotl"\
          },\
          {\
            "text": " ($(axolotl_blue))"\
          }\
        ]\
      },\
      initial: "$(axolotl_blue_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_bat",\
      label: {\
        "translate": "entity.minecraft.bat",\
        "extra": [\
          {\
            "text": " ($(bat))"\
          }\
        ]\
      },\
      initial: "$(bat_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_bee",\
      label: {\
        "translate": "entity.minecraft.bee",\
        "extra": [\
          {\
            "text": " ($(bee))"\
          }\
        ]\
      },\
      initial: "$(bee_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_blaze",\
      label: {\
        "translate": "entity.minecraft.blaze",\
        "extra": [\
          {\
            "text": " ($(blaze))"\
          }\
        ]\
      },\
      initial: "$(blaze_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_bogged",\
      label: {\
        "translate": "entity.minecraft.bogged",\
        "extra": [\
          {\
            "text": " ($(bogged))"\
          }\
        ]\
      },\
      initial: "$(bogged_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_breeze",\
      label: {\
        "translate": "entity.minecraft.breeze",\
        "extra": [\
          {\
            "text": " ($(breeze))"\
          }\
        ]\
      },\
      initial: "$(breeze_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_camel",\
      label: {\
        "translate": "entity.minecraft.camel",\
        "extra": [\
          {\
            "text": " ($(camel))"\
          }\
        ]\
      },\
      initial: "$(camel_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_camel_husk",\
      label: {\
        "translate": "entity.minecraft.camel_husk",\
        "extra": [\
          {\
            "text": " ($(camel_husk))"\
          }\
        ]\
      },\
      initial: "$(camel_husk_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cat",\
      label: {\
        "translate": "entity.minecraft.cat",\
        "extra": [\
          {\
            "text": " ($(cat))"\
          }\
        ]\
      },\
      initial: "$(cat_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cave_spider",\
      label: {\
        "translate": "entity.minecraft.cave_spider",\
        "extra": [\
          {\
            "text": " ($(cave_spider))"\
          }\
        ]\
      },\
      initial: "$(cave_spider_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_chicken",\
      label: {\
        "translate": "entity.minecraft.chicken",\
        "extra": [\
          {\
            "text": " ($(chicken))"\
          }\
        ]\
      },\
      initial: "$(chicken_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cod",\
      label: {\
        "translate": "entity.minecraft.cod",\
        "extra": [\
          {\
            "text": " ($(cod))"\
          }\
        ]\
      },\
      initial: "$(cod_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_copper_golem",\
      label: {\
        "translate": "entity.minecraft.copper_golem",\
        "extra": [\
          {\
            "text": " ($(copper_golem))"\
          }\
        ]\
      },\
      initial: "$(copper_golem_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cow",\
      label: {\
        "translate": "entity.minecraft.cow",\
        "extra": [\
          {\
            "text": " ($(cow))"\
          }\
        ]\
      },\
      initial: "$(cow_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_creaking",\
      label: {\
        "translate": "entity.minecraft.creaking",\
        "extra": [\
          {\
            "text": " ($(creaking))"\
          }\
        ]\
      },\
      initial: "$(creaking_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_creeper",\
      label: {\
        "translate": "entity.minecraft.creeper",\
        "extra": [\
          {\
            "text": " ($(creeper))"\
          }\
        ]\
      },\
      initial: "$(creeper_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_creeper_charged",\
      label: {\
        "translate": "mob_heads.entity.charged_creeper",\
        "fallback": "Charged Creeper",\
        "extra": [\
          {\
            "text": " ($(creeper_charged))"\
          }\
        ]\
      },\
      initial: "$(creeper_charged_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_dolphin",\
      label: {\
        "translate": "entity.minecraft.dolphin",\
        "extra": [\
          {\
            "text": " ($(dolphin))"\
          }\
        ]\
      },\
      initial: "$(dolphin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_donkey",\
      label: {\
        "translate": "entity.minecraft.donkey",\
        "extra": [\
          {\
            "text": " ($(donkey))"\
          }\
        ]\
      },\
      initial: "$(donkey_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_drowned",\
      label: {\
        "translate": "entity.minecraft.drowned",\
        "extra": [\
          {\
            "text": " ($(drowned))"\
          }\
        ]\
      },\
      initial: "$(drowned_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_elder_guardian",\
      label: {\
        "translate": "entity.minecraft.elder_guardian",\
        "extra": [\
          {\
            "text": " ($(elder_guardian))"\
          }\
        ]\
      },\
      initial: "$(elder_guardian_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ender_dragon",\
      label: {\
        "translate": "entity.minecraft.ender_dragon",\
        "extra": [\
          {\
            "text": " ($(ender_dragon))"\
          }\
        ]\
      },\
      initial: "$(ender_dragon_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_enderman",\
      label: {\
        "translate": "entity.minecraft.enderman",\
        "extra": [\
          {\
            "text": " ($(enderman))"\
          }\
        ]\
      },\
      initial: "$(enderman_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_endermite",\
      label: {\
        "translate": "entity.minecraft.endermite",\
        "extra": [\
          {\
            "text": " ($(endermite))"\
          }\
        ]\
      },\
      initial: "$(endermite_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_evoker",\
      label: {\
        "translate": "entity.minecraft.evoker",\
        "extra": [\
          {\
            "text": " ($(evoker))"\
          }\
        ]\
      },\
      initial: "$(evoker_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_fox",\
      label: {\
        "translate": "entity.minecraft.fox",\
        "extra": [\
          {\
            "text": " ($(fox))"\
          }\
        ]\
      },\
      initial: "$(fox_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_frog",\
      label: {\
        "translate": "entity.minecraft.frog",\
        "extra": [\
          {\
            "text": " ($(frog))"\
          }\
        ]\
      },\
      initial: "$(frog_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ghast",\
      label: {\
        "translate": "entity.minecraft.ghast",\
        "extra": [\
          {\
            "text": " ($(ghast))"\
          }\
        ]\
      },\
      initial: "$(ghast_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_glow_squid",\
      label: {\
        "translate": "entity.minecraft.glow_squid",\
        "extra": [\
          {\
            "text": " ($(glow_squid))"\
          }\
        ]\
      },\
      initial: "$(glow_squid_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_goat",\
      label: {\
        "translate": "entity.minecraft.goat",\
        "extra": [\
          {\
            "text": " ($(goat))"\
          }\
        ]\
      },\
      initial: "$(goat_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_guardian",\
      label: {\
        "translate": "entity.minecraft.guardian",\
        "extra": [\
          {\
            "text": " ($(guardian))"\
          }\
        ]\
      },\
      initial: "$(guardian_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_happy_ghast",\
      label: {\
        "translate": "entity.minecraft.happy_ghast",\
        "extra": [\
          {\
            "text": " ($(happy_ghast))"\
          }\
        ]\
      },\
      initial: "$(happy_ghast_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_hoglin",\
      label: {\
        "translate": "entity.minecraft.hoglin",\
        "extra": [\
          {\
            "text": " ($(hoglin))"\
          }\
        ]\
      },\
      initial: "$(hoglin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_horse",\
      label: {\
        "translate": "entity.minecraft.horse",\
        "extra": [\
          {\
            "text": " ($(horse))"\
          }\
        ]\
      },\
      initial: "$(horse_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_husk",\
      label: {\
        "translate": "entity.minecraft.husk",\
        "extra": [\
          {\
            "text": " ($(husk))"\
          }\
        ]\
      },\
      initial: "$(husk_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_illusioner",\
      label: {\
        "translate": "entity.minecraft.illusioner",\
        "extra": [\
          {\
            "text": " ($(illusioner))"\
          }\
        ]\
      },\
      initial: "$(illusioner_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_iron_golem",\
      label: {\
        "translate": "entity.minecraft.iron_golem",\
        "extra": [\
          {\
            "text": " ($(iron_golem))"\
          }\
        ]\
      },\
      initial: "$(iron_golem_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_llama",\
      label: {\
        "translate": "entity.minecraft.llama",\
        "extra": [\
          {\
            "text": " ($(llama))"\
          }\
        ]\
      },\
      initial: "$(llama_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_magma_cube",\
      label: {\
        "translate": "entity.minecraft.magma_cube",\
        "extra": [\
          {\
            "text": " ($(magma_cube))"\
          }\
        ]\
      },\
      initial: "$(magma_cube_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_mooshroom",\
      label: {\
        "translate": "entity.minecraft.mooshroom",\
        "extra": [\
          {\
            "text": " ($(mooshroom))"\
          }\
        ]\
      },\
      initial: "$(mooshroom_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_mooshroom_brown",\
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
            "text": "($(mooshroom_brown))"\
          }\
        ]\
      },\
      initial: "$(mooshroom_brown_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_mule",\
      label: {\
        "translate": "entity.minecraft.mule",\
        "extra": [\
          {\
            "text": " ($(mule))"\
          }\
        ]\
      },\
      initial: "$(mule_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_nautilus",\
      label: {\
        "translate": "entity.minecraft.nautilus",\
        "extra": [\
          {\
            "text": " ($(nautilus))"\
          }\
        ]\
      },\
      initial: "$(nautilus_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ocelot",\
      label: {\
        "translate": "entity.minecraft.ocelot",\
        "extra": [\
          {\
            "text": " ($(ocelot))"\
          }\
        ]\
      },\
      initial: "$(ocelot_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_panda",\
      label: {\
        "translate": "entity.minecraft.panda",\
        "extra": [\
          {\
            "text": " ($(panda))"\
          }\
        ]\
      },\
      initial: "$(panda_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_panda_special",\
      label: {\
        "translate": "mob_heads.entity.special_panda",\
        "fallback": "Special Panda",\
        "extra": [\
          {\
            "text": " ($(panda_special))"\
          }\
        ]\
      },\
      initial: "$(panda_special_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_parched",\
      label: {\
        "translate": "entity.minecraft.parched",\
        "extra": [\
          {\
            "text": " ($(parched))"\
          }\
        ]\
      },\
      initial: "$(parched_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_parrot",\
      label: {\
        "translate": "entity.minecraft.parrot",\
        "extra": [\
          {\
            "text": " ($(parrot))"\
          }\
        ]\
      },\
      initial: "$(parrot_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_phantom",\
      label: {\
        "translate": "entity.minecraft.phantom",\
        "extra": [\
          {\
            "text": " ($(phantom))"\
          }\
        ]\
      },\
      initial: "$(phantom_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_pig",\
      label: {\
        "translate": "entity.minecraft.pig",\
        "extra": [\
          {\
            "text": " ($(pig))"\
          }\
        ]\
      },\
      initial: "$(pig_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_piglin_brute",\
      label: {\
        "translate": "entity.minecraft.piglin_brute",\
        "extra": [\
          {\
            "text": " ($(piglin_brute))"\
          }\
        ]\
      },\
      initial: "$(piglin_brute_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_piglin",\
      label: {\
        "translate": "entity.minecraft.piglin",\
        "extra": [\
          {\
            "text": " ($(piglin))"\
          }\
        ]\
      },\
      initial: "$(piglin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_pillager",\
      label: {\
        "translate": "entity.minecraft.pillager",\
        "extra": [\
          {\
            "text": " ($(pillager))"\
          }\
        ]\
      },\
      initial: "$(pillager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_polar_bear",\
      label: {\
        "translate": "entity.minecraft.polar_bear",\
        "extra": [\
          {\
            "text": " ($(polar_bear))"\
          }\
        ]\
      },\
      initial: "$(polar_bear_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_pufferfish",\
      label: {\
        "translate": "entity.minecraft.pufferfish",\
        "extra": [\
          {\
            "text": " ($(pufferfish))"\
          }\
        ]\
      },\
      initial: "$(pufferfish_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_rabbit",\
      label: {\
        "translate": "entity.minecraft.rabbit",\
        "extra": [\
          {\
            "text": " ($(rabbit))"\
          }\
        ]\
      },\
      initial: "$(rabbit_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ravager",\
      label: {\
        "translate": "entity.minecraft.ravager",\
        "extra": [\
          {\
            "text": " ($(ravager))"\
          }\
        ]\
      },\
      initial: "$(ravager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_salmon",\
      label: {\
        "translate": "entity.minecraft.salmon",\
        "extra": [\
          {\
            "text": " ($(salmon))"\
          }\
        ]\
      },\
      initial: "$(salmon_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_sheep",\
      label: {\
        "translate": "entity.minecraft.sheep",\
        "extra": [\
          {\
            "text": " ($(sheep))"\
          }\
        ]\
      },\
      initial: "$(sheep_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_shulker",\
      label: {\
        "translate": "entity.minecraft.shulker",\
        "extra": [\
          {\
            "text": " ($(shulker))"\
          }\
        ]\
      },\
      initial: "$(shulker_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_silverfish",\
      label: {\
        "translate": "entity.minecraft.silverfish",\
        "extra": [\
          {\
            "text": " ($(silverfish))"\
          }\
        ]\
      },\
      initial: "$(silverfish_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_skeleton_horse",\
      label: {\
        "translate": "entity.minecraft.skeleton_horse",\
        "extra": [\
          {\
            "text": " ($(skeleton_horse))"\
          }\
        ]\
      },\
      initial: "$(skeleton_horse_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_skeleton",\
      label: {\
        "translate": "entity.minecraft.skeleton",\
        "extra": [\
          {\
            "text": " ($(skeleton))"\
          }\
        ]\
      },\
      initial: "$(skeleton_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_slime",\
      label: {\
        "translate": "entity.minecraft.slime",\
        "extra": [\
          {\
            "text": " ($(slime))"\
          }\
        ]\
      },\
      initial: "$(slime_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_sniffer",\
      label: {\
        "translate": "entity.minecraft.sniffer",\
        "extra": [\
          {\
            "text": " ($(sniffer))"\
          }\
        ]\
      },\
      initial: "$(sniffer_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_snow_golem",\
      label: {\
        "translate": "entity.minecraft.snow_golem",\
        "extra": [\
          {\
            "text": " ($(snow_golem))"\
          }\
        ]\
      },\
      initial: "$(snow_golem_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_spider",\
      label: {\
        "translate": "entity.minecraft.spider",\
        "extra": [\
          {\
            "text": " ($(spider))"\
          }\
        ]\
      },\
      initial: "$(spider_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_squid",\
      label: {\
        "translate": "entity.minecraft.squid",\
        "extra": [\
          {\
            "text": " ($(squid))"\
          }\
        ]\
      },\
      initial: "$(squid_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_stray",\
      label: {\
        "translate": "entity.minecraft.stray",\
        "extra": [\
          {\
            "text": " ($(stray))"\
          }\
        ]\
      },\
      initial: "$(stray_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_strider",\
      label: {\
        "translate": "entity.minecraft.strider",\
        "extra": [\
          {\
            "text": " ($(strider))"\
          }\
        ]\
      },\
      initial: "$(strider_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_sulfur_cube",\
      label: {\
        "translate": "entity.minecraft.sulfur_cube",\
        "extra": [\
          {\
            "text": " ($(sulfur_cube))"\
          }\
        ]\
      },\
      initial: "$(sulfur_cube_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_tadpole",\
      label: {\
        "translate": "entity.minecraft.tadpole",\
        "extra": [\
          {\
            "text": " ($(tadpole))"\
          }\
        ]\
      },\
      initial: "$(tadpole_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_trader_llama",\
      label: {\
        "translate": "entity.minecraft.trader_llama",\
        "extra": [\
          {\
            "text": " ($(trader_llama))"\
          }\
        ]\
      },\
      initial: "$(trader_llama_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_tropical_fish",\
      label: {\
        "translate": "entity.minecraft.tropical_fish",\
        "extra": [\
          {\
            "text": " ($(tropical_fish))"\
          }\
        ]\
      },\
      initial: "$(tropical_fish_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_turtle",\
      label: {\
        "translate": "entity.minecraft.turtle",\
        "extra": [\
          {\
            "text": " ($(turtle))"\
          }\
        ]\
      },\
      initial: "$(turtle_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_vex",\
      label: {\
        "translate": "entity.minecraft.vex",\
        "extra": [\
          {\
            "text": " ($(vex))"\
          }\
        ]\
      },\
      initial: "$(vex_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_villager",\
      label: {\
        "translate": "entity.minecraft.villager",\
        "extra": [\
          {\
            "text": " ($(villager))"\
          }\
        ]\
      },\
      initial: "$(villager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_vindicator",\
      label: {\
        "translate": "entity.minecraft.vindicator",\
        "extra": [\
          {\
            "text": " ($(vindicator))"\
          }\
        ]\
      },\
      initial: "$(vindicator_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wandering_trader",\
      label: {\
        "translate": "entity.minecraft.wandering_trader",\
        "extra": [\
          {\
            "text": " ($(wandering_trader))"\
          }\
        ]\
      },\
      initial: "$(wandering_trader_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_warden",\
      label: {\
        "translate": "entity.minecraft.warden",\
        "extra": [\
          {\
            "text": " ($(warden))"\
          }\
        ]\
      },\
      initial: "$(warden_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_witch",\
      label: {\
        "translate": "entity.minecraft.witch",\
        "extra": [\
          {\
            "text": " ($(witch))"\
          }\
        ]\
      },\
      initial: "$(witch_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wither",\
      label: {\
        "translate": "entity.minecraft.wither",\
        "extra": [\
          {\
            "text": " ($(wither))"\
          }\
        ]\
      },\
      initial: "$(wither_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wither_invulnerable",\
      label: {\
        "translate": "entity.minecraft.wither",\
        "extra": [\
          {\
            "text": " "\
          },\
          {\
            "translate": "mob_heads.advancement.collection.boss.wither.invulnerable",\
            "fallback": "Invulnerable"\
          },\
          {\
            "text": " "\
          },\
          {\
            "text": "($(wither_invulnerable))"\
          }\
        ]\
      },\
      initial: "$(wither_invulnerable_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wolf",\
      label: {\
        "translate": "entity.minecraft.wolf",\
        "extra": [\
          {\
            "text": " ($(wolf))"\
          }\
        ]\
      },\
      initial: "$(wolf_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zoglin",\
      label: {\
        "translate": "entity.minecraft.zoglin",\
        "extra": [\
          {\
            "text": " ($(zoglin))"\
          }\
        ]\
      },\
      initial: "$(zoglin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie_horse",\
      label: {\
        "translate": "entity.minecraft.zombie_horse",\
        "extra": [\
          {\
            "text": " ($(zombie_horse))"\
          }\
        ]\
      },\
      initial: "$(zombie_horse_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie_nautilus",\
      label: {\
        "translate": "entity.minecraft.zombie_nautilus",\
        "extra": [\
          {\
            "text": " ($(zombie_nautilus))"\
          }\
        ]\
      },\
      initial: "$(zombie_nautilus_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie_villager",\
      label: {\
        "translate": "entity.minecraft.zombie_villager",\
        "extra": [\
          {\
            "text": " ($(zombie_villager))"\
          }\
        ]\
      },\
      initial: "$(zombie_villager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie",\
      label: {\
        "translate": "entity.minecraft.zombie",\
        "extra": [\
          {\
            "text": " ($(zombie))"\
          }\
        ]\
      },\
      initial: "$(zombie_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombified_piglin",\
      label: {\
        "translate": "entity.minecraft.zombified_piglin",\
        "extra": [\
          {\
            "text": " ($(zombified_piglin))"\
          }\
        ]\
      },\
      initial: "$(zombified_piglin_init)"\
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
      template:"function mob_heads:config/update/update_drop_rates {dialog_drop_rate_multiplier:$(dialog_drop_rate_multiplier), drop_rate_camel_husk:$(drop_rate_camel_husk), drop_rate_parched:$(drop_rate_parched), drop_rate_nautilus:$(drop_rate_nautilus), drop_rate_zombie_nautilus:$(drop_rate_zombie_nautilus), drop_rate_allay:$(drop_rate_allay), drop_rate_armadillo:$(drop_rate_armadillo), drop_rate_axolotl:$(drop_rate_axolotl), drop_rate_axolotl_blue:$(drop_rate_axolotl_blue), drop_rate_bat:$(drop_rate_bat), drop_rate_bee:$(drop_rate_bee), drop_rate_blaze:$(drop_rate_blaze), drop_rate_bogged:$(drop_rate_bogged), drop_rate_breeze:$(drop_rate_breeze), drop_rate_camel:$(drop_rate_camel), drop_rate_cat:$(drop_rate_cat), drop_rate_cave_spider:$(drop_rate_cave_spider), drop_rate_chicken:$(drop_rate_chicken), drop_rate_cod:$(drop_rate_cod), drop_rate_copper_golem:$(drop_rate_copper_golem), drop_rate_cow:$(drop_rate_cow), drop_rate_creaking:$(drop_rate_creaking), drop_rate_creeper:$(drop_rate_creeper), drop_rate_creeper_charged:$(drop_rate_creeper_charged), drop_rate_dolphin:$(drop_rate_dolphin), drop_rate_donkey:$(drop_rate_donkey), drop_rate_drowned:$(drop_rate_drowned), drop_rate_elder_guardian:$(drop_rate_elder_guardian), drop_rate_ender_dragon:$(drop_rate_ender_dragon), drop_rate_enderman:$(drop_rate_enderman), drop_rate_endermite:$(drop_rate_endermite), drop_rate_evoker:$(drop_rate_evoker), drop_rate_fox:$(drop_rate_fox), drop_rate_frog:$(drop_rate_frog), drop_rate_ghast:$(drop_rate_ghast), drop_rate_glow_squid:$(drop_rate_glow_squid), drop_rate_goat:$(drop_rate_goat), drop_rate_guardian:$(drop_rate_guardian), drop_rate_happy_ghast:$(drop_rate_happy_ghast), drop_rate_hoglin:$(drop_rate_hoglin), drop_rate_horse:$(drop_rate_horse), drop_rate_husk:$(drop_rate_husk), drop_rate_illusioner:$(drop_rate_illusioner), drop_rate_iron_golem:$(drop_rate_iron_golem), drop_rate_llama:$(drop_rate_llama), drop_rate_magma_cube:$(drop_rate_magma_cube), drop_rate_mooshroom:$(drop_rate_mooshroom), drop_rate_mooshroom_brown:$(drop_rate_mooshroom_brown), drop_rate_mule:$(drop_rate_mule), drop_rate_ocelot:$(drop_rate_ocelot), drop_rate_panda:$(drop_rate_panda), drop_rate_panda_special:$(drop_rate_panda_special), drop_rate_parrot:$(drop_rate_parrot), drop_rate_phantom:$(drop_rate_phantom), drop_rate_pig:$(drop_rate_pig), drop_rate_piglin_brute:$(drop_rate_piglin_brute), drop_rate_piglin:$(drop_rate_piglin), drop_rate_pillager:$(drop_rate_pillager), drop_rate_polar_bear:$(drop_rate_polar_bear), drop_rate_pufferfish:$(drop_rate_pufferfish), drop_rate_rabbit:$(drop_rate_rabbit), drop_rate_ravager:$(drop_rate_ravager), drop_rate_salmon:$(drop_rate_salmon), drop_rate_sheep:$(drop_rate_sheep), drop_rate_shulker:$(drop_rate_shulker), drop_rate_silverfish:$(drop_rate_silverfish), drop_rate_skeleton_horse:$(drop_rate_skeleton_horse), drop_rate_skeleton:$(drop_rate_skeleton), drop_rate_slime:$(drop_rate_slime), drop_rate_sniffer:$(drop_rate_sniffer), drop_rate_snow_golem:$(drop_rate_snow_golem), drop_rate_spider:$(drop_rate_spider), drop_rate_squid:$(drop_rate_squid), drop_rate_stray:$(drop_rate_stray), drop_rate_strider:$(drop_rate_strider), drop_rate_sulfur_cube:$(drop_rate_sulfur_cube),drop_rate_tadpole:$(drop_rate_tadpole), drop_rate_trader_llama:$(drop_rate_trader_llama), drop_rate_tropical_fish:$(drop_rate_tropical_fish), drop_rate_turtle:$(drop_rate_turtle), drop_rate_vex:$(drop_rate_vex), drop_rate_villager:$(drop_rate_villager), drop_rate_vindicator:$(drop_rate_vindicator), drop_rate_wandering_trader:$(drop_rate_wandering_trader), drop_rate_warden:$(drop_rate_warden), drop_rate_witch:$(drop_rate_witch), drop_rate_wither:$(drop_rate_wither), drop_rate_wither_invulnerable:$(drop_rate_wither_invulnerable), drop_rate_wolf:$(drop_rate_wolf), drop_rate_zoglin:$(drop_rate_zoglin), drop_rate_zombie_horse:$(drop_rate_zombie_horse), drop_rate_zombie_villager:$(drop_rate_zombie_villager), drop_rate_zombie:$(drop_rate_zombie), drop_rate_zombified_piglin:$(drop_rate_zombified_piglin)}"\
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
        command:"function mob_heads:config/reset/drop_rates"\
      }\
    }\
  ]\
}




