$dialog show @s {\
type:"minecraft:multi_action",\ 
  title:"Mob Heads Drop Notifications",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        "Individually enable or disable drop notifications"\
      ] \
    }\
  ],\
  inputs:\
  [\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_allay",\
      label:"Allay Drop Notification",\
      initial:$(drop_notification_allay),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_armadillo",\
      label:"Armadillo Drop Notification",\
      initial:$(drop_notification_armadillo),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_axolotl",\
      label:"Axolotl Drop Notification",\
      initial:$(drop_notification_axolotl),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_bat",\
      label:"Bat Drop Notification",\
      initial:$(drop_notification_bat),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_bee",\
      label:"Bee Drop Notification",\
      initial:$(drop_notification_bee),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_blaze",\
      label:"Blaze Drop Notification",\
      initial:$(drop_notification_blaze),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_bogged",\
      label:"Bogged Drop Notification",\
      initial:$(drop_notification_bogged),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_breeze",\
      label:"Breeze Drop Notification",\
      initial:$(drop_notification_breeze),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_camel",\
      label:"Camel Drop Notification",\
      initial:$(drop_notification_camel),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_camel_husk",\
      label:"Camel Husk Drop Notification",\
      initial:$(drop_notification_camel_husk),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cat",\
      label:"Cat Drop Notification",\
      initial:$(drop_notification_cat),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cave_spider",\
      label:"Cave Spider Drop Notification",\
      initial:$(drop_notification_cave_spider),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_chicken",\
      label:"Chicken Drop Notification",\
      initial:$(drop_notification_chicken),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cod",\
      label:"Cod Drop Notification",\
      initial:$(drop_notification_cod),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_copper_golem",\
      label:"Copper Golem Drop Notification",\
      initial:$(drop_notification_copper_golem),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_cow",\
      label:"Cow Drop Notification",\
      initial:$(drop_notification_cow),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_creaking",\
      label:"Creaking Drop Notification",\
      initial:$(drop_notification_creaking),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_creeper",\
      label:"Creeper Drop Notification",\
      initial:$(drop_notification_creeper),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_dolphin",\
      label:"Dolphin Drop Notification",\
      initial:$(drop_notification_dolphin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_donkey",\
      label:"Donkey Drop Notification",\
      initial:$(drop_notification_donkey),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_drowned",\
      label:"Drowned Drop Notification",\
      initial:$(drop_notification_drowned),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_elder_guardian",\
      label:"Elder Guardian Drop Notification",\
      initial:$(drop_notification_elder_guardian),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ender_dragon",\
      label:"Ender Dragon Drop Notification",\
      initial:$(drop_notification_ender_dragon),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_enderman",\
      label:"Enderman Drop Notification",\
      initial:$(drop_notification_enderman),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_endermite",\
      label:"Endermite Drop Notification",\
      initial:$(drop_notification_endermite),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_evoker",\
      label:"Evoker Drop Notification",\
      initial:$(drop_notification_evoker),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_fox",\
      label:"Fox Drop Notification",\
      initial:$(drop_notification_fox),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_frog",\
      label:"Frog Drop Notification",\
      initial:$(drop_notification_frog),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ghast",\
      label:"Ghast Drop Notification",\
      initial:$(drop_notification_ghast),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_glow_squid",\
      label:"Glow Squid Drop Notification",\
      initial:$(drop_notification_glow_squid),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_goat",\
      label:"Goat Drop Notification",\
      initial:$(drop_notification_goat),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_guardian",\
      label:"Guardian Drop Notification",\
      initial:$(drop_notification_guardian),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_happy_ghast",\
      label:"Happy Ghast Drop Notification",\
      initial:$(drop_notification_happy_ghast),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_hoglin",\
      label:"Hoglin Drop Notification",\
      initial:$(drop_notification_hoglin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_horse",\
      label:"Horse Drop Notification",\
      initial:$(drop_notification_horse),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_husk",\
      label:"Husk Drop Notification",\
      initial:$(drop_notification_husk),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_illusioner",\
      label:"Illusioner Drop Notification",\
      initial:$(drop_notification_illusioner),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_iron_golem",\
      label:"Iron Golem Drop Notification",\
      initial:$(drop_notification_iron_golem),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_llama",\
      label:"Llama Drop Notification",\
      initial:$(drop_notification_llama),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_magma_cube",\
      label:"Magma Cube Drop Notification",\
      initial:$(drop_notification_magma_cube),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_mooshroom",\
      label:"Mooshroom Drop Notification",\
      initial:$(drop_notification_mooshroom),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_mooshroom_brown",\
      label:"Mooshroom Brown Drop Notification",\
      initial:$(drop_notification_mooshroom_brown),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_mule",\
      label:"Mule Drop Notification",\
      initial:$(drop_notification_mule),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_nautilus",\
      label:"Nautilus Drop Notification",\
      initial:$(drop_notification_nautilus),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ocelot",\
      label:"Ocelot Drop Notification",\
      initial:$(drop_notification_ocelot),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_panda",\
      label:"Panda Drop Notification",\
      initial:$(drop_notification_panda),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_parched",\
      label:"Parched Drop Notification",\
      initial:$(drop_notification_parched),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_parrot",\
      label:"Parrot Drop Notification",\
      initial:$(drop_notification_parrot),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_phantom",\
      label:"Phantom Drop Notification",\
      initial:$(drop_notification_phantom),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_pig",\
      label:"Pig Drop Notification",\
      initial:$(drop_notification_pig),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_piglin_brute",\
      label:"Piglin Brute Drop Notification",\
      initial:$(drop_notification_piglin_brute),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_piglin",\
      label:"Piglin Drop Notification",\
      initial:$(drop_notification_piglin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_pillager",\
      label:"Pillager Drop Notification",\
      initial:$(drop_notification_pillager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_polar_bear",\
      label:"Polar Bear Drop Notification",\
      initial:$(drop_notification_polar_bear),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_pufferfish",\
      label:"Pufferfish Drop Notification",\
      initial:$(drop_notification_pufferfish),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_rabbit",\
      label:"Rabbit Drop Notification",\
      initial:$(drop_notification_rabbit),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_ravager",\
      label:"Ravager Drop Notification",\
      initial:$(drop_notification_ravager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_salmon",\
      label:"Salmon Drop Notification",\
      initial:$(drop_notification_salmon),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_sheep",\
      label:"Sheep Drop Notification",\
      initial:$(drop_notification_sheep),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_shulker",\
      label:"Shulker Drop Notification",\
      initial:$(drop_notification_shulker),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_silverfish",\
      label:"Silverfish Drop Notification",\
      initial:$(drop_notification_silverfish),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_skeleton_horse",\
      label:"Skeleton Horse Drop Notification",\
      initial:$(drop_notification_skeleton_horse),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_skeleton",\
      label:"Skeleton Drop Notification",\
      initial:$(drop_notification_skeleton),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_slime",\
      label:"Slime Drop Notification",\
      initial:$(drop_notification_slime),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_sniffer",\
      label:"Sniffer Drop Notification",\
      initial:$(drop_notification_sniffer),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_snow_golem",\
      label:"Snow Golem Drop Notification",\
      initial:$(drop_notification_snow_golem),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_spider",\
      label:"Spider Drop Notification",\
      initial:$(drop_notification_spider),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_squid",\
      label:"Squid Drop Notification",\
      initial:$(drop_notification_squid),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_stray",\
      label:"Stray Drop Notification",\
      initial:$(drop_notification_stray),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_strider",\
      label:"Strider Drop Notification",\
      initial:$(drop_notification_strider),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_tadpole",\
      label:"Tadpole Drop Notification",\
      initial:$(drop_notification_tadpole),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_trader_llama",\
      label:"Trader Llama Drop Notification",\
      initial:$(drop_notification_trader_llama),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_tropical_fish",\
      label:"Tropical Fish Drop Notification",\
      initial:$(drop_notification_tropical_fish),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_turtle",\
      label:"Turtle Drop Notification",\
      initial:$(drop_notification_turtle),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_vex",\
      label:"Vex Drop Notification",\
      initial:$(drop_notification_vex),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_villager",\
      label:"Villager Drop Notification",\
      initial:$(drop_notification_villager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_vindicator",\
      label:"Vindicator Drop Notification",\
      initial:$(drop_notification_vindicator),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wandering_trader",\
      label:"Wandering Trader Drop Notification",\
      initial:$(drop_notification_wandering_trader),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_warden",\
      label:"Warden Drop Notification",\
      initial:$(drop_notification_warden),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_witch",\
      label:"Witch Drop Notification",\
      initial:$(drop_notification_witch),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wither",\
      label:"Wither Drop Notification",\
      initial:$(drop_notification_wither),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wither_invulnerable",\
      label:"Wither Invulnerable Drop Notification",\
      initial:$(drop_notification_wither_invulnerable),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_wolf",\
      label:"Wolf Drop Notification",\
      initial:$(drop_notification_wolf),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zoglin",\
      label:"Zoglin Drop Notification",\
      initial:$(drop_notification_zoglin),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie_horse",\
      label:"Zombie Horse Drop Notification",\
      initial:$(drop_notification_zombie_horse),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie_villager",\
      label:"Zombie Villager Drop Notification",\
      initial:$(drop_notification_zombie_villager),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie",\
      label:"Zombie Drop Notification",\
      initial:$(drop_notification_zombie),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombie_nautilus",\
      label:"Zombie Nautilus Drop Notification",\
      initial:$(drop_notification_zombie_nautilus),\
      on_true:"1",\
      on_false:"0"\
    },\
    {\
      type:"minecraft:boolean",\
      key:"dialog_drop_notification_zombified_piglin",\
      label:"Zombified Piglin Drop Notification",\
      initial:$(drop_notification_zombified_piglin),\
      on_true:"1",\
      on_false:"0"\
    }\
  ],\
  can_close_with_escape:1b,\
  "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mobheads:config/update/update_drop_notifications {dialog_drop_notification_camel_husk:$(dialog_drop_notification_camel_husk), dialog_drop_notification_parched:$(dialog_drop_notification_parched), dialog_drop_notification_nautilus:$(dialog_drop_notification_nautilus), dialog_drop_notification_zombie_nautilus:$(dialog_drop_notification_zombie_nautilus), dialog_drop_notification_copper_golem:$(dialog_drop_notification_copper_golem), dialog_drop_notification_allay:$(dialog_drop_notification_allay), dialog_drop_notification_armadillo:$(dialog_drop_notification_armadillo), dialog_drop_notification_axolotl:$(dialog_drop_notification_axolotl), dialog_drop_notification_bat:$(dialog_drop_notification_bat), dialog_drop_notification_bee:$(dialog_drop_notification_bee), dialog_drop_notification_blaze:$(dialog_drop_notification_blaze), dialog_drop_notification_bogged:$(dialog_drop_notification_bogged), dialog_drop_notification_breeze:$(dialog_drop_notification_breeze), dialog_drop_notification_camel:$(dialog_drop_notification_camel), dialog_drop_notification_cat:$(dialog_drop_notification_cat), dialog_drop_notification_cave_spider:$(dialog_drop_notification_cave_spider), dialog_drop_notification_chicken:$(dialog_drop_notification_chicken), dialog_drop_notification_cod:$(dialog_drop_notification_cod), dialog_drop_notification_cow:$(dialog_drop_notification_cow), dialog_drop_notification_creaking:$(dialog_drop_notification_creaking), dialog_drop_notification_creeper:$(dialog_drop_notification_creeper), dialog_drop_notification_dolphin:$(dialog_drop_notification_dolphin), dialog_drop_notification_donkey:$(dialog_drop_notification_donkey), dialog_drop_notification_drowned:$(dialog_drop_notification_drowned), dialog_drop_notification_elder_guardian:$(dialog_drop_notification_elder_guardian), dialog_drop_notification_ender_dragon:$(dialog_drop_notification_ender_dragon), dialog_drop_notification_enderman:$(dialog_drop_notification_enderman), dialog_drop_notification_endermite:$(dialog_drop_notification_endermite), dialog_drop_notification_evoker:$(dialog_drop_notification_evoker), dialog_drop_notification_fox:$(dialog_drop_notification_fox), dialog_drop_notification_frog:$(dialog_drop_notification_frog), dialog_drop_notification_ghast:$(dialog_drop_notification_ghast), dialog_drop_notification_glow_squid:$(dialog_drop_notification_glow_squid), dialog_drop_notification_goat:$(dialog_drop_notification_goat), dialog_drop_notification_guardian:$(dialog_drop_notification_guardian), dialog_drop_notification_happy_ghast:$(dialog_drop_notification_happy_ghast), dialog_drop_notification_hoglin:$(dialog_drop_notification_hoglin), dialog_drop_notification_horse:$(dialog_drop_notification_horse), dialog_drop_notification_husk:$(dialog_drop_notification_husk), dialog_drop_notification_illusioner:$(dialog_drop_notification_illusioner), dialog_drop_notification_iron_golem:$(dialog_drop_notification_iron_golem), dialog_drop_notification_llama:$(dialog_drop_notification_llama), dialog_drop_notification_magma_cube:$(dialog_drop_notification_magma_cube), dialog_drop_notification_mooshroom:$(dialog_drop_notification_mooshroom), dialog_drop_notification_mooshroom_brown:$(dialog_drop_notification_mooshroom_brown), dialog_drop_notification_mule:$(dialog_drop_notification_mule), dialog_drop_notification_ocelot:$(dialog_drop_notification_ocelot), dialog_drop_notification_panda:$(dialog_drop_notification_panda), dialog_drop_notification_parrot:$(dialog_drop_notification_parrot), dialog_drop_notification_phantom:$(dialog_drop_notification_phantom), dialog_drop_notification_pig:$(dialog_drop_notification_pig), dialog_drop_notification_piglin_brute:$(dialog_drop_notification_piglin_brute), dialog_drop_notification_piglin:$(dialog_drop_notification_piglin), dialog_drop_notification_pillager:$(dialog_drop_notification_pillager), dialog_drop_notification_polar_bear:$(dialog_drop_notification_polar_bear), dialog_drop_notification_pufferfish:$(dialog_drop_notification_pufferfish), dialog_drop_notification_rabbit:$(dialog_drop_notification_rabbit), dialog_drop_notification_ravager:$(dialog_drop_notification_ravager), dialog_drop_notification_salmon:$(dialog_drop_notification_salmon), dialog_drop_notification_sheep:$(dialog_drop_notification_sheep), dialog_drop_notification_shulker:$(dialog_drop_notification_shulker), dialog_drop_notification_silverfish:$(dialog_drop_notification_silverfish), dialog_drop_notification_skeleton_horse:$(dialog_drop_notification_skeleton_horse), dialog_drop_notification_skeleton:$(dialog_drop_notification_skeleton), dialog_drop_notification_slime:$(dialog_drop_notification_slime), dialog_drop_notification_sniffer:$(dialog_drop_notification_sniffer), dialog_drop_notification_snow_golem:$(dialog_drop_notification_snow_golem), dialog_drop_notification_spider:$(dialog_drop_notification_spider), dialog_drop_notification_squid:$(dialog_drop_notification_squid), dialog_drop_notification_stray:$(dialog_drop_notification_stray), dialog_drop_notification_strider:$(dialog_drop_notification_strider), dialog_drop_notification_tadpole:$(dialog_drop_notification_tadpole), dialog_drop_notification_trader_llama:$(dialog_drop_notification_trader_llama), dialog_drop_notification_tropical_fish:$(dialog_drop_notification_tropical_fish), dialog_drop_notification_turtle:$(dialog_drop_notification_turtle), dialog_drop_notification_vex:$(dialog_drop_notification_vex), dialog_drop_notification_villager:$(dialog_drop_notification_villager), dialog_drop_notification_vindicator:$(dialog_drop_notification_vindicator), dialog_drop_notification_wandering_trader:$(dialog_drop_notification_wandering_trader), dialog_drop_notification_warden:$(dialog_drop_notification_warden), dialog_drop_notification_witch:$(dialog_drop_notification_witch), dialog_drop_notification_wither:$(dialog_drop_notification_wither), dialog_drop_notification_wither_invulnerable:$(dialog_drop_notification_wither_invulnerable), dialog_drop_notification_wolf:$(dialog_drop_notification_wolf), dialog_drop_notification_zoglin:$(dialog_drop_notification_zoglin), dialog_drop_notification_zombie_horse:$(dialog_drop_notification_zombie_horse), dialog_drop_notification_zombie_villager:$(dialog_drop_notification_zombie_villager), dialog_drop_notification_zombie:$(dialog_drop_notification_zombie), dialog_drop_notification_zombified_piglin:$(dialog_drop_notification_zombified_piglin)}"\
    }\
  },\
  actions:[\
    {\
      label:"Save",\
      action:{\
        type:"dynamic/run_command",\
        template:"function mobheads:config/update/update_drop_notifications {dialog_drop_notification_camel_husk:$(dialog_drop_notification_camel_husk), dialog_drop_notification_parched:$(dialog_drop_notification_parched), dialog_drop_notification_nautilus:$(dialog_drop_notification_nautilus), dialog_drop_notification_zombie_nautilus:$(dialog_drop_notification_zombie_nautilus), dialog_drop_notification_copper_golem:$(dialog_drop_notification_copper_golem), dialog_drop_notification_allay:$(dialog_drop_notification_allay), dialog_drop_notification_armadillo:$(dialog_drop_notification_armadillo), dialog_drop_notification_axolotl:$(dialog_drop_notification_axolotl), dialog_drop_notification_bat:$(dialog_drop_notification_bat), dialog_drop_notification_bee:$(dialog_drop_notification_bee), dialog_drop_notification_blaze:$(dialog_drop_notification_blaze), dialog_drop_notification_bogged:$(dialog_drop_notification_bogged), dialog_drop_notification_breeze:$(dialog_drop_notification_breeze), dialog_drop_notification_camel:$(dialog_drop_notification_camel), dialog_drop_notification_cat:$(dialog_drop_notification_cat), dialog_drop_notification_cave_spider:$(dialog_drop_notification_cave_spider), dialog_drop_notification_chicken:$(dialog_drop_notification_chicken), dialog_drop_notification_cod:$(dialog_drop_notification_cod), dialog_drop_notification_cow:$(dialog_drop_notification_cow), dialog_drop_notification_creaking:$(dialog_drop_notification_creaking), dialog_drop_notification_creeper:$(dialog_drop_notification_creeper), dialog_drop_notification_dolphin:$(dialog_drop_notification_dolphin), dialog_drop_notification_donkey:$(dialog_drop_notification_donkey), dialog_drop_notification_drowned:$(dialog_drop_notification_drowned), dialog_drop_notification_elder_guardian:$(dialog_drop_notification_elder_guardian), dialog_drop_notification_ender_dragon:$(dialog_drop_notification_ender_dragon), dialog_drop_notification_enderman:$(dialog_drop_notification_enderman), dialog_drop_notification_endermite:$(dialog_drop_notification_endermite), dialog_drop_notification_evoker:$(dialog_drop_notification_evoker), dialog_drop_notification_fox:$(dialog_drop_notification_fox), dialog_drop_notification_frog:$(dialog_drop_notification_frog), dialog_drop_notification_ghast:$(dialog_drop_notification_ghast), dialog_drop_notification_glow_squid:$(dialog_drop_notification_glow_squid), dialog_drop_notification_goat:$(dialog_drop_notification_goat), dialog_drop_notification_guardian:$(dialog_drop_notification_guardian), dialog_drop_notification_happy_ghast:$(dialog_drop_notification_happy_ghast), dialog_drop_notification_hoglin:$(dialog_drop_notification_hoglin), dialog_drop_notification_horse:$(dialog_drop_notification_horse), dialog_drop_notification_husk:$(dialog_drop_notification_husk), dialog_drop_notification_illusioner:$(dialog_drop_notification_illusioner), dialog_drop_notification_iron_golem:$(dialog_drop_notification_iron_golem), dialog_drop_notification_llama:$(dialog_drop_notification_llama), dialog_drop_notification_magma_cube:$(dialog_drop_notification_magma_cube), dialog_drop_notification_mooshroom:$(dialog_drop_notification_mooshroom), dialog_drop_notification_mooshroom_brown:$(dialog_drop_notification_mooshroom_brown), dialog_drop_notification_mule:$(dialog_drop_notification_mule), dialog_drop_notification_ocelot:$(dialog_drop_notification_ocelot), dialog_drop_notification_panda:$(dialog_drop_notification_panda), dialog_drop_notification_parrot:$(dialog_drop_notification_parrot), dialog_drop_notification_phantom:$(dialog_drop_notification_phantom), dialog_drop_notification_pig:$(dialog_drop_notification_pig), dialog_drop_notification_piglin_brute:$(dialog_drop_notification_piglin_brute), dialog_drop_notification_piglin:$(dialog_drop_notification_piglin), dialog_drop_notification_pillager:$(dialog_drop_notification_pillager), dialog_drop_notification_polar_bear:$(dialog_drop_notification_polar_bear), dialog_drop_notification_pufferfish:$(dialog_drop_notification_pufferfish), dialog_drop_notification_rabbit:$(dialog_drop_notification_rabbit), dialog_drop_notification_ravager:$(dialog_drop_notification_ravager), dialog_drop_notification_salmon:$(dialog_drop_notification_salmon), dialog_drop_notification_sheep:$(dialog_drop_notification_sheep), dialog_drop_notification_shulker:$(dialog_drop_notification_shulker), dialog_drop_notification_silverfish:$(dialog_drop_notification_silverfish), dialog_drop_notification_skeleton_horse:$(dialog_drop_notification_skeleton_horse), dialog_drop_notification_skeleton:$(dialog_drop_notification_skeleton), dialog_drop_notification_slime:$(dialog_drop_notification_slime), dialog_drop_notification_sniffer:$(dialog_drop_notification_sniffer), dialog_drop_notification_snow_golem:$(dialog_drop_notification_snow_golem), dialog_drop_notification_spider:$(dialog_drop_notification_spider), dialog_drop_notification_squid:$(dialog_drop_notification_squid), dialog_drop_notification_stray:$(dialog_drop_notification_stray), dialog_drop_notification_strider:$(dialog_drop_notification_strider), dialog_drop_notification_tadpole:$(dialog_drop_notification_tadpole), dialog_drop_notification_trader_llama:$(dialog_drop_notification_trader_llama), dialog_drop_notification_tropical_fish:$(dialog_drop_notification_tropical_fish), dialog_drop_notification_turtle:$(dialog_drop_notification_turtle), dialog_drop_notification_vex:$(dialog_drop_notification_vex), dialog_drop_notification_villager:$(dialog_drop_notification_villager), dialog_drop_notification_vindicator:$(dialog_drop_notification_vindicator), dialog_drop_notification_wandering_trader:$(dialog_drop_notification_wandering_trader), dialog_drop_notification_warden:$(dialog_drop_notification_warden), dialog_drop_notification_witch:$(dialog_drop_notification_witch), dialog_drop_notification_wither:$(dialog_drop_notification_wither), dialog_drop_notification_wither_invulnerable:$(dialog_drop_notification_wither_invulnerable), dialog_drop_notification_wolf:$(dialog_drop_notification_wolf), dialog_drop_notification_zoglin:$(dialog_drop_notification_zoglin), dialog_drop_notification_zombie_horse:$(dialog_drop_notification_zombie_horse), dialog_drop_notification_zombie_villager:$(dialog_drop_notification_zombie_villager), dialog_drop_notification_zombie:$(dialog_drop_notification_zombie), dialog_drop_notification_zombified_piglin:$(dialog_drop_notification_zombified_piglin)}"\
      }\
    }\
  ]\
}




