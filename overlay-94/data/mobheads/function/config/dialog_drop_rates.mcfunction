$dialog show @s {\
type:"minecraft:multi_action",\ 
  title:"Mob Heads Drop Rates",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        "Drop rates are in decimal, e.g. 0.5 = 50%",\
        "\n",\
        "\n",\
        "The value in () is the multiplied value",\
        "\n",\
        "wich is used as the actual drop rate"\
      ] \
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:text",\
      key:"dialog_drop_rate_multiplier",\
      label:"Drop Rate Multiplier",\
      initial: "$(drop_rate_multiplier)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_allay",\
      label:"Allay ($(allay))",\
      initial: "$(allay_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_armadillo",\
      label:"Armadillo ($(armadillo))",\
      initial: "$(armadillo_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_axolotl",\
      label:"Axolotl ($(axolotl))",\
      initial: "$(axolotl_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_axolotl_blue",\
      label:"Axolotl Blue ($(axolotl_blue))",\
      initial: "$(axolotl_blue_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_bat",\
      label:"Bat ($(bat))",\
      initial: "$(bat_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_bee",\
      label:"Bee ($(bee))",\
      initial: "$(bee_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_blaze",\
      label:"Blaze ($(blaze))",\
      initial: "$(blaze_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_bogged",\
      label:"Bogged ($(bogged))",\
      initial: "$(bogged_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_breeze",\
      label:"Breeze ($(breeze))",\
      initial: "$(breeze_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_camel",\
      label:"Camel ($(camel))",\
      initial: "$(camel_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_camel_husk",\
      label:"Camel Husk ($(camel_husk))",\
      initial: "$(camel_husk_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cat",\
      label:"Cat ($(cat))",\
      initial: "$(cat_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cave_spider",\
      label:"Cave Spider ($(cave_spider))",\
      initial: "$(cave_spider_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_chicken",\
      label:"Chicken ($(chicken))",\
      initial: "$(chicken_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cod",\
      label:"Cod ($(cod))",\
      initial: "$(cod_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_copper_golem",\
      label:"Copper Golem ($(copper_golem))",\
      initial: "$(copper_golem_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_cow",\
      label:"Cow ($(cow))",\
      initial: "$(cow_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_creaking",\
      label:"Creaking ($(creaking))",\
      initial: "$(creaking_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_creeper",\
      label:"Creeper ($(creeper))",\
      initial: "$(creeper_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_creeper_charged",\
      label:"Creeper Charged ($(creeper_charged))",\
      initial: "$(creeper_charged_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_dolphin",\
      label:"Dolphin ($(dolphin))",\
      initial: "$(dolphin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_donkey",\
      label:"Donkey ($(donkey))",\
      initial: "$(donkey_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_drowned",\
      label:"Drowned ($(drowned))",\
      initial: "$(drowned_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_elder_guardian",\
      label:"Elder Guardian ($(elder_guardian))",\
      initial: "$(elder_guardian_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ender_dragon",\
      label:"Ender Dragon ($(ender_dragon))",\
      initial: "$(ender_dragon_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_enderman",\
      label:"Enderman ($(enderman))",\
      initial: "$(enderman_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_endermite",\
      label:"Endermite ($(endermite))",\
      initial: "$(endermite_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_evoker",\
      label:"Evoker ($(evoker))",\
      initial: "$(evoker_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_fox",\
      label:"Fox ($(fox))",\
      initial: "$(fox_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_frog",\
      label:"Frog ($(frog))",\
      initial: "$(frog_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ghast",\
      label:"Ghast ($(ghast))",\
      initial: "$(ghast_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_glow_squid",\
      label:"Glow Squid ($(glow_squid))",\
      initial: "$(glow_squid_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_goat",\
      label:"Goat ($(goat))",\
      initial: "$(goat_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_guardian",\
      label:"Guardian ($(guardian))",\
      initial: "$(guardian_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_happy_ghast",\
      label:"Happy Ghast ($(happy_ghast))",\
      initial: "$(happy_ghast_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_hoglin",\
      label:"Hoglin ($(hoglin))",\
      initial: "$(hoglin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_horse",\
      label:"Horse ($(horse))",\
      initial: "$(horse_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_husk",\
      label:"Husk ($(husk))",\
      initial: "$(husk_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_illusioner",\
      label:"Illusioner ($(illusioner))",\
      initial: "$(illusioner_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_iron_golem",\
      label:"Iron Golem ($(iron_golem))",\
      initial: "$(iron_golem_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_llama",\
      label:"Llama ($(llama))",\
      initial: "$(llama_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_magma_cube",\
      label:"Magma Cube ($(magma_cube))",\
      initial: "$(magma_cube_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_mooshroom",\
      label:"Mooshroom ($(mooshroom))",\
      initial: "$(mooshroom_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_mooshroom_brown",\
      label:"Mooshroom Brown ($(mooshroom_brown))",\
      initial: "$(mooshroom_brown_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_mule",\
      label:"Mule ($(mule))",\
      initial: "$(mule_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_nautilus",\
      label:"Nautilus ($(nautilus))",\
      initial: "$(nautilus_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ocelot",\
      label:"Ocelot ($(ocelot))",\
      initial: "$(ocelot_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_panda",\
      label:"Panda ($(panda))",\
      initial: "$(panda_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_panda_special",\
      label:"Panda Special ($(panda_special))",\
      initial: "$(panda_special_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_parched",\
      label:"Parched ($(parched))",\
      initial: "$(parched_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_parrot",\
      label:"Parrot ($(parrot))",\
      initial: "$(parrot_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_phantom",\
      label:"Phantom ($(phantom))",\
      initial: "$(phantom_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_pig",\
      label:"Pig ($(pig))",\
      initial: "$(pig_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_piglin_brute",\
      label:"Piglin Brute ($(piglin_brute))",\
      initial: "$(piglin_brute_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_piglin",\
      label:"Piglin ($(piglin))",\
      initial: "$(piglin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_pillager",\
      label:"Pillager ($(pillager))",\
      initial: "$(pillager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_polar_bear",\
      label:"Polar Bear ($(polar_bear))",\
      initial: "$(polar_bear_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_pufferfish",\
      label:"Pufferfish ($(pufferfish))",\
      initial: "$(pufferfish_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_rabbit",\
      label:"Rabbit ($(rabbit))",\
      initial: "$(rabbit_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_ravager",\
      label:"Ravager ($(ravager))",\
      initial: "$(ravager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_salmon",\
      label:"Salmon ($(salmon))",\
      initial: "$(salmon_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_sheep",\
      label:"Sheep ($(sheep))",\
      initial: "$(sheep_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_shulker",\
      label:"Shulker ($(shulker))",\
      initial: "$(shulker_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_silverfish",\
      label:"Silverfish ($(silverfish))",\
      initial: "$(silverfish_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_skeleton_horse",\
      label:"Skeleton Horse ($(skeleton_horse))",\
      initial: "$(skeleton_horse_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_skeleton",\
      label:"Skeleton ($(skeleton))",\
      initial: "$(skeleton_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_slime",\
      label:"Slime ($(slime))",\
      initial: "$(slime_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_sniffer",\
      label:"Sniffer ($(sniffer))",\
      initial: "$(sniffer_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_snow_golem",\
      label:"Snow Golem ($(snow_golem))",\
      initial: "$(snow_golem_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_spider",\
      label:"Spider ($(spider))",\
      initial: "$(spider_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_squid",\
      label:"Squid ($(squid))",\
      initial: "$(squid_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_stray",\
      label:"Stray ($(stray))",\
      initial: "$(stray_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_strider",\
      label:"Strider ($(strider))",\
      initial: "$(strider_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_tadpole",\
      label:"Tadpole ($(tadpole))",\
      initial: "$(tadpole_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_trader_llama",\
      label:"Trader Llama ($(trader_llama))",\
      initial: "$(trader_llama_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_tropical_fish",\
      label:"Tropical Fish ($(tropical_fish))",\
      initial: "$(tropical_fish_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_turtle",\
      label:"Turtle ($(turtle))",\
      initial: "$(turtle_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_vex",\
      label:"Vex ($(vex))",\
      initial: "$(vex_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_villager",\
      label:"Villager ($(villager))",\
      initial: "$(villager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_vindicator",\
      label:"Vindicator ($(vindicator))",\
      initial: "$(vindicator_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wandering_trader",\
      label:"Wandering Trader ($(wandering_trader))",\
      initial: "$(wandering_trader_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_warden",\
      label:"Warden ($(warden))",\
      initial: "$(warden_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_witch",\
      label:"Witch ($(witch))",\
      initial: "$(witch_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wither",\
      label:"Wither ($(wither))",\
      initial: "$(wither_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wither_invulnerable",\
      label:"Wither Invulnerable ($(wither_invulnerable))",\
      initial: "$(wither_invulnerable_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_wolf",\
      label:"Wolf ($(wolf))",\
      initial: "$(wolf_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zoglin",\
      label:"Zoglin ($(zoglin))",\
      initial: "$(zoglin_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie_horse",\
      label:"Zombie Horse ($(zombie_horse))",\
      initial: "$(zombie_horse_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie_nautilus",\
      label:"Zombie Nautilus ($(zombie_nautilus))",\
      initial: "$(zombie_nautilus_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie_villager",\
      label:"Zombie Villager ($(zombie_villager))",\
      initial: "$(zombie_villager_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombie",\
      label:"Zombie ($(zombie))",\
      initial: "$(zombie_init)"\
    },\
    {\
      type:"minecraft:text",\
      key:"drop_rate_zombified_piglin",\
      label:"Zombified Piglin ($(zombified_piglin))",\
      initial: "$(zombified_piglin_init)"\
    }\
  ],\
  can_close_with_escape:1b,\
  "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mobheads:config/update/update_drop_rates {dialog_drop_rate_multiplier:$(dialog_drop_rate_multiplier), drop_rate_camel_husk:$(drop_rate_camel_husk), drop_rate_parched:$(drop_rate_parched), drop_rate_nautilus:$(drop_rate_nautilus), drop_rate_zombie_nautilus:$(drop_rate_zombie_nautilus), drop_rate_allay:$(drop_rate_allay), drop_rate_armadillo:$(drop_rate_armadillo), drop_rate_axolotl:$(drop_rate_axolotl), drop_rate_axolotl_blue:$(drop_rate_axolotl_blue), drop_rate_bat:$(drop_rate_bat), drop_rate_bee:$(drop_rate_bee), drop_rate_blaze:$(drop_rate_blaze), drop_rate_bogged:$(drop_rate_bogged), drop_rate_breeze:$(drop_rate_breeze), drop_rate_camel:$(drop_rate_camel), drop_rate_cat:$(drop_rate_cat), drop_rate_cave_spider:$(drop_rate_cave_spider), drop_rate_chicken:$(drop_rate_chicken), drop_rate_cod:$(drop_rate_cod), drop_rate_copper_golem:$(drop_rate_copper_golem), drop_rate_cow:$(drop_rate_cow), drop_rate_creaking:$(drop_rate_creaking), drop_rate_creeper:$(drop_rate_creeper), drop_rate_creeper_charged:$(drop_rate_creeper_charged), drop_rate_dolphin:$(drop_rate_dolphin), drop_rate_donkey:$(drop_rate_donkey), drop_rate_drowned:$(drop_rate_drowned), drop_rate_elder_guardian:$(drop_rate_elder_guardian), drop_rate_ender_dragon:$(drop_rate_ender_dragon), drop_rate_enderman:$(drop_rate_enderman), drop_rate_endermite:$(drop_rate_endermite), drop_rate_evoker:$(drop_rate_evoker), drop_rate_fox:$(drop_rate_fox), drop_rate_frog:$(drop_rate_frog), drop_rate_ghast:$(drop_rate_ghast), drop_rate_glow_squid:$(drop_rate_glow_squid), drop_rate_goat:$(drop_rate_goat), drop_rate_guardian:$(drop_rate_guardian), drop_rate_happy_ghast:$(drop_rate_happy_ghast), drop_rate_hoglin:$(drop_rate_hoglin), drop_rate_horse:$(drop_rate_horse), drop_rate_husk:$(drop_rate_husk), drop_rate_illusioner:$(drop_rate_illusioner), drop_rate_iron_golem:$(drop_rate_iron_golem), drop_rate_llama:$(drop_rate_llama), drop_rate_magma_cube:$(drop_rate_magma_cube), drop_rate_mooshroom:$(drop_rate_mooshroom), drop_rate_mooshroom_brown:$(drop_rate_mooshroom_brown), drop_rate_mule:$(drop_rate_mule), drop_rate_ocelot:$(drop_rate_ocelot), drop_rate_panda:$(drop_rate_panda), drop_rate_panda_special:$(drop_rate_panda_special), drop_rate_parrot:$(drop_rate_parrot), drop_rate_phantom:$(drop_rate_phantom), drop_rate_pig:$(drop_rate_pig), drop_rate_piglin_brute:$(drop_rate_piglin_brute), drop_rate_piglin:$(drop_rate_piglin), drop_rate_pillager:$(drop_rate_pillager), drop_rate_polar_bear:$(drop_rate_polar_bear), drop_rate_pufferfish:$(drop_rate_pufferfish), drop_rate_rabbit:$(drop_rate_rabbit), drop_rate_ravager:$(drop_rate_ravager), drop_rate_salmon:$(drop_rate_salmon), drop_rate_sheep:$(drop_rate_sheep), drop_rate_shulker:$(drop_rate_shulker), drop_rate_silverfish:$(drop_rate_silverfish), drop_rate_skeleton_horse:$(drop_rate_skeleton_horse), drop_rate_skeleton:$(drop_rate_skeleton), drop_rate_slime:$(drop_rate_slime), drop_rate_sniffer:$(drop_rate_sniffer), drop_rate_snow_golem:$(drop_rate_snow_golem), drop_rate_spider:$(drop_rate_spider), drop_rate_squid:$(drop_rate_squid), drop_rate_stray:$(drop_rate_stray), drop_rate_strider:$(drop_rate_strider), drop_rate_tadpole:$(drop_rate_tadpole), drop_rate_trader_llama:$(drop_rate_trader_llama), drop_rate_tropical_fish:$(drop_rate_tropical_fish), drop_rate_turtle:$(drop_rate_turtle), drop_rate_vex:$(drop_rate_vex), drop_rate_villager:$(drop_rate_villager), drop_rate_vindicator:$(drop_rate_vindicator), drop_rate_wandering_trader:$(drop_rate_wandering_trader), drop_rate_warden:$(drop_rate_warden), drop_rate_witch:$(drop_rate_witch), drop_rate_wither:$(drop_rate_wither), drop_rate_wither_invulnerable:$(drop_rate_wither_invulnerable), drop_rate_wolf:$(drop_rate_wolf), drop_rate_zoglin:$(drop_rate_zoglin), drop_rate_zombie_horse:$(drop_rate_zombie_horse), drop_rate_zombie_villager:$(drop_rate_zombie_villager), drop_rate_zombie:$(drop_rate_zombie), drop_rate_zombified_piglin:$(drop_rate_zombified_piglin)}"\
    }\
  },\
  actions:[\
    {\
      label:"Save",\
      action:{\
        type:"dynamic/run_command",\
        template:"function mobheads:config/update/update_drop_rates {dialog_drop_rate_multiplier:$(dialog_drop_rate_multiplier), drop_rate_camel_husk:$(drop_rate_camel_husk), drop_rate_parched:$(drop_rate_parched), drop_rate_nautilus:$(drop_rate_nautilus), drop_rate_zombie_nautilus:$(drop_rate_zombie_nautilus), drop_rate_allay:$(drop_rate_allay), drop_rate_armadillo:$(drop_rate_armadillo), drop_rate_axolotl:$(drop_rate_axolotl), drop_rate_axolotl_blue:$(drop_rate_axolotl_blue), drop_rate_bat:$(drop_rate_bat), drop_rate_bee:$(drop_rate_bee), drop_rate_blaze:$(drop_rate_blaze), drop_rate_bogged:$(drop_rate_bogged), drop_rate_breeze:$(drop_rate_breeze), drop_rate_camel:$(drop_rate_camel), drop_rate_cat:$(drop_rate_cat), drop_rate_cave_spider:$(drop_rate_cave_spider), drop_rate_chicken:$(drop_rate_chicken), drop_rate_cod:$(drop_rate_cod), drop_rate_copper_golem:$(drop_rate_copper_golem), drop_rate_cow:$(drop_rate_cow), drop_rate_creaking:$(drop_rate_creaking), drop_rate_creeper:$(drop_rate_creeper), drop_rate_creeper_charged:$(drop_rate_creeper_charged), drop_rate_dolphin:$(drop_rate_dolphin), drop_rate_donkey:$(drop_rate_donkey), drop_rate_drowned:$(drop_rate_drowned), drop_rate_elder_guardian:$(drop_rate_elder_guardian), drop_rate_ender_dragon:$(drop_rate_ender_dragon), drop_rate_enderman:$(drop_rate_enderman), drop_rate_endermite:$(drop_rate_endermite), drop_rate_evoker:$(drop_rate_evoker), drop_rate_fox:$(drop_rate_fox), drop_rate_frog:$(drop_rate_frog), drop_rate_ghast:$(drop_rate_ghast), drop_rate_glow_squid:$(drop_rate_glow_squid), drop_rate_goat:$(drop_rate_goat), drop_rate_guardian:$(drop_rate_guardian), drop_rate_happy_ghast:$(drop_rate_happy_ghast), drop_rate_hoglin:$(drop_rate_hoglin), drop_rate_horse:$(drop_rate_horse), drop_rate_husk:$(drop_rate_husk), drop_rate_illusioner:$(drop_rate_illusioner), drop_rate_iron_golem:$(drop_rate_iron_golem), drop_rate_llama:$(drop_rate_llama), drop_rate_magma_cube:$(drop_rate_magma_cube), drop_rate_mooshroom:$(drop_rate_mooshroom), drop_rate_mooshroom_brown:$(drop_rate_mooshroom_brown), drop_rate_mule:$(drop_rate_mule), drop_rate_ocelot:$(drop_rate_ocelot), drop_rate_panda:$(drop_rate_panda), drop_rate_panda_special:$(drop_rate_panda_special), drop_rate_parrot:$(drop_rate_parrot), drop_rate_phantom:$(drop_rate_phantom), drop_rate_pig:$(drop_rate_pig), drop_rate_piglin_brute:$(drop_rate_piglin_brute), drop_rate_piglin:$(drop_rate_piglin), drop_rate_pillager:$(drop_rate_pillager), drop_rate_polar_bear:$(drop_rate_polar_bear), drop_rate_pufferfish:$(drop_rate_pufferfish), drop_rate_rabbit:$(drop_rate_rabbit), drop_rate_ravager:$(drop_rate_ravager), drop_rate_salmon:$(drop_rate_salmon), drop_rate_sheep:$(drop_rate_sheep), drop_rate_shulker:$(drop_rate_shulker), drop_rate_silverfish:$(drop_rate_silverfish), drop_rate_skeleton_horse:$(drop_rate_skeleton_horse), drop_rate_skeleton:$(drop_rate_skeleton), drop_rate_slime:$(drop_rate_slime), drop_rate_sniffer:$(drop_rate_sniffer), drop_rate_snow_golem:$(drop_rate_snow_golem), drop_rate_spider:$(drop_rate_spider), drop_rate_squid:$(drop_rate_squid), drop_rate_stray:$(drop_rate_stray), drop_rate_strider:$(drop_rate_strider), drop_rate_tadpole:$(drop_rate_tadpole), drop_rate_trader_llama:$(drop_rate_trader_llama), drop_rate_tropical_fish:$(drop_rate_tropical_fish), drop_rate_turtle:$(drop_rate_turtle), drop_rate_vex:$(drop_rate_vex), drop_rate_villager:$(drop_rate_villager), drop_rate_vindicator:$(drop_rate_vindicator), drop_rate_wandering_trader:$(drop_rate_wandering_trader), drop_rate_warden:$(drop_rate_warden), drop_rate_witch:$(drop_rate_witch), drop_rate_wither:$(drop_rate_wither), drop_rate_wither_invulnerable:$(drop_rate_wither_invulnerable), drop_rate_wolf:$(drop_rate_wolf), drop_rate_zoglin:$(drop_rate_zoglin), drop_rate_zombie_horse:$(drop_rate_zombie_horse), drop_rate_zombie_villager:$(drop_rate_zombie_villager), drop_rate_zombie:$(drop_rate_zombie), drop_rate_zombified_piglin:$(drop_rate_zombified_piglin)}"\
      }\
    }\
  ]\
}




