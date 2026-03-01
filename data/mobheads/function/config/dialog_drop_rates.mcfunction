$dialog show @s {\
type:"minecraft:multi_action",\ 
  title: {\
    "translate": "mobheads.config.drop_rates",\
    "fallback": "Drop Rates"\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mobheads.config.drop_rates.description.1",\
        "fallback": "Drop rates are in decimal, e.g. 0.5 = 50%%",\
        "extra": [\
          "\n",\
          "\n",\
          {\
            "translate": "mobheads.config.drop_rates.description.2",\
            "fallback": "The value in () is the multiplied value"\
          },\
          "\n",\
          {\
            "translate": "mobheads.config.drop_rates.description.3",\
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
      key:"dialog_d_r_multiplier",\
      label: {\
        "translate": "mobheads.config.drop_rate_multiplier",\
        "fallback": "Drop Rate Multiplier"\
      },\
      initial: "$(drop_rate_multiplier)"\
    },\
    {\
      type:"minecraft:text",\
      key:"d_r_allay",\
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
      key:"d_r_armadillo",\
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
      key:"d_r_axolotl",\
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
      key:"d_r_axolotl_blue",\
      label: {\
        "translate": "mobheads.entity.blue_axolotl",\
        "extra": [\
          {\
            "text": " ($(axolotl_blue))"\
          }\
        ]\
      },\
      initial: "$(axolotl_blue_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"d_r_bat",\
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
      key:"d_r_bee",\
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
      key:"d_r_blaze",\
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
      key:"d_r_bogged",\
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
      key:"d_r_breeze",\
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
      key:"d_r_camel",\
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
      key:"d_r_cat",\
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
      key:"d_r_cave_spider",\
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
      key:"d_r_chicken",\
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
      key:"d_r_cod",\
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
      key:"d_r_cow",\
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
      key:"d_r_creaking",\
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
      key:"d_r_creeper",\
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
      key:"d_r_creeper_charged",\
      label: {\
        "translate": "mobheads.entity.charged_creeper",\
        "extra": [\
          {\
            "text": " Charged ($(creeper_charged))"\
          }\
        ]\
      },\
      initial: "$(creeper_charged_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"d_r_dolphin",\
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
      key:"d_r_donkey",\
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
      key:"d_r_drowned",\
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
      key:"d_r_elder_guardian",\
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
      key:"d_r_ender_dragon",\
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
      key:"d_r_enderman",\
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
      key:"d_r_endermite",\
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
      key:"d_r_evoker",\
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
      key:"d_r_fox",\
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
      key:"d_r_frog",\
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
      key:"d_r_ghast",\
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
      key:"d_r_glow_squid",\
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
      key:"d_r_goat",\
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
      key:"d_r_guardian",\
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
      key:"d_r_happy_ghast",\
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
      key:"d_r_hoglin",\
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
      key:"d_r_horse",\
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
      key:"d_r_husk",\
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
      key:"d_r_illusioner",\
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
      key:"d_r_iron_golem",\
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
      key:"d_r_llama",\
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
      key:"d_r_magma_cube",\
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
      key:"d_r_mooshroom",\
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
      key:"d_r_mooshroom_brown",\
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
      key:"d_r_mule",\
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
      key:"d_r_ocelot",\
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
      key:"d_r_panda",\
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
      key:"d_r_panda_special",\
      label: {\
        "translate": "mobheads.entity.special_panda",\
        "extra": [\
          {\
            "text": " Special ($(panda_special))"\
          }\
        ]\
      },\
      initial: "$(panda_special_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"d_r_parrot",\
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
      key:"d_r_phantom",\
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
      key:"d_r_pig",\
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
      key:"d_r_piglin_brute",\
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
      key:"d_r_piglin",\
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
      key:"d_r_pillager",\
      label:" {\
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
      key:"d_r_polar_bear",\
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
      key:"d_r_pufferfish",\
      label:" {\
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
      key:"d_r_rabbit",\
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
      key:"d_r_ravager",\
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
      key:"d_r_salmon",\
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
      key:"d_r_sheep",\
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
      key:"d_r_shulker",\
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
      key:"d_r_silverfish",\
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
      key:"d_r_skeleton_horse",\
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
      key:"d_r_skeleton",\
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
      key:"d_r_slime",\
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
      key:"d_r_sniffer",\
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
      key:"d_r_snow_golem",\
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
      key:"d_r_spider",\
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
      key:"d_r_squid",\
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
      key:"d_r_stray",\
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
      key:"d_r_strider",\
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
      key:"d_r_tadpole",\
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
      key:"d_r_trader_llama",\
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
      key:"d_r_tropical_fish",\
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
      key:"d_r_turtle",\
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
      key:"d_r_vex",\
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
      key:"d_r_villager",\
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
      key:"d_r_vindicator",\
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
      key:"d_r_wandering_trader",\
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
      key:"d_r_warden",\
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
      key:"d_r_witch",\
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
      key:"d_r_wither",\
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
      key:"d_r_wither_invulnerable",\
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
            "text": "($(wither_invulnerable))"\
          }\
        ]\
      },\
      initial: "$(wither_invulnerable_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"d_r_wolf",\
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
      key:"d_r_zoglin",\
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
      key:"d_r_zombie_horse",\
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
      key:"d_r_zombie_villager",\
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
      key:"d_r_zombie",\
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
      key:"d_r_zombified_piglin",\
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
      template:"function mobheads:config/update/update_drop_rates {dialog_d_r_multiplier:$(dialog_d_r_multiplier), d_r_allay:$(d_r_allay), d_r_armadillo:$(d_r_armadillo), d_r_axolotl:$(d_r_axolotl), d_r_axolotl_blue:$(d_r_axolotl_blue), d_r_bat:$(d_r_bat), d_r_bee:$(d_r_bee), d_r_blaze:$(d_r_blaze), d_r_bogged:$(d_r_bogged), d_r_breeze:$(d_r_breeze), d_r_camel:$(d_r_camel), d_r_cat:$(d_r_cat), d_r_cave_spider:$(d_r_cave_spider), d_r_chicken:$(d_r_chicken), d_r_cod:$(d_r_cod), d_r_cow:$(d_r_cow), d_r_creaking:$(d_r_creaking), d_r_creeper:$(d_r_creeper), d_r_creeper_charged:$(d_r_creeper_charged), d_r_dolphin:$(d_r_dolphin), d_r_donkey:$(d_r_donkey), d_r_drowned:$(d_r_drowned), d_r_elder_guardian:$(d_r_elder_guardian), d_r_ender_dragon:$(d_r_ender_dragon), d_r_enderman:$(d_r_enderman), d_r_endermite:$(d_r_endermite), d_r_evoker:$(d_r_evoker), d_r_fox:$(d_r_fox), d_r_frog:$(d_r_frog), d_r_ghast:$(d_r_ghast), d_r_glow_squid:$(d_r_glow_squid), d_r_goat:$(d_r_goat), d_r_guardian:$(d_r_guardian), d_r_happy_ghast:$(d_r_happy_ghast), d_r_hoglin:$(d_r_hoglin), d_r_horse:$(d_r_horse), d_r_husk:$(d_r_husk), d_r_illusioner:$(d_r_illusioner), d_r_iron_golem:$(d_r_iron_golem), d_r_llama:$(d_r_llama), d_r_magma_cube:$(d_r_magma_cube), d_r_mooshroom:$(d_r_mooshroom), d_r_mooshroom_brown:$(d_r_mooshroom_brown), d_r_mule:$(d_r_mule), d_r_ocelot:$(d_r_ocelot), d_r_panda:$(d_r_panda), d_r_panda_special:$(d_r_panda_special), d_r_parrot:$(d_r_parrot), d_r_phantom:$(d_r_phantom), d_r_pig:$(d_r_pig), d_r_piglin_brute:$(d_r_piglin_brute), d_r_piglin:$(d_r_piglin), d_r_pillager:$(d_r_pillager), d_r_polar_bear:$(d_r_polar_bear), d_r_pufferfish:$(d_r_pufferfish), d_r_rabbit:$(d_r_rabbit), d_r_ravager:$(d_r_ravager), d_r_salmon:$(d_r_salmon), d_r_sheep:$(d_r_sheep), d_r_shulker:$(d_r_shulker), d_r_silverfish:$(d_r_silverfish), d_r_skeleton_horse:$(d_r_skeleton_horse), d_r_skeleton:$(d_r_skeleton), d_r_slime:$(d_r_slime), d_r_sniffer:$(d_r_sniffer), d_r_snow_golem:$(d_r_snow_golem), d_r_spider:$(d_r_spider), d_r_squid:$(d_r_squid), d_r_stray:$(d_r_stray), d_r_strider:$(d_r_strider), d_r_tadpole:$(d_r_tadpole), d_r_trader_llama:$(d_r_trader_llama), d_r_tropical_fish:$(d_r_tropical_fish), d_r_turtle:$(d_r_turtle), d_r_vex:$(d_r_vex), d_r_villager:$(d_r_villager), d_r_vindicator:$(d_r_vindicator), d_r_wandering_trader:$(d_r_wandering_trader), d_r_warden:$(d_r_warden), d_r_witch:$(d_r_witch), d_r_wither:$(d_r_wither), d_r_wither_invulnerable:$(d_r_wither_invulnerable), d_r_wolf:$(d_r_wolf), d_r_zoglin:$(d_r_zoglin), d_r_zombie_horse:$(d_r_zombie_horse), d_r_zombie_villager:$(d_r_zombie_villager), d_r_zombie:$(d_r_zombie), d_r_zombified_piglin:$(d_r_zombified_piglin)}"\
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
        template:"function mobheads:config/update/update_drop_rates {dialog_d_r_multiplier:$(dialog_d_r_multiplier), d_r_allay:$(d_r_allay), d_r_armadillo:$(d_r_armadillo), d_r_axolotl:$(d_r_axolotl), d_r_axolotl_blue:$(d_r_axolotl_blue), d_r_bat:$(d_r_bat), d_r_bee:$(d_r_bee), d_r_blaze:$(d_r_blaze), d_r_bogged:$(d_r_bogged), d_r_breeze:$(d_r_breeze), d_r_camel:$(d_r_camel), d_r_cat:$(d_r_cat), d_r_cave_spider:$(d_r_cave_spider), d_r_chicken:$(d_r_chicken), d_r_cod:$(d_r_cod), d_r_cow:$(d_r_cow), d_r_creaking:$(d_r_creaking), d_r_creeper:$(d_r_creeper), d_r_creeper_charged:$(d_r_creeper_charged), d_r_dolphin:$(d_r_dolphin), d_r_donkey:$(d_r_donkey), d_r_drowned:$(d_r_drowned), d_r_elder_guardian:$(d_r_elder_guardian), d_r_ender_dragon:$(d_r_ender_dragon), d_r_enderman:$(d_r_enderman), d_r_endermite:$(d_r_endermite), d_r_evoker:$(d_r_evoker), d_r_fox:$(d_r_fox), d_r_frog:$(d_r_frog), d_r_ghast:$(d_r_ghast), d_r_glow_squid:$(d_r_glow_squid), d_r_goat:$(d_r_goat), d_r_guardian:$(d_r_guardian), d_r_happy_ghast:$(d_r_happy_ghast), d_r_hoglin:$(d_r_hoglin), d_r_horse:$(d_r_horse), d_r_husk:$(d_r_husk), d_r_illusioner:$(d_r_illusioner), d_r_iron_golem:$(d_r_iron_golem), d_r_llama:$(d_r_llama), d_r_magma_cube:$(d_r_magma_cube), d_r_mooshroom:$(d_r_mooshroom), d_r_mooshroom_brown:$(d_r_mooshroom_brown), d_r_mule:$(d_r_mule), d_r_ocelot:$(d_r_ocelot), d_r_panda:$(d_r_panda), d_r_panda_special:$(d_r_panda_special), d_r_parrot:$(d_r_parrot), d_r_phantom:$(d_r_phantom), d_r_pig:$(d_r_pig), d_r_piglin_brute:$(d_r_piglin_brute), d_r_piglin:$(d_r_piglin), d_r_pillager:$(d_r_pillager), d_r_polar_bear:$(d_r_polar_bear), d_r_pufferfish:$(d_r_pufferfish), d_r_rabbit:$(d_r_rabbit), d_r_ravager:$(d_r_ravager), d_r_salmon:$(d_r_salmon), d_r_sheep:$(d_r_sheep), d_r_shulker:$(d_r_shulker), d_r_silverfish:$(d_r_silverfish), d_r_skeleton_horse:$(d_r_skeleton_horse), d_r_skeleton:$(d_r_skeleton), d_r_slime:$(d_r_slime), d_r_sniffer:$(d_r_sniffer), d_r_snow_golem:$(d_r_snow_golem), d_r_spider:$(d_r_spider), d_r_squid:$(d_r_squid), d_r_stray:$(d_r_stray), d_r_strider:$(d_r_strider), d_r_tadpole:$(d_r_tadpole), d_r_trader_llama:$(d_r_trader_llama), d_r_tropical_fish:$(d_r_tropical_fish), d_r_turtle:$(d_r_turtle), d_r_vex:$(d_r_vex), d_r_villager:$(d_r_villager), d_r_vindicator:$(d_r_vindicator), d_r_wandering_trader:$(d_r_wandering_trader), d_r_warden:$(d_r_warden), d_r_witch:$(d_r_witch), d_r_wither:$(d_r_wither), d_r_wither_invulnerable:$(d_r_wither_invulnerable), d_r_wolf:$(d_r_wolf), d_r_zoglin:$(d_r_zoglin), d_r_zombie_horse:$(d_r_zombie_horse), d_r_zombie_villager:$(d_r_zombie_villager), d_r_zombie:$(d_r_zombie), d_r_zombified_piglin:$(d_r_zombified_piglin)}"\
      }\
    }\
  ]\
}




