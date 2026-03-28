$dialog show @s {\
type:"minecraft:multi_action",\ 
  title: {\
    "translate": "mob_heads.config.rarity",\
    "fallback": "Rarity (Head Name Color)"\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.rarity.common",\
        "fallback": "0 = common = white",\
        "color": "white",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.rarity.uncommon",\
        "fallback": "1 = uncommon = yellow",\
        "color": "yellow",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.rarity.rare",\
        "fallback": "2 = rare = aqua",\
        "color": "aqua",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.rarity.epic",\
        "fallback": "3 = epic = dark_purple",\
        "color": "dark_purple",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.rarity.legendary",\
        "fallback": "4 = legendary = gold",\
        "color": "gold",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "mob_heads.config.rarity.mythic",\
        "fallback": "5 = mythic = green",\
        "color": "green",\
      }\
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_allay",\
      label: {\
        "translate": "entity.minecraft.allay",\
      },\
      initial: $(rarity_allay)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_armadillo",\
      label: {\
        "translate": "entity.minecraft.armadillo",\
      },\
      initial: $(rarity_armadillo)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_axolotl",\
      label: {\
        "translate": "entity.minecraft.axolotl",\
      },\
      initial: $(rarity_axolotl)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_axolotl_blue",\
      label: {\
        "translate": "mob_heads.entity.blue_axolotl"\
      },\
      initial: $(rarity_axolotl_blue)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_bat",\
      label: {\
        "translate": "entity.minecraft.bat",\
      },\
      initial: $(rarity_bat)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_bee",\
      label: {\
        "translate": "entity.minecraft.bee",\
      },\
      initial: $(rarity_bee)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_blaze",\
      label: {\
        "translate": "entity.minecraft.blaze",\
      },\
      initial: $(rarity_blaze)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_bogged",\
      label: {\
        "translate": "entity.minecraft.bogged",\
      },\
      initial: $(rarity_bogged)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_breeze",\
      label: {\
        "translate": "entity.minecraft.breeze",\
      },\
      initial: $(rarity_breeze)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_camel",\
      label: {\
        "translate": "entity.minecraft.camel",\
      },\
      initial: $(rarity_camel)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cat",\
      label: {\
        "translate": "entity.minecraft.cat",\
      },\
      initial: $(rarity_cat)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cave_spider",\
      label: {\
        "translate": "entity.minecraft.cave_spider",\
      },\
      initial: $(rarity_cave_spider)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_chicken",\
      label: {\
        "translate": "entity.minecraft.chicken",\
      },\
      initial: $(rarity_chicken)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cod",\
      label: {\
        "translate": "entity.minecraft.cod",\
      },\
      initial: $(rarity_cod)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cow",\
      label: {\
        "translate": "entity.minecraft.cow",\
      },\
      initial: $(rarity_cow)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_creaking",\
      label: {\
        "translate": "entity.minecraft.creaking",\
      },\
      initial: $(rarity_creaking)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_creeper",\
      label: {\
        "translate": "entity.minecraft.creeper",\
      },\
      initial: $(rarity_creeper)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_creeper_charged",\
      label: {\
        "translate": "mob_heads.entity.charged_creeper"\
      },\
      initial: $(rarity_creeper_charged)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_dolphin",\
      label: {\
        "translate": "entity.minecraft.dolphin",\
      },\
      initial: $(rarity_dolphin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_donkey",\
      label: {\
        "translate": "entity.minecraft.donkey",\
      },\
      initial: $(rarity_donkey)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_drowned",\
      label: {\
        "translate": "entity.minecraft.drowned",\
      },\
      initial: $(rarity_drowned)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_elder_guardian",\
      label: {\
        "translate": "entity.minecraft.elder_guardian",\
      },\
      initial: $(rarity_elder_guardian)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ender_dragon",\
      label: {\
        "translate": "entity.minecraft.ender_dragon",\
      },\
      initial: $(rarity_ender_dragon)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_enderman",\
      label: {\
        "translate": "entity.minecraft.enderman",\
      },\
      initial: $(rarity_enderman)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_endermite",\
      label: {\
        "translate": "entity.minecraft.endermite",\
      },\
      initial: $(rarity_endermite)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_evoker",\
      label: {\
        "translate": "entity.minecraft.evoker",\
      },\
      initial: $(rarity_evoker)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_fox",\
      label: {\
        "translate": "entity.minecraft.fox",\
      },\
      initial: $(rarity_fox)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_frog",\
      label: {\
        "translate": "entity.minecraft.frog",\
      },\
      initial: $(rarity_frog)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ghast",\
      label: {\
        "translate": "entity.minecraft.ghast",\
      },\
      initial: $(rarity_ghast)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_glow_squid",\
      label: {\
        "translate": "entity.minecraft.glow_squid",\
      },\
      initial: $(rarity_glow_squid)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_goat",\
      label: {\
        "translate": "entity.minecraft.goat",\
      },\
      initial: $(rarity_goat)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_guardian",\
      label: {\
        "translate": "entity.minecraft.guardian",\
      },\
      initial: $(rarity_guardian)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_happy_ghast",\
      label: {\
        "translate": "entity.minecraft.happy_ghast",\
      },\
      initial: $(rarity_happy_ghast)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_hoglin",\
      label: {\
        "translate": "entity.minecraft.hoglin",\
      },\
      initial: $(rarity_hoglin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_horse",\
      label: {\
        "translate": "entity.minecraft.horse",\
      },\
      initial: $(rarity_horse)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_husk",\
      label: {\
        "translate": "entity.minecraft.husk",\
      },\
      initial: $(rarity_husk)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_illusioner",\
      label: {\
        "translate": "entity.minecraft.illusioner",\
      },\
      initial: $(rarity_illusioner)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_iron_golem",\
      label: {\
        "translate": "entity.minecraft.iron_golem",\
      },\
      initial: $(rarity_iron_golem)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_llama",\
      label: {\
        "translate": "entity.minecraft.llama",\
      },\
      initial: $(rarity_llama)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_magma_cube",\
      label: {\
        "translate": "entity.minecraft.magma_cube",\
      },\
      initial: $(rarity_magma_cube)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_mooshroom",\
      label: {\
        "translate": "entity.minecraft.mooshroom",\
      },\
      initial: $(rarity_mooshroom)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_mooshroom_brown",\
      label: {\
        "translate": "entity.minecraft.brown_mooshroom"\
      },\
      initial: $(rarity_mooshroom_brown)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_mule",\
      label: {\
        "translate": "entity.minecraft.mule",\
      },\
      initial: $(rarity_mule)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ocelot",\
      label: {\
        "translate": "entity.minecraft.ocelot",\
      },\
      initial: $(rarity_ocelot)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_panda",\
      label: {\
        "translate": "entity.minecraft.panda",\
      },\
      initial: $(rarity_panda)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_panda_special",\
      label: {\
        "translate": "mob_heads.entity.special_panda"\
      },\
      initial: $(rarity_panda_special)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_parrot",\
      label: {\
        "translate": "entity.minecraft.parrot",\
      },\
      initial: $(rarity_parrot)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_phantom",\
      label: {\
        "translate": "entity.minecraft.phantom",\
      },\
      initial: $(rarity_phantom)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_pig",\
      label: {\
        "translate": "entity.minecraft.pig",\
      },\
      initial: $(rarity_pig)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_piglin_brute",\
      label: {\
        "translate": "entity.minecraft.piglin_brute"\
      },\
      initial: $(rarity_piglin_brute)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_piglin",\
      label: {\
        "translate": "entity.minecraft.piglin",\
      },\
      initial: $(rarity_piglin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_pillager",\
      label: {\
        "translate": "entity.minecraft.pillager",\
      },\
      initial: $(rarity_pillager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_polar_bear",\
      label: {\
        "translate": "entity.minecraft.polar_bear",\
      },\
      initial: $(rarity_polar_bear)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_pufferfish",\
      label: {\
        "translate": "entity.minecraft.pufferfish",\
      },\
      initial: $(rarity_pufferfish)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_rabbit",\
      label: {\
        "translate": "entity.minecraft.rabbit",\
      },\
      initial: $(rarity_rabbit)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ravager",\
      label: {\
        "translate": "entity.minecraft.ravager",\
      },\
      initial: $(rarity_ravager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_salmon",\
      label: {\
        "translate": "entity.minecraft.salmon",\
      },\
      initial: $(rarity_salmon)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_sheep",\
      label: {\
        "translate": "entity.minecraft.sheep",\
      },\
      initial: $(rarity_sheep)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_shulker",\
      label: {\
        "translate": "entity.minecraft.shulker",\
      },\
      initial: $(rarity_shulker)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_silverfish",\
      label: {\
        "translate": "entity.minecraft.silverfish",\
      },\
      initial: $(rarity_silverfish)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_skeleton_horse",\
      label: {\
        "translate": "entity.minecraft.skeleton_horse",\
      },\
      initial: $(rarity_skeleton_horse)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_skeleton",\
      label: {\
        "translate": "entity.minecraft.skeleton",\
      },\
      initial: $(rarity_skeleton)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_slime",\
      label: {\
        "translate": "entity.minecraft.slime",\
      },\
      initial: $(rarity_slime)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_sniffer",\
      label: {\
        "translate": "entity.minecraft.sniffer",\
      },\
      initial: $(rarity_sniffer)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_snow_golem",\
      label: {\
        "translate": "entity.minecraft.snow_golem",\
      },\
      initial: $(rarity_snow_golem)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_spider",\
      label: {\
        "translate": "entity.minecraft.spider",\
      },\
      initial: $(rarity_spider)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_squid",\
      label: {\
        "translate": "entity.minecraft.squid",\
      },\
      initial: $(rarity_squid)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_stray",\
      label: {\
        "translate": "entity.minecraft.stray",\
      },\
      initial: $(rarity_stray)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_strider",\
      label: {\
        "translate": "entity.minecraft.strider",\
      },\
      initial: $(rarity_strider)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_tadpole",\
      label: {\
        "translate": "entity.minecraft.tadpole",\
      },\
      initial: $(rarity_tadpole)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_trader_llama",\
      label: {\
        "translate": "entity.minecraft.trader_llama",\
      },\
      initial: $(rarity_trader_llama)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_tropical_fish",\
      label: {\
        "translate": "entity.minecraft.tropical_fish",\
      },\
      initial: $(rarity_tropical_fish)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_turtle",\
      label: {\
        "translate": "entity.minecraft.turtle",\
      },\
      initial: $(rarity_turtle)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_vex",\
      label: {\
        "translate": "entity.minecraft.vex",\
      },\
      initial: $(rarity_vex)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_villager",\
      label: {\
        "translate": "entity.minecraft.villager",\
      },\
      initial: $(rarity_villager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_vindicator",\
      label:  {\
        "translate": "entity.minecraft.vindicator",\
      },\
      initial: $(rarity_vindicator)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wandering_trader",\
      label: {\
        "translate": "entity.minecraft.wandering_trader",\
      },\
      initial: $(rarity_wandering_trader)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_warden",\
      label: {\
        "translate": "entity.minecraft.warden",\
      },\
      initial: $(rarity_warden)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_witch",\
      label: {\
        "translate": "entity.minecraft.witch",\
      },\
      initial: $(rarity_witch)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wither",\
      label: {\
        "translate": "entity.minecraft.wither",\
      },\
      initial: $(rarity_wither)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wither_invulnerable",\
      label: {\
        "translate": "entity.minecraft.wither_invulnerable",\
      },\
      initial: $(rarity_wither_invulnerable)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wolf",\
      label: {\
        "translate": "entity.minecraft.wolf",\
      },\
      initial: $(rarity_wolf)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zoglin",\
      label: {\
        "translate": "entity.minecraft.zoglin",\
      },\
      initial: $(rarity_zoglin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombie_horse",\
      label: {\
        "translate": "entity.minecraft.zombie_horse",\
      },\
      initial: $(rarity_zombie_horse)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombie_villager",\
      label: {\
        "translate": "entity.minecraft.zombie_villager",\
      },\
      initial: $(rarity_zombie_villager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombie",\
      label: {\
        "translate": "entity.minecraft.zombie",\
      },\
      initial: $(rarity_zombie)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombified_piglin",\
      label: {\
        "translate": "entity.minecraft.zombified_piglin",\
      },\
      initial: $(rarity_zombified_piglin)\
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
      template:"function mob_heads:config/update/update_rarity {dialog_rarity_allay:$(dialog_rarity_allay), dialog_rarity_armadillo:$(dialog_rarity_armadillo), dialog_rarity_axolotl:$(dialog_rarity_axolotl), dialog_rarity_axolotl_blue:$(dialog_rarity_axolotl_blue), dialog_rarity_bat:$(dialog_rarity_bat), dialog_rarity_bee:$(dialog_rarity_bee), dialog_rarity_blaze:$(dialog_rarity_blaze), dialog_rarity_bogged:$(dialog_rarity_bogged), dialog_rarity_breeze:$(dialog_rarity_breeze), dialog_rarity_camel:$(dialog_rarity_camel), dialog_rarity_cat:$(dialog_rarity_cat), dialog_rarity_cave_spider:$(dialog_rarity_cave_spider), dialog_rarity_chicken:$(dialog_rarity_chicken), dialog_rarity_cod:$(dialog_rarity_cod), dialog_rarity_cow:$(dialog_rarity_cow), dialog_rarity_creaking:$(dialog_rarity_creaking), dialog_rarity_creeper:$(dialog_rarity_creeper), dialog_rarity_creeper_charged:$(dialog_rarity_creeper_charged), dialog_rarity_dolphin:$(dialog_rarity_dolphin), dialog_rarity_donkey:$(dialog_rarity_donkey), dialog_rarity_drowned:$(dialog_rarity_drowned), dialog_rarity_elder_guardian:$(dialog_rarity_elder_guardian), dialog_rarity_ender_dragon:$(dialog_rarity_ender_dragon), dialog_rarity_enderman:$(dialog_rarity_enderman), dialog_rarity_endermite:$(dialog_rarity_endermite), dialog_rarity_evoker:$(dialog_rarity_evoker), dialog_rarity_fox:$(dialog_rarity_fox), dialog_rarity_frog:$(dialog_rarity_frog), dialog_rarity_ghast:$(dialog_rarity_ghast), dialog_rarity_glow_squid:$(dialog_rarity_glow_squid), dialog_rarity_goat:$(dialog_rarity_goat), dialog_rarity_guardian:$(dialog_rarity_guardian), dialog_rarity_happy_ghast:$(dialog_rarity_happy_ghast), dialog_rarity_hoglin:$(dialog_rarity_hoglin), dialog_rarity_horse:$(dialog_rarity_horse), dialog_rarity_husk:$(dialog_rarity_husk), dialog_rarity_illusioner:$(dialog_rarity_illusioner), dialog_rarity_iron_golem:$(dialog_rarity_iron_golem), dialog_rarity_llama:$(dialog_rarity_llama), dialog_rarity_magma_cube:$(dialog_rarity_magma_cube), dialog_rarity_mooshroom:$(dialog_rarity_mooshroom), dialog_rarity_mooshroom_brown:$(dialog_rarity_mooshroom_brown), dialog_rarity_mule:$(dialog_rarity_mule), dialog_rarity_ocelot:$(dialog_rarity_ocelot), dialog_rarity_panda:$(dialog_rarity_panda), dialog_rarity_panda_special:$(dialog_rarity_panda_special), dialog_rarity_parrot:$(dialog_rarity_parrot), dialog_rarity_phantom:$(dialog_rarity_phantom), dialog_rarity_pig:$(dialog_rarity_pig), dialog_rarity_piglin_brute:$(dialog_rarity_piglin_brute), dialog_rarity_piglin:$(dialog_rarity_piglin), dialog_rarity_pillager:$(dialog_rarity_pillager), dialog_rarity_polar_bear:$(dialog_rarity_polar_bear), dialog_rarity_pufferfish:$(dialog_rarity_pufferfish), dialog_rarity_rabbit:$(dialog_rarity_rabbit), dialog_rarity_ravager:$(dialog_rarity_ravager), dialog_rarity_salmon:$(dialog_rarity_salmon), dialog_rarity_sheep:$(dialog_rarity_sheep), dialog_rarity_shulker:$(dialog_rarity_shulker), dialog_rarity_silverfish:$(dialog_rarity_silverfish), dialog_rarity_skeleton_horse:$(dialog_rarity_skeleton_horse), dialog_rarity_skeleton:$(dialog_rarity_skeleton), dialog_rarity_slime:$(dialog_rarity_slime), dialog_rarity_sniffer:$(dialog_rarity_sniffer), dialog_rarity_snow_golem:$(dialog_rarity_snow_golem), dialog_rarity_spider:$(dialog_rarity_spider), dialog_rarity_squid:$(dialog_rarity_squid), dialog_rarity_stray:$(dialog_rarity_stray), dialog_rarity_strider:$(dialog_rarity_strider), dialog_rarity_tadpole:$(dialog_rarity_tadpole), dialog_rarity_trader_llama:$(dialog_rarity_trader_llama), dialog_rarity_tropical_fish:$(dialog_rarity_tropical_fish), dialog_rarity_turtle:$(dialog_rarity_turtle), dialog_rarity_vex:$(dialog_rarity_vex), dialog_rarity_villager:$(dialog_rarity_villager), dialog_rarity_vindicator:$(dialog_rarity_vindicator), dialog_rarity_wandering_trader:$(dialog_rarity_wandering_trader), dialog_rarity_warden:$(dialog_rarity_warden), dialog_rarity_witch:$(dialog_rarity_witch), dialog_rarity_wither:$(dialog_rarity_wither), dialog_rarity_wither_invulnerable:$(dialog_rarity_wither_invulnerable), dialog_rarity_wolf:$(dialog_rarity_wolf), dialog_rarity_zoglin:$(dialog_rarity_zoglin), dialog_rarity_zombie_horse:$(dialog_rarity_zombie_horse), dialog_rarity_zombie_villager:$(dialog_rarity_zombie_villager), dialog_rarity_zombie:$(dialog_rarity_zombie), dialog_rarity_zombified_piglin:$(dialog_rarity_zombified_piglin)}"\
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
        command:"function mob_heads:config/reset/rarity"\
      }\
    }\
  ]\
}