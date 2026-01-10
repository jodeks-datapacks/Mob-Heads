$dialog show @s {\
type:"minecraft:multi_action",\ 
  title:"Mob Heads Rarity",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "Rarities (color of head name)",\
        "bold": true,\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "0 = common = white",\
        "color": "white",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "1 = uncommon = yellow",\
        "color": "yellow",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "2 = rare = aqua",\
        "color": "aqua",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "3 = epic = dark_purple",\
        "color": "dark_purple",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "4 = legendary = gold",\
        "color": "gold",\
      }\
    },\
        {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "5 = mythic = green",\
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
      label:"Allay",\
      initial: $(rarity_allay)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_armadillo",\
      label:"Armadillo",\
      initial: $(rarity_armadillo)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_axolotl",\
      label:"Axolotl",\
      initial: $(rarity_axolotl)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_axolotl_blue",\
      label:"Axolotl Blue",\
      initial: $(rarity_axolotl_blue)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_bat",\
      label:"Bat",\
      initial: $(rarity_bat)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_bee",\
      label:"Bee",\
      initial: $(rarity_bee)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_blaze",\
      label:"Blaze",\
      initial: $(rarity_blaze)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_bogged",\
      label:"Bogged",\
      initial: $(rarity_bogged)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_breeze",\
      label:"Breeze",\
      initial: $(rarity_breeze)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_camel",\
      label:"Camel",\
      initial: $(rarity_camel)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cat",\
      label:"Cat",\
      initial: $(rarity_cat)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cave_spider",\
      label:"Cave Spider",\
      initial: $(rarity_cave_spider)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_chicken",\
      label:"Chicken",\
      initial: $(rarity_chicken)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cod",\
      label:"Cod",\
      initial: $(rarity_cod)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_cow",\
      label:"Cow",\
      initial: $(rarity_cow)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_creaking",\
      label:"Creaking",\
      initial: $(rarity_creaking)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_creeper",\
      label:"Creeper",\
      initial: $(rarity_creeper)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_creeper_charged",\
      label:"Creeper Charged",\
      initial: $(rarity_creeper_charged)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_dolphin",\
      label:"Dolphin",\
      initial: $(rarity_dolphin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_donkey",\
      label:"Donkey",\
      initial: $(rarity_donkey)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_drowned",\
      label:"Drowned",\
      initial: $(rarity_drowned)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_elder_guardian",\
      label:"Elder Guardian",\
      initial: $(rarity_elder_guardian)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ender_dragon",\
      label:"Ender Dragon",\
      initial: $(rarity_ender_dragon)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_enderman",\
      label:"Enderman",\
      initial: $(rarity_enderman)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_endermite",\
      label:"Endermite",\
      initial: $(rarity_endermite)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_evoker",\
      label:"Evoker",\
      initial: $(rarity_evoker)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_fox",\
      label:"Fox",\
      initial: $(rarity_fox)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_frog",\
      label:"Frog",\
      initial: $(rarity_frog)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ghast",\
      label:"Ghast",\
      initial: $(rarity_ghast)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_glow_squid",\
      label:"Glow Squid",\
      initial: $(rarity_glow_squid)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_goat",\
      label:"Goat",\
      initial: $(rarity_goat)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_guardian",\
      label:"Guardian",\
      initial: $(rarity_guardian)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_happy_ghast",\
      label:"Happy Ghast",\
      initial: $(rarity_happy_ghast)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_hoglin",\
      label:"Hoglin",\
      initial: $(rarity_hoglin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_horse",\
      label:"Horse",\
      initial: $(rarity_horse)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_husk",\
      label:"Husk",\
      initial: $(rarity_husk)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_illusioner",\
      label:"Illusioner",\
      initial: $(rarity_illusioner)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_iron_golem",\
      label:"Iron Golem",\
      initial: $(rarity_iron_golem)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_llama",\
      label:"Llama",\
      initial: $(rarity_llama)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_magma_cube",\
      label:"Magma Cube",\
      initial: $(rarity_magma_cube)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_mooshroom",\
      label:"Mooshroom",\
      initial: $(rarity_mooshroom)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_mooshroom_brown",\
      label:"Mooshroom Brown",\
      initial: $(rarity_mooshroom_brown)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_mule",\
      label:"Mule",\
      initial: $(rarity_mule)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ocelot",\
      label:"Ocelot",\
      initial: $(rarity_ocelot)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_panda",\
      label:"Panda",\
      initial: $(rarity_panda)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_panda_special",\
      label:"Panda Special",\
      initial: $(rarity_panda_special)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_parrot",\
      label:"Parrot",\
      initial: $(rarity_parrot)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_phantom",\
      label:"Phantom",\
      initial: $(rarity_phantom)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_pig",\
      label:"Pig",\
      initial: $(rarity_pig)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_piglin_brute",\
      label:"Piglin Brute",\
      initial: $(rarity_piglin_brute)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_piglin",\
      label:"Piglin",\
      initial: $(rarity_piglin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_pillager",\
      label:"Pillager",\
      initial: $(rarity_pillager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_polar_bear",\
      label:"Polar Bear",\
      initial: $(rarity_polar_bear)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_pufferfish",\
      label:"Pufferfish",\
      initial: $(rarity_pufferfish)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_rabbit",\
      label:"Rabbit",\
      initial: $(rarity_rabbit)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_ravager",\
      label:"Ravager",\
      initial: $(rarity_ravager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_salmon",\
      label:"Salmon",\
      initial: $(rarity_salmon)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_sheep",\
      label:"Sheep",\
      initial: $(rarity_sheep)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_shulker",\
      label:"Shulker",\
      initial: $(rarity_shulker)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_silverfish",\
      label:"Silverfish",\
      initial: $(rarity_silverfish)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_skeleton_horse",\
      label:"Skeleton Horse",\
      initial: $(rarity_skeleton_horse)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_skeleton",\
      label:"Skeleton",\
      initial: $(rarity_skeleton)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_slime",\
      label:"Slime",\
      initial: $(rarity_slime)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_sniffer",\
      label:"Sniffer",\
      initial: $(rarity_sniffer)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_snow_golem",\
      label:"Snow Golem",\
      initial: $(rarity_snow_golem)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_spider",\
      label:"Spider",\
      initial: $(rarity_spider)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_squid",\
      label:"Squid",\
      initial: $(rarity_squid)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_stray",\
      label:"Stray",\
      initial: $(rarity_stray)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_strider",\
      label:"Strider",\
      initial: $(rarity_strider)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_tadpole",\
      label:"Tadpole",\
      initial: $(rarity_tadpole)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_trader_llama",\
      label:"Trader Llama",\
      initial: $(rarity_trader_llama)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_tropical_fish",\
      label:"Tropical Fish",\
      initial: $(rarity_tropical_fish)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_turtle",\
      label:"Turtle",\
      initial: $(rarity_turtle)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_vex",\
      label:"Vex",\
      initial: $(rarity_vex)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_villager",\
      label:"Villager",\
      initial: $(rarity_villager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_vindicator",\
      label:"Vindicator",\
      initial: $(rarity_vindicator)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wandering_trader",\
      label:"Wandering Trader",\
      initial: $(rarity_wandering_trader)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_warden",\
      label:"Warden",\
      initial: $(rarity_warden)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_witch",\
      label:"Witch",\
      initial: $(rarity_witch)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wither",\
      label:"Wither",\
      initial: $(rarity_wither)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wither_invulnerable",\
      label:"Wither Invulnerable",\
      initial: $(rarity_wither_invulnerable)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_wolf",\
      label:"Wolf",\
      initial: $(rarity_wolf)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zoglin",\
      label:"Zoglin",\
      initial: $(rarity_zoglin)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombie_horse",\
      label:"Zombie Horse",\
      initial: $(rarity_zombie_horse)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombie_villager",\
      label:"Zombie Villager",\
      initial: $(rarity_zombie_villager)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombie",\
      label:"Zombie",\
      initial: $(rarity_zombie)\
    },\
    {\
      type:"minecraft:number_range",\
      start: 0,\
      end: 5,\
      step: 1,\
      key:"dialog_rarity_zombified_piglin",\
      label:"Zombified Piglin",\
      initial: $(rarity_zombified_piglin)\
    }\
  ],\
  can_close_with_escape:1b,\
  "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mobheads:config/update/update_rarity {dialog_rarity_allay:$(dialog_rarity_allay), dialog_rarity_armadillo:$(dialog_rarity_armadillo), dialog_rarity_axolotl:$(dialog_rarity_axolotl), dialog_rarity_axolotl_blue:$(dialog_rarity_axolotl_blue), dialog_rarity_bat:$(dialog_rarity_bat), dialog_rarity_bee:$(dialog_rarity_bee), dialog_rarity_blaze:$(dialog_rarity_blaze), dialog_rarity_bogged:$(dialog_rarity_bogged), dialog_rarity_breeze:$(dialog_rarity_breeze), dialog_rarity_camel:$(dialog_rarity_camel), dialog_rarity_cat:$(dialog_rarity_cat), dialog_rarity_cave_spider:$(dialog_rarity_cave_spider), dialog_rarity_chicken:$(dialog_rarity_chicken), dialog_rarity_cod:$(dialog_rarity_cod), dialog_rarity_cow:$(dialog_rarity_cow), dialog_rarity_creaking:$(dialog_rarity_creaking), dialog_rarity_creeper:$(dialog_rarity_creeper), dialog_rarity_creeper_charged:$(dialog_rarity_creeper_charged), dialog_rarity_dolphin:$(dialog_rarity_dolphin), dialog_rarity_donkey:$(dialog_rarity_donkey), dialog_rarity_drowned:$(dialog_rarity_drowned), dialog_rarity_elder_guardian:$(dialog_rarity_elder_guardian), dialog_rarity_ender_dragon:$(dialog_rarity_ender_dragon), dialog_rarity_enderman:$(dialog_rarity_enderman), dialog_rarity_endermite:$(dialog_rarity_endermite), dialog_rarity_evoker:$(dialog_rarity_evoker), dialog_rarity_fox:$(dialog_rarity_fox), dialog_rarity_frog:$(dialog_rarity_frog), dialog_rarity_ghast:$(dialog_rarity_ghast), dialog_rarity_glow_squid:$(dialog_rarity_glow_squid), dialog_rarity_goat:$(dialog_rarity_goat), dialog_rarity_guardian:$(dialog_rarity_guardian), dialog_rarity_happy_ghast:$(dialog_rarity_happy_ghast), dialog_rarity_hoglin:$(dialog_rarity_hoglin), dialog_rarity_horse:$(dialog_rarity_horse), dialog_rarity_husk:$(dialog_rarity_husk), dialog_rarity_illusioner:$(dialog_rarity_illusioner), dialog_rarity_iron_golem:$(dialog_rarity_iron_golem), dialog_rarity_llama:$(dialog_rarity_llama), dialog_rarity_magma_cube:$(dialog_rarity_magma_cube), dialog_rarity_mooshroom:$(dialog_rarity_mooshroom), dialog_rarity_mooshroom_brown:$(dialog_rarity_mooshroom_brown), dialog_rarity_mule:$(dialog_rarity_mule), dialog_rarity_ocelot:$(dialog_rarity_ocelot), dialog_rarity_panda:$(dialog_rarity_panda), dialog_rarity_panda_special:$(dialog_rarity_panda_special), dialog_rarity_parrot:$(dialog_rarity_parrot), dialog_rarity_phantom:$(dialog_rarity_phantom), dialog_rarity_pig:$(dialog_rarity_pig), dialog_rarity_piglin_brute:$(dialog_rarity_piglin_brute), dialog_rarity_piglin:$(dialog_rarity_piglin), dialog_rarity_pillager:$(dialog_rarity_pillager), dialog_rarity_polar_bear:$(dialog_rarity_polar_bear), dialog_rarity_pufferfish:$(dialog_rarity_pufferfish), dialog_rarity_rabbit:$(dialog_rarity_rabbit), dialog_rarity_ravager:$(dialog_rarity_ravager), dialog_rarity_salmon:$(dialog_rarity_salmon), dialog_rarity_sheep:$(dialog_rarity_sheep), dialog_rarity_shulker:$(dialog_rarity_shulker), dialog_rarity_silverfish:$(dialog_rarity_silverfish), dialog_rarity_skeleton_horse:$(dialog_rarity_skeleton_horse), dialog_rarity_skeleton:$(dialog_rarity_skeleton), dialog_rarity_slime:$(dialog_rarity_slime), dialog_rarity_sniffer:$(dialog_rarity_sniffer), dialog_rarity_snow_golem:$(dialog_rarity_snow_golem), dialog_rarity_spider:$(dialog_rarity_spider), dialog_rarity_squid:$(dialog_rarity_squid), dialog_rarity_stray:$(dialog_rarity_stray), dialog_rarity_strider:$(dialog_rarity_strider), dialog_rarity_tadpole:$(dialog_rarity_tadpole), dialog_rarity_trader_llama:$(dialog_rarity_trader_llama), dialog_rarity_tropical_fish:$(dialog_rarity_tropical_fish), dialog_rarity_turtle:$(dialog_rarity_turtle), dialog_rarity_vex:$(dialog_rarity_vex), dialog_rarity_villager:$(dialog_rarity_villager), dialog_rarity_vindicator:$(dialog_rarity_vindicator), dialog_rarity_wandering_trader:$(dialog_rarity_wandering_trader), dialog_rarity_warden:$(dialog_rarity_warden), dialog_rarity_witch:$(dialog_rarity_witch), dialog_rarity_wither:$(dialog_rarity_wither), dialog_rarity_wither_invulnerable:$(dialog_rarity_wither_invulnerable), dialog_rarity_wolf:$(dialog_rarity_wolf), dialog_rarity_zoglin:$(dialog_rarity_zoglin), dialog_rarity_zombie_horse:$(dialog_rarity_zombie_horse), dialog_rarity_zombie_villager:$(dialog_rarity_zombie_villager), dialog_rarity_zombie:$(dialog_rarity_zombie), dialog_rarity_zombified_piglin:$(dialog_rarity_zombified_piglin)}"\
    }\
  },\
  actions:[\
    {\
      label:"Save",\
      action:{\
        type:"dynamic/run_command",\
        template:"function mobheads:config/update/update_rarity {dialog_rarity_allay:$(dialog_rarity_allay), dialog_rarity_armadillo:$(dialog_rarity_armadillo), dialog_rarity_axolotl:$(dialog_rarity_axolotl), dialog_rarity_axolotl_blue:$(dialog_rarity_axolotl_blue), dialog_rarity_bat:$(dialog_rarity_bat), dialog_rarity_bee:$(dialog_rarity_bee), dialog_rarity_blaze:$(dialog_rarity_blaze), dialog_rarity_bogged:$(dialog_rarity_bogged), dialog_rarity_breeze:$(dialog_rarity_breeze), dialog_rarity_camel:$(dialog_rarity_camel), dialog_rarity_cat:$(dialog_rarity_cat), dialog_rarity_cave_spider:$(dialog_rarity_cave_spider), dialog_rarity_chicken:$(dialog_rarity_chicken), dialog_rarity_cod:$(dialog_rarity_cod), dialog_rarity_cow:$(dialog_rarity_cow), dialog_rarity_creaking:$(dialog_rarity_creaking), dialog_rarity_creeper:$(dialog_rarity_creeper), dialog_rarity_creeper_charged:$(dialog_rarity_creeper_charged), dialog_rarity_dolphin:$(dialog_rarity_dolphin), dialog_rarity_donkey:$(dialog_rarity_donkey), dialog_rarity_drowned:$(dialog_rarity_drowned), dialog_rarity_elder_guardian:$(dialog_rarity_elder_guardian), dialog_rarity_ender_dragon:$(dialog_rarity_ender_dragon), dialog_rarity_enderman:$(dialog_rarity_enderman), dialog_rarity_endermite:$(dialog_rarity_endermite), dialog_rarity_evoker:$(dialog_rarity_evoker), dialog_rarity_fox:$(dialog_rarity_fox), dialog_rarity_frog:$(dialog_rarity_frog), dialog_rarity_ghast:$(dialog_rarity_ghast), dialog_rarity_glow_squid:$(dialog_rarity_glow_squid), dialog_rarity_goat:$(dialog_rarity_goat), dialog_rarity_guardian:$(dialog_rarity_guardian), dialog_rarity_happy_ghast:$(dialog_rarity_happy_ghast), dialog_rarity_hoglin:$(dialog_rarity_hoglin), dialog_rarity_horse:$(dialog_rarity_horse), dialog_rarity_husk:$(dialog_rarity_husk), dialog_rarity_illusioner:$(dialog_rarity_illusioner), dialog_rarity_iron_golem:$(dialog_rarity_iron_golem), dialog_rarity_llama:$(dialog_rarity_llama), dialog_rarity_magma_cube:$(dialog_rarity_magma_cube), dialog_rarity_mooshroom:$(dialog_rarity_mooshroom), dialog_rarity_mooshroom_brown:$(dialog_rarity_mooshroom_brown), dialog_rarity_mule:$(dialog_rarity_mule), dialog_rarity_ocelot:$(dialog_rarity_ocelot), dialog_rarity_panda:$(dialog_rarity_panda), dialog_rarity_panda_special:$(dialog_rarity_panda_special), dialog_rarity_parrot:$(dialog_rarity_parrot), dialog_rarity_phantom:$(dialog_rarity_phantom), dialog_rarity_pig:$(dialog_rarity_pig), dialog_rarity_piglin_brute:$(dialog_rarity_piglin_brute), dialog_rarity_piglin:$(dialog_rarity_piglin), dialog_rarity_pillager:$(dialog_rarity_pillager), dialog_rarity_polar_bear:$(dialog_rarity_polar_bear), dialog_rarity_pufferfish:$(dialog_rarity_pufferfish), dialog_rarity_rabbit:$(dialog_rarity_rabbit), dialog_rarity_ravager:$(dialog_rarity_ravager), dialog_rarity_salmon:$(dialog_rarity_salmon), dialog_rarity_sheep:$(dialog_rarity_sheep), dialog_rarity_shulker:$(dialog_rarity_shulker), dialog_rarity_silverfish:$(dialog_rarity_silverfish), dialog_rarity_skeleton_horse:$(dialog_rarity_skeleton_horse), dialog_rarity_skeleton:$(dialog_rarity_skeleton), dialog_rarity_slime:$(dialog_rarity_slime), dialog_rarity_sniffer:$(dialog_rarity_sniffer), dialog_rarity_snow_golem:$(dialog_rarity_snow_golem), dialog_rarity_spider:$(dialog_rarity_spider), dialog_rarity_squid:$(dialog_rarity_squid), dialog_rarity_stray:$(dialog_rarity_stray), dialog_rarity_strider:$(dialog_rarity_strider), dialog_rarity_tadpole:$(dialog_rarity_tadpole), dialog_rarity_trader_llama:$(dialog_rarity_trader_llama), dialog_rarity_tropical_fish:$(dialog_rarity_tropical_fish), dialog_rarity_turtle:$(dialog_rarity_turtle), dialog_rarity_vex:$(dialog_rarity_vex), dialog_rarity_villager:$(dialog_rarity_villager), dialog_rarity_vindicator:$(dialog_rarity_vindicator), dialog_rarity_wandering_trader:$(dialog_rarity_wandering_trader), dialog_rarity_warden:$(dialog_rarity_warden), dialog_rarity_witch:$(dialog_rarity_witch), dialog_rarity_wither:$(dialog_rarity_wither), dialog_rarity_wither_invulnerable:$(dialog_rarity_wither_invulnerable), dialog_rarity_wolf:$(dialog_rarity_wolf), dialog_rarity_zoglin:$(dialog_rarity_zoglin), dialog_rarity_zombie_horse:$(dialog_rarity_zombie_horse), dialog_rarity_zombie_villager:$(dialog_rarity_zombie_villager), dialog_rarity_zombie:$(dialog_rarity_zombie), dialog_rarity_zombified_piglin:$(dialog_rarity_zombified_piglin)}"\
      }\
    }\
  ]\
}