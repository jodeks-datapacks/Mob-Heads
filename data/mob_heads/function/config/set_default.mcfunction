execute unless data storage mob_heads:root data.drop_notification run data modify storage mob_heads:root data.drop_notification set value 1
data modify storage mob_heads:root data.dialog_drop_notification set value "$(dialog_drop_notification)"
execute unless score &drop_notification mob_heads.config = &drop_notification mob_heads.config run scoreboard players set &drop_notification mob_heads.config 1

# 1 = player, 0 = charged creeper
execute unless data storage mob_heads:root data.killed_by_player_initial run data modify storage mob_heads:root data.killed_by_player_initial set value 1
execute unless data storage mob_heads:root data.killed_by_charged_creeper_initial run data modify storage mob_heads:root data.killed_by_charged_creeper_initial set value 0
data modify storage mob_heads:root data.dialog_killed_by set value "$(dialog_killed_by)"
execute unless score &killed_by_player mob_heads.config = &killed_by_player mob_heads.config run scoreboard players set &killed_by_player mob_heads.config 1

# Drop notification individual settings
  # Drop notification storage
    execute unless data storage mob_heads:root data.drop_notification_allay run data modify storage mob_heads:root data.drop_notification_allay set value 1
    execute unless data storage mob_heads:root data.drop_notification_armadillo run data modify storage mob_heads:root data.drop_notification_armadillo set value 1
    execute unless data storage mob_heads:root data.drop_notification_axolotl run data modify storage mob_heads:root data.drop_notification_axolotl set value 1

    execute unless data storage mob_heads:root data.drop_notification_bat run data modify storage mob_heads:root data.drop_notification_bat set value 1
    execute unless data storage mob_heads:root data.drop_notification_bee run data modify storage mob_heads:root data.drop_notification_bee set value 1
    execute unless data storage mob_heads:root data.drop_notification_blaze run data modify storage mob_heads:root data.drop_notification_blaze set value 1
    execute unless data storage mob_heads:root data.drop_notification_bogged run data modify storage mob_heads:root data.drop_notification_bogged set value 1
    execute unless data storage mob_heads:root data.drop_notification_breeze run data modify storage mob_heads:root data.drop_notification_breeze set value 1

    execute unless data storage mob_heads:root data.drop_notification_camel run data modify storage mob_heads:root data.drop_notification_camel set value 1
    execute unless data storage mob_heads:root data.drop_notification_cat run data modify storage mob_heads:root data.drop_notification_cat set value 1
    execute unless data storage mob_heads:root data.drop_notification_cave_spider run data modify storage mob_heads:root data.drop_notification_cave_spider set value 1
    execute unless data storage mob_heads:root data.drop_notification_chicken run data modify storage mob_heads:root data.drop_notification_chicken set value 1
    execute unless data storage mob_heads:root data.drop_notification_cod run data modify storage mob_heads:root data.drop_notification_cod set value 1
    execute unless data storage mob_heads:root data.drop_notification_cow run data modify storage mob_heads:root data.drop_notification_cow set value 1
    execute unless data storage mob_heads:root data.drop_notification_creaking run data modify storage mob_heads:root data.drop_notification_creaking set value 1
    execute unless data storage mob_heads:root data.drop_notification_creeper run data modify storage mob_heads:root data.drop_notification_creeper set value 1

    execute unless data storage mob_heads:root data.drop_notification_dolphin run data modify storage mob_heads:root data.drop_notification_dolphin set value 1
    execute unless data storage mob_heads:root data.drop_notification_donkey run data modify storage mob_heads:root data.drop_notification_donkey set value 1
    execute unless data storage mob_heads:root data.drop_notification_drowned run data modify storage mob_heads:root data.drop_notification_drowned set value 1

    execute unless data storage mob_heads:root data.drop_notification_elder_guardian run data modify storage mob_heads:root data.drop_notification_elder_guardian set value 1
    execute unless data storage mob_heads:root data.drop_notification_ender_dragon run data modify storage mob_heads:root data.drop_notification_ender_dragon set value 1
    execute unless data storage mob_heads:root data.drop_notification_enderman run data modify storage mob_heads:root data.drop_notification_enderman set value 1
    execute unless data storage mob_heads:root data.drop_notification_endermite run data modify storage mob_heads:root data.drop_notification_endermite set value 1
    execute unless data storage mob_heads:root data.drop_notification_evoker run data modify storage mob_heads:root data.drop_notification_evoker set value 1

    execute unless data storage mob_heads:root data.drop_notification_fox run data modify storage mob_heads:root data.drop_notification_fox set value 1
    execute unless data storage mob_heads:root data.drop_notification_frog run data modify storage mob_heads:root data.drop_notification_frog set value 1

    execute unless data storage mob_heads:root data.drop_notification_ghast run data modify storage mob_heads:root data.drop_notification_ghast set value 1
    execute unless data storage mob_heads:root data.drop_notification_glow_squid run data modify storage mob_heads:root data.drop_notification_glow_squid set value 1
    execute unless data storage mob_heads:root data.drop_notification_goat run data modify storage mob_heads:root data.drop_notification_goat set value 1
    execute unless data storage mob_heads:root data.drop_notification_guardian run data modify storage mob_heads:root data.drop_notification_guardian set value 1

    execute unless data storage mob_heads:root data.drop_notification_happy_ghast run data modify storage mob_heads:root data.drop_notification_happy_ghast set value 1
    execute unless data storage mob_heads:root data.drop_notification_hoglin run data modify storage mob_heads:root data.drop_notification_hoglin set value 1
    execute unless data storage mob_heads:root data.drop_notification_horse run data modify storage mob_heads:root data.drop_notification_horse set value 1
    execute unless data storage mob_heads:root data.drop_notification_husk run data modify storage mob_heads:root data.drop_notification_husk set value 1

    execute unless data storage mob_heads:root data.drop_notification_illusioner run data modify storage mob_heads:root data.drop_notification_illusioner set value 1
    execute unless data storage mob_heads:root data.drop_notification_iron_golem run data modify storage mob_heads:root data.drop_notification_iron_golem set value 1

    execute unless data storage mob_heads:root data.drop_notification_llama run data modify storage mob_heads:root data.drop_notification_llama set value 1

    execute unless data storage mob_heads:root data.drop_notification_magma_cube run data modify storage mob_heads:root data.drop_notification_magma_cube set value 1
    execute unless data storage mob_heads:root data.drop_notification_mooshroom run data modify storage mob_heads:root data.drop_notification_mooshroom set value 1
    execute unless data storage mob_heads:root data.drop_notification_mooshroom_brown run data modify storage mob_heads:root data.drop_notification_mooshroom_brown set value 1
    execute unless data storage mob_heads:root data.drop_notification_mule run data modify storage mob_heads:root data.drop_notification_mule set value 1

    execute unless data storage mob_heads:root data.drop_notification_ocelot run data modify storage mob_heads:root data.drop_notification_ocelot set value 1

    execute unless data storage mob_heads:root data.drop_notification_panda run data modify storage mob_heads:root data.drop_notification_panda set value 1
    execute unless data storage mob_heads:root data.drop_notification_parrot run data modify storage mob_heads:root data.drop_notification_parrot set value 1
    execute unless data storage mob_heads:root data.drop_notification_phantom run data modify storage mob_heads:root data.drop_notification_phantom set value 1

    execute unless data storage mob_heads:root data.drop_notification_pig run data modify storage mob_heads:root data.drop_notification_pig set value 1
    execute unless data storage mob_heads:root data.drop_notification_piglin_brute run data modify storage mob_heads:root data.drop_notification_piglin_brute set value 1
    execute unless data storage mob_heads:root data.drop_notification_piglin run data modify storage mob_heads:root data.drop_notification_piglin set value 1
    execute unless data storage mob_heads:root data.drop_notification_pillager run data modify storage mob_heads:root data.drop_notification_pillager set value 1
    execute unless data storage mob_heads:root data.drop_notification_polar_bear run data modify storage mob_heads:root data.drop_notification_polar_bear set value 1
    execute unless data storage mob_heads:root data.drop_notification_pufferfish run data modify storage mob_heads:root data.drop_notification_pufferfish set value 1

    execute unless data storage mob_heads:root data.drop_notification_rabbit run data modify storage mob_heads:root data.drop_notification_rabbit set value 1
    execute unless data storage mob_heads:root data.drop_notification_ravager run data modify storage mob_heads:root data.drop_notification_ravager set value 1

    execute unless data storage mob_heads:root data.drop_notification_salmon run data modify storage mob_heads:root data.drop_notification_salmon set value 1
    execute unless data storage mob_heads:root data.drop_notification_sheep run data modify storage mob_heads:root data.drop_notification_sheep set value 1
    execute unless data storage mob_heads:root data.drop_notification_shulker run data modify storage mob_heads:root data.drop_notification_shulker set value 1
    execute unless data storage mob_heads:root data.drop_notification_silverfish run data modify storage mob_heads:root data.drop_notification_silverfish set value 1
    execute unless data storage mob_heads:root data.drop_notification_skeleton_horse run data modify storage mob_heads:root data.drop_notification_skeleton_horse set value 1
    execute unless data storage mob_heads:root data.drop_notification_skeleton run data modify storage mob_heads:root data.drop_notification_skeleton set value 1
    execute unless data storage mob_heads:root data.drop_notification_slime run data modify storage mob_heads:root data.drop_notification_slime set value 1
    execute unless data storage mob_heads:root data.drop_notification_sniffer run data modify storage mob_heads:root data.drop_notification_sniffer set value 1
    execute unless data storage mob_heads:root data.drop_notification_snow_golem run data modify storage mob_heads:root data.drop_notification_snow_golem set value 1
    execute unless data storage mob_heads:root data.drop_notification_spider run data modify storage mob_heads:root data.drop_notification_spider set value 1
    execute unless data storage mob_heads:root data.drop_notification_squid run data modify storage mob_heads:root data.drop_notification_squid set value 1
    execute unless data storage mob_heads:root data.drop_notification_stray run data modify storage mob_heads:root data.drop_notification_stray set value 1
    execute unless data storage mob_heads:root data.drop_notification_strider run data modify storage mob_heads:root data.drop_notification_strider set value 1

    execute unless data storage mob_heads:root data.drop_notification_tadpole run data modify storage mob_heads:root data.drop_notification_tadpole set value 1
    execute unless data storage mob_heads:root data.drop_notification_trader_llama run data modify storage mob_heads:root data.drop_notification_trader_llama set value 1
    execute unless data storage mob_heads:root data.drop_notification_tropical_fish run data modify storage mob_heads:root data.drop_notification_tropical_fish set value 1

    execute unless data storage mob_heads:root data.drop_notification_turtle run data modify storage mob_heads:root data.drop_notification_turtle set value 1

    execute unless data storage mob_heads:root data.drop_notification_vex run data modify storage mob_heads:root data.drop_notification_vex set value 1
    execute unless data storage mob_heads:root data.drop_notification_villager run data modify storage mob_heads:root data.drop_notification_villager set value 1
    execute unless data storage mob_heads:root data.drop_notification_vindicator run data modify storage mob_heads:root data.drop_notification_vindicator set value 1

    execute unless data storage mob_heads:root data.drop_notification_wandering_trader run data modify storage mob_heads:root data.drop_notification_wandering_trader set value 1
    execute unless data storage mob_heads:root data.drop_notification_warden run data modify storage mob_heads:root data.drop_notification_warden set value 1
    execute unless data storage mob_heads:root data.drop_notification_witch run data modify storage mob_heads:root data.drop_notification_witch set value 1
    execute unless data storage mob_heads:root data.drop_notification_wither run data modify storage mob_heads:root data.drop_notification_wither set value 1
    execute unless data storage mob_heads:root data.drop_notification_wither_skeleton run data modify storage mob_heads:root data.drop_notification_wither_skeleton set value 1
    execute unless data storage mob_heads:root data.drop_notification_wither_invulnerable run data modify storage mob_heads:root data.drop_notification_wither_invulnerable set value 1
    execute unless data storage mob_heads:root data.drop_notification_wolf run data modify storage mob_heads:root data.drop_notification_wolf set value 1

    execute unless data storage mob_heads:root data.drop_notification_zoglin run data modify storage mob_heads:root data.drop_notification_zoglin set value 1
    execute unless data storage mob_heads:root data.drop_notification_zombie_horse run data modify storage mob_heads:root data.drop_notification_zombie_horse set value 1
    execute unless data storage mob_heads:root data.drop_notification_zombie_villager run data modify storage mob_heads:root data.drop_notification_zombie_villager set value 1
    execute unless data storage mob_heads:root data.drop_notification_zombie run data modify storage mob_heads:root data.drop_notification_zombie set value 1
    execute unless data storage mob_heads:root data.drop_notification_zombified_piglin run data modify storage mob_heads:root data.drop_notification_zombified_piglin set value 1

  # Updates
    execute unless data storage mob_heads:root data.drop_notification_copper_golem run data modify storage mob_heads:root data.drop_notification_copper_golem set value 1
    execute unless data storage mob_heads:root data.drop_notification_nautilus run data modify storage mob_heads:root data.drop_notification_nautilus set value 1
    execute unless data storage mob_heads:root data.drop_notification_parched run data modify storage mob_heads:root data.drop_notification_parched set value 1
    execute unless data storage mob_heads:root data.drop_notification_zombie_nautilus run data modify storage mob_heads:root data.drop_notification_zombie_nautilus set value 1
    execute unless data storage mob_heads:root data.drop_notification_camel_husk run data modify storage mob_heads:root data.drop_notification_camel_husk set value 1

  # Drop notification scoreboard
    execute unless score &allay mob_heads.drop_notification = &allay mob_heads.drop_notification run scoreboard players set &allay mob_heads.drop_notification 1
    execute unless score &armadillo mob_heads.drop_notification = &armadillo mob_heads.drop_notification run scoreboard players set &armadillo mob_heads.drop_notification 1
    execute unless score &axolotl mob_heads.drop_notification = &axolotl mob_heads.drop_notification run scoreboard players set &axolotl mob_heads.drop_notification 1

    execute unless score &bat mob_heads.drop_notification = &bat mob_heads.drop_notification run scoreboard players set &bat mob_heads.drop_notification 1
    execute unless score &bee mob_heads.drop_notification = &bee mob_heads.drop_notification run scoreboard players set &bee mob_heads.drop_notification 1
    execute unless score &blaze mob_heads.drop_notification = &blaze mob_heads.drop_notification run scoreboard players set &blaze mob_heads.drop_notification 1
    execute unless score &bogged mob_heads.drop_notification = &bogged mob_heads.drop_notification run scoreboard players set &bogged mob_heads.drop_notification 1
    execute unless score &breeze mob_heads.drop_notification = &breeze mob_heads.drop_notification run scoreboard players set &breeze mob_heads.drop_notification 1

    execute unless score &camel mob_heads.drop_notification = &camel mob_heads.drop_notification run scoreboard players set &camel mob_heads.drop_notification 1
    execute unless score &cat mob_heads.drop_notification = &cat mob_heads.drop_notification run scoreboard players set &cat mob_heads.drop_notification 1
    execute unless score &cave_spider mob_heads.drop_notification = &cave_spider mob_heads.drop_notification run scoreboard players set &cave_spider mob_heads.drop_notification 1
    execute unless score &chicken mob_heads.drop_notification = &chicken mob_heads.drop_notification run scoreboard players set &chicken mob_heads.drop_notification 1
    execute unless score &cod mob_heads.drop_notification = &cod mob_heads.drop_notification run scoreboard players set &cod mob_heads.drop_notification 1
    execute unless score &cow mob_heads.drop_notification = &cow mob_heads.drop_notification run scoreboard players set &cow mob_heads.drop_notification 1
    execute unless score &creaking mob_heads.drop_notification = &creaking mob_heads.drop_notification run scoreboard players set &creaking mob_heads.drop_notification 1
    execute unless score &creeper mob_heads.drop_notification = &creeper mob_heads.drop_notification run scoreboard players set &creeper mob_heads.drop_notification 1

    execute unless score &dolphin mob_heads.drop_notification = &dolphin mob_heads.drop_notification run scoreboard players set &dolphin mob_heads.drop_notification 1
    execute unless score &donkey mob_heads.drop_notification = &donkey mob_heads.drop_notification run scoreboard players set &donkey mob_heads.drop_notification 1
    execute unless score &drowned mob_heads.drop_notification = &drowned mob_heads.drop_notification run scoreboard players set &drowned mob_heads.drop_notification 1

    execute unless score &elder_guardian mob_heads.drop_notification = &elder_guardian mob_heads.drop_notification run scoreboard players set &elder_guardian mob_heads.drop_notification 1
    execute unless score &ender_dragon mob_heads.drop_notification = &ender_dragon mob_heads.drop_notification run scoreboard players set &ender_dragon mob_heads.drop_notification 1
    execute unless score &enderman mob_heads.drop_notification = &enderman mob_heads.drop_notification run scoreboard players set &enderman mob_heads.drop_notification 1
    execute unless score &endermite mob_heads.drop_notification = &endermite mob_heads.drop_notification run scoreboard players set &endermite mob_heads.drop_notification 1
    execute unless score &evoker mob_heads.drop_notification = &evoker mob_heads.drop_notification run scoreboard players set &evoker mob_heads.drop_notification 1

    execute unless score &fox mob_heads.drop_notification = &fox mob_heads.drop_notification run scoreboard players set &fox mob_heads.drop_notification 1
    execute unless score &frog mob_heads.drop_notification = &frog mob_heads.drop_notification run scoreboard players set &frog mob_heads.drop_notification 1

    execute unless score &ghast mob_heads.drop_notification = &ghast mob_heads.drop_notification run scoreboard players set &ghast mob_heads.drop_notification 1
    execute unless score &glow_squid mob_heads.drop_notification = &glow_squid mob_heads.drop_notification run scoreboard players set &glow_squid mob_heads.drop_notification 1
    execute unless score &goat mob_heads.drop_notification = &goat mob_heads.drop_notification run scoreboard players set &goat mob_heads.drop_notification 1
    execute unless score &guardian mob_heads.drop_notification = &guardian mob_heads.drop_notification run scoreboard players set &guardian mob_heads.drop_notification 1

    execute unless score &happy_ghast mob_heads.drop_notification = &happy_ghast mob_heads.drop_notification run scoreboard players set &happy_ghast mob_heads.drop_notification 1
    execute unless score &hoglin mob_heads.drop_notification = &hoglin mob_heads.drop_notification run scoreboard players set &hoglin mob_heads.drop_notification 1
    execute unless score &horse mob_heads.drop_notification = &horse mob_heads.drop_notification run scoreboard players set &horse mob_heads.drop_notification 1
    execute unless score &husk mob_heads.drop_notification = &husk mob_heads.drop_notification run scoreboard players set &husk mob_heads.drop_notification 1

    execute unless score &illusioner mob_heads.drop_notification = &illusioner mob_heads.drop_notification run scoreboard players set &illusioner mob_heads.drop_notification 1
    execute unless score &iron_golem mob_heads.drop_notification = &iron_golem mob_heads.drop_notification run scoreboard players set &iron_golem mob_heads.drop_notification 1

    execute unless score &llama mob_heads.drop_notification = &llama mob_heads.drop_notification run scoreboard players set &llama mob_heads.drop_notification 1

    execute unless score &magma_cube mob_heads.drop_notification = &magma_cube mob_heads.drop_notification run scoreboard players set &magma_cube mob_heads.drop_notification 1
    execute unless score &mooshroom mob_heads.drop_notification = &mooshroom mob_heads.drop_notification run scoreboard players set &mooshroom mob_heads.drop_notification 1
    execute unless score &mooshroom_brown mob_heads.drop_notification = &mooshroom_brown mob_heads.drop_notification run scoreboard players set &mooshroom_brown mob_heads.drop_notification 1
    execute unless score &mule mob_heads.drop_notification = &mule mob_heads.drop_notification run scoreboard players set &mule mob_heads.drop_notification 1

    execute unless score &ocelot mob_heads.drop_notification = &ocelot mob_heads.drop_notification run scoreboard players set &ocelot mob_heads.drop_notification 1

    execute unless score &panda mob_heads.drop_notification = &panda mob_heads.drop_notification run scoreboard players set &panda mob_heads.drop_notification 1
    execute unless score &parrot mob_heads.drop_notification = &parrot mob_heads.drop_notification run scoreboard players set &parrot mob_heads.drop_notification 1
    execute unless score &phantom mob_heads.drop_notification = &phantom mob_heads.drop_notification run scoreboard players set &phantom mob_heads.drop_notification 1

    execute unless score &pig mob_heads.drop_notification = &pig mob_heads.drop_notification run scoreboard players set &pig mob_heads.drop_notification 1
    execute unless score &piglin_brute mob_heads.drop_notification = &piglin_brute mob_heads.drop_notification run scoreboard players set &piglin_brute mob_heads.drop_notification 1
    execute unless score &piglin mob_heads.drop_notification = &piglin mob_heads.drop_notification run scoreboard players set &piglin mob_heads.drop_notification 1
    execute unless score &pillager mob_heads.drop_notification = &pillager mob_heads.drop_notification run scoreboard players set &pillager mob_heads.drop_notification 1
    execute unless score &polar_bear mob_heads.drop_notification = &polar_bear mob_heads.drop_notification run scoreboard players set &polar_bear mob_heads.drop_notification 1
    execute unless score &pufferfish mob_heads.drop_notification = &pufferfish mob_heads.drop_notification run scoreboard players set &pufferfish mob_heads.drop_notification 1

    execute unless score &rabbit mob_heads.drop_notification = &rabbit mob_heads.drop_notification run scoreboard players set &rabbit mob_heads.drop_notification 1
    execute unless score &ravager mob_heads.drop_notification = &ravager mob_heads.drop_notification run scoreboard players set &ravager mob_heads.drop_notification 1

    execute unless score &salmon mob_heads.drop_notification = &salmon mob_heads.drop_notification run scoreboard players set &salmon mob_heads.drop_notification 1
    execute unless score &sheep mob_heads.drop_notification = &sheep mob_heads.drop_notification run scoreboard players set &sheep mob_heads.drop_notification 1
    execute unless score &shulker mob_heads.drop_notification = &shulker mob_heads.drop_notification run scoreboard players set &shulker mob_heads.drop_notification 1
    execute unless score &silverfish mob_heads.drop_notification = &silverfish mob_heads.drop_notification run scoreboard players set &silverfish mob_heads.drop_notification 1
    execute unless score &skeleton_horse mob_heads.drop_notification = &skeleton_horse mob_heads.drop_notification run scoreboard players set &skeleton_horse mob_heads.drop_notification 1
    execute unless score &skeleton mob_heads.drop_notification = &skeleton mob_heads.drop_notification run scoreboard players set &skeleton mob_heads.drop_notification 1
    execute unless score &slime mob_heads.drop_notification = &slime mob_heads.drop_notification run scoreboard players set &slime mob_heads.drop_notification 1
    execute unless score &sniffer mob_heads.drop_notification = &sniffer mob_heads.drop_notification run scoreboard players set &sniffer mob_heads.drop_notification 1
    execute unless score &snow_golem mob_heads.drop_notification = &snow_golem mob_heads.drop_notification run scoreboard players set &snow_golem mob_heads.drop_notification 1
    execute unless score &spider mob_heads.drop_notification = &spider mob_heads.drop_notification run scoreboard players set &spider mob_heads.drop_notification 1
    execute unless score &squid mob_heads.drop_notification = &squid mob_heads.drop_notification run scoreboard players set &squid mob_heads.drop_notification 1
    execute unless score &stray mob_heads.drop_notification = &stray mob_heads.drop_notification run scoreboard players set &stray mob_heads.drop_notification 1
    execute unless score &strider mob_heads.drop_notification = &strider mob_heads.drop_notification run scoreboard players set &strider mob_heads.drop_notification 1

    execute unless score &tadpole mob_heads.drop_notification = &tadpole mob_heads.drop_notification run scoreboard players set &tadpole mob_heads.drop_notification 1
    execute unless score &trader_llama mob_heads.drop_notification = &trader_llama mob_heads.drop_notification run scoreboard players set &trader_llama mob_heads.drop_notification 1
    execute unless score &tropical_fish mob_heads.drop_notification = &tropical_fish mob_heads.drop_notification run scoreboard players set &tropical_fish mob_heads.drop_notification 1

    execute unless score &turtle mob_heads.drop_notification = &turtle mob_heads.drop_notification run scoreboard players set &turtle mob_heads.drop_notification 1

    execute unless score &vex mob_heads.drop_notification = &vex mob_heads.drop_notification run scoreboard players set &vex mob_heads.drop_notification 1
    execute unless score &villager mob_heads.drop_notification = &villager mob_heads.drop_notification run scoreboard players set &villager mob_heads.drop_notification 1
    execute unless score &vindicator mob_heads.drop_notification = &vindicator mob_heads.drop_notification run scoreboard players set &vindicator mob_heads.drop_notification 1

    execute unless score &wandering_trader mob_heads.drop_notification = &wandering_trader mob_heads.drop_notification run scoreboard players set &wandering_trader mob_heads.drop_notification 1
    execute unless score &warden mob_heads.drop_notification = &warden mob_heads.drop_notification run scoreboard players set &warden mob_heads.drop_notification 1
    execute unless score &witch mob_heads.drop_notification = &witch mob_heads.drop_notification run scoreboard players set &witch mob_heads.drop_notification 1
    execute unless score &wither mob_heads.drop_notification = &wither mob_heads.drop_notification run scoreboard players set &wither mob_heads.drop_notification 1
    execute unless score &wither_invulnerable mob_heads.drop_notification = &wither_invulnerable mob_heads.drop_notification run scoreboard players set &wither_invulnerable mob_heads.drop_notification 1
    execute unless score &wither_skeleton mob_heads.drop_notification = &wither_skeleton mob_heads.drop_notification run scoreboard players set &wither_skeleton mob_heads.drop_notification 1
    execute unless score &wolf mob_heads.drop_notification = &wolf mob_heads.drop_notification run scoreboard players set &wolf mob_heads.drop_notification 1

    execute unless score &zoglin mob_heads.drop_notification = &zoglin mob_heads.drop_notification run scoreboard players set &zoglin mob_heads.drop_notification 1
    execute unless score &zombie_horse mob_heads.drop_notification = &zombie_horse mob_heads.drop_notification run scoreboard players set &zombie_horse mob_heads.drop_notification 1
    execute unless score &zombie_villager mob_heads.drop_notification = &zombie_villager mob_heads.drop_notification run scoreboard players set &zombie_villager mob_heads.drop_notification 1
    execute unless score &zombie mob_heads.drop_notification = &zombie mob_heads.drop_notification run scoreboard players set &zombie mob_heads.drop_notification 1
    execute unless score &zombified_piglin mob_heads.drop_notification = &zombified_piglin mob_heads.drop_notification run scoreboard players set &zombified_piglin mob_heads.drop_notification 1

  # Updates
    execute unless score &copper_golem mob_heads.drop_notification = &copper_golem mob_heads.drop_notification run scoreboard players set &copper_golem mob_heads.drop_notification 1
    execute unless score &nautilus mob_heads.drop_notification = &nautilus mob_heads.drop_notification run scoreboard players set &nautilus mob_heads.drop_notification 1
    execute unless score &parched mob_heads.drop_notification = &parched mob_heads.drop_notification run scoreboard players set &parched mob_heads.drop_notification 1
    execute unless score &zombie_nautilus mob_heads.drop_notification = &zombie_nautilus mob_heads.drop_notification run scoreboard players set &zombie_nautilus mob_heads.drop_notification 1
    execute unless score &camel_husk mob_heads.drop_notification = &camel_husk mob_heads.drop_notification run scoreboard players set &camel_husk mob_heads.drop_notification 1

  # Drop notification dialog
    data modify storage mob_heads:root data.dialog_drop_notification_allay set value "$(dialog_drop_notification_allay)"
    data modify storage mob_heads:root data.dialog_drop_notification_armadillo set value "$(dialog_drop_notification_armadillo)"
    data modify storage mob_heads:root data.dialog_drop_notification_axolotl set value "$(dialog_drop_notification_axolotl)"
    data modify storage mob_heads:root data.dialog_drop_notification_bat set value "$(dialog_drop_notification_bat)"
    data modify storage mob_heads:root data.dialog_drop_notification_bee set value "$(dialog_drop_notification_bee)"
    data modify storage mob_heads:root data.dialog_drop_notification_blaze set value "$(dialog_drop_notification_blaze)"
    data modify storage mob_heads:root data.dialog_drop_notification_bogged set value "$(dialog_drop_notification_bogged)"
    data modify storage mob_heads:root data.dialog_drop_notification_breeze set value "$(dialog_drop_notification_breeze)"
    data modify storage mob_heads:root data.dialog_drop_notification_camel set value "$(dialog_drop_notification_camel)"
    data modify storage mob_heads:root data.dialog_drop_notification_cat set value "$(dialog_drop_notification_cat)"
    data modify storage mob_heads:root data.dialog_drop_notification_cave_spider set value "$(dialog_drop_notification_cave_spider)"
    data modify storage mob_heads:root data.dialog_drop_notification_chicken set value "$(dialog_drop_notification_chicken)"
    data modify storage mob_heads:root data.dialog_drop_notification_cod set value "$(dialog_drop_notification_cod)"
    data modify storage mob_heads:root data.dialog_drop_notification_cow set value "$(dialog_drop_notification_cow)"
    data modify storage mob_heads:root data.dialog_drop_notification_creaking set value "$(dialog_drop_notification_creaking)"
    data modify storage mob_heads:root data.dialog_drop_notification_creeper set value "$(dialog_drop_notification_creeper)"
    data modify storage mob_heads:root data.dialog_drop_notification_dolphin set value "$(dialog_drop_notification_dolphin)"
    data modify storage mob_heads:root data.dialog_drop_notification_donkey set value "$(dialog_drop_notification_donkey)"
    data modify storage mob_heads:root data.dialog_drop_notification_drowned set value "$(dialog_drop_notification_drowned)"
    data modify storage mob_heads:root data.dialog_drop_notification_elder_guardian set value "$(dialog_drop_notification_elder_guardian)"
    data modify storage mob_heads:root data.dialog_drop_notification_ender_dragon set value "$(dialog_drop_notification_ender_dragon)"
    data modify storage mob_heads:root data.dialog_drop_notification_enderman set value "$(dialog_drop_notification_enderman)"
    data modify storage mob_heads:root data.dialog_drop_notification_endermite set value "$(dialog_drop_notification_endermite)"
    data modify storage mob_heads:root data.dialog_drop_notification_evoker set value "$(dialog_drop_notification_evoker)"
    data modify storage mob_heads:root data.dialog_drop_notification_fox set value "$(dialog_drop_notification_fox)"
    data modify storage mob_heads:root data.dialog_drop_notification_frog set value "$(dialog_drop_notification_frog)"
    data modify storage mob_heads:root data.dialog_drop_notification_ghast set value "$(dialog_drop_notification_ghast)"
    data modify storage mob_heads:root data.dialog_drop_notification_glow_squid set value "$(dialog_drop_notification_glow_squid)"
    data modify storage mob_heads:root data.dialog_drop_notification_goat set value "$(dialog_drop_notification_goat)"
    data modify storage mob_heads:root data.dialog_drop_notification_guardian set value "$(dialog_drop_notification_guardian)"
    data modify storage mob_heads:root data.dialog_drop_notification_happy_ghast set value "$(dialog_drop_notification_happy_ghast)"
    data modify storage mob_heads:root data.dialog_drop_notification_hoglin set value "$(dialog_drop_notification_hoglin)"
    data modify storage mob_heads:root data.dialog_drop_notification_horse set value "$(dialog_drop_notification_horse)"
    data modify storage mob_heads:root data.dialog_drop_notification_husk set value "$(dialog_drop_notification_husk)"
    data modify storage mob_heads:root data.dialog_drop_notification_illusioner set value "$(dialog_drop_notification_illusioner)"
    data modify storage mob_heads:root data.dialog_drop_notification_iron_golem set value "$(dialog_drop_notification_iron_golem)"
    data modify storage mob_heads:root data.dialog_drop_notification_llama set value "$(dialog_drop_notification_llama)"
    data modify storage mob_heads:root data.dialog_drop_notification_magma_cube set value "$(dialog_drop_notification_magma_cube)"
    data modify storage mob_heads:root data.dialog_drop_notification_mooshroom set value "$(dialog_drop_notification_mooshroom)"
    data modify storage mob_heads:root data.dialog_drop_notification_mooshroom_brown set value "$(dialog_drop_notification_mooshroom_brown)"
    data modify storage mob_heads:root data.dialog_drop_notification_mule set value "$(dialog_drop_notification_mule)"
    data modify storage mob_heads:root data.dialog_drop_notification_ocelot set value "$(dialog_drop_notification_ocelot)"
    data modify storage mob_heads:root data.dialog_drop_notification_panda set value "$(dialog_drop_notification_panda)"
    data modify storage mob_heads:root data.dialog_drop_notification_parrot set value "$(dialog_drop_notification_parrot)"
    data modify storage mob_heads:root data.dialog_drop_notification_phantom set value "$(dialog_drop_notification_phantom)"
    data modify storage mob_heads:root data.dialog_drop_notification_pig set value "$(dialog_drop_notification_pig)"
    data modify storage mob_heads:root data.dialog_drop_notification_piglin_brute set value "$(dialog_drop_notification_piglin_brute)"
    data modify storage mob_heads:root data.dialog_drop_notification_piglin set value "$(dialog_drop_notification_piglin)"
    data modify storage mob_heads:root data.dialog_drop_notification_pillager set value "$(dialog_drop_notification_pillager)"
    data modify storage mob_heads:root data.dialog_drop_notification_polar_bear set value "$(dialog_drop_notification_polar_bear)"
    data modify storage mob_heads:root data.dialog_drop_notification_pufferfish set value "$(dialog_drop_notification_pufferfish)"
    data modify storage mob_heads:root data.dialog_drop_notification_rabbit set value "$(dialog_drop_notification_rabbit)"
    data modify storage mob_heads:root data.dialog_drop_notification_ravager set value "$(dialog_drop_notification_ravager)"
    data modify storage mob_heads:root data.dialog_drop_notification_salmon set value "$(dialog_drop_notification_salmon)"
    data modify storage mob_heads:root data.dialog_drop_notification_sheep set value "$(dialog_drop_notification_sheep)"
    data modify storage mob_heads:root data.dialog_drop_notification_shulker set value "$(dialog_drop_notification_shulker)"
    data modify storage mob_heads:root data.dialog_drop_notification_silverfish set value "$(dialog_drop_notification_silverfish)"
    data modify storage mob_heads:root data.dialog_drop_notification_skeleton_horse set value "$(dialog_drop_notification_skeleton_horse)"
    data modify storage mob_heads:root data.dialog_drop_notification_skeleton set value "$(dialog_drop_notification_skeleton)"
    data modify storage mob_heads:root data.dialog_drop_notification_slime set value "$(dialog_drop_notification_slime)"
    data modify storage mob_heads:root data.dialog_drop_notification_sniffer set value "$(dialog_drop_notification_sniffer)"
    data modify storage mob_heads:root data.dialog_drop_notification_snow_golem set value "$(dialog_drop_notification_snow_golem)"
    data modify storage mob_heads:root data.dialog_drop_notification_spider set value "$(dialog_drop_notification_spider)"
    data modify storage mob_heads:root data.dialog_drop_notification_squid set value "$(dialog_drop_notification_squid)"
    data modify storage mob_heads:root data.dialog_drop_notification_stray set value "$(dialog_drop_notification_stray)"
    data modify storage mob_heads:root data.dialog_drop_notification_strider set value "$(dialog_drop_notification_strider)"
    data modify storage mob_heads:root data.dialog_drop_notification_tadpole set value "$(dialog_drop_notification_tadpole)"
    data modify storage mob_heads:root data.dialog_drop_notification_trader_llama set value "$(dialog_drop_notification_trader_llama)"
    data modify storage mob_heads:root data.dialog_drop_notification_tropical_fish set value "$(dialog_drop_notification_tropical_fish)"
    data modify storage mob_heads:root data.dialog_drop_notification_turtle set value "$(dialog_drop_notification_turtle)"
    data modify storage mob_heads:root data.dialog_drop_notification_vex set value "$(dialog_drop_notification_vex)"
    data modify storage mob_heads:root data.dialog_drop_notification_villager set value "$(dialog_drop_notification_villager)"
    data modify storage mob_heads:root data.dialog_drop_notification_vindicator set value "$(dialog_drop_notification_vindicator)"
    data modify storage mob_heads:root data.dialog_drop_notification_wandering_trader set value "$(dialog_drop_notification_wandering_trader)"
    data modify storage mob_heads:root data.dialog_drop_notification_warden set value "$(dialog_drop_notification_warden)"
    data modify storage mob_heads:root data.dialog_drop_notification_witch set value "$(dialog_drop_notification_witch)"
    data modify storage mob_heads:root data.dialog_drop_notification_wither set value "$(dialog_drop_notification_wither)"
    data modify storage mob_heads:root data.dialog_drop_notification_wither_invulnerable set value "$(dialog_drop_notification_wither_invulnerable)"
    data modify storage mob_heads:root data.dialog_drop_notification_wither_skeleton set value "$(dialog_drop_notification_wither_skeleton)"
    data modify storage mob_heads:root data.dialog_drop_notification_wolf set value "$(dialog_drop_notification_wolf)"
    data modify storage mob_heads:root data.dialog_drop_notification_zoglin set value "$(dialog_drop_notification_zoglin)"
    data modify storage mob_heads:root data.dialog_drop_notification_zombie_horse set value "$(dialog_drop_notification_zombie_horse)"
    data modify storage mob_heads:root data.dialog_drop_notification_zombie_villager set value "$(dialog_drop_notification_zombie_villager)"
    data modify storage mob_heads:root data.dialog_drop_notification_zombie set value "$(dialog_drop_notification_zombie)"
    data modify storage mob_heads:root data.dialog_drop_notification_zombified_piglin set value "$(dialog_drop_notification_zombified_piglin)"

  # Updates
    data modify storage mob_heads:root data.dialog_drop_notification_camel_husk set value "$(dialog_drop_notification_camel_husk)"
    data modify storage mob_heads:root data.dialog_drop_notification_zombie_nautilus set value "$(dialog_drop_notification_zombie_nautilus)"
    data modify storage mob_heads:root data.dialog_drop_notification_parched set value "$(dialog_drop_notification_parched)"
    data modify storage mob_heads:root data.dialog_drop_notification_nautilus set value "$(dialog_drop_notification_nautilus)"
    data modify storage mob_heads:root data.dialog_drop_notification_copper_golem set value "$(dialog_drop_notification_copper_golem)"

# Drop rate multiplier
  execute unless data storage mob_heads:root data.drop_rate_multiplier run data modify storage mob_heads:root data.drop_rate_multiplier set value 1
  data modify storage mob_heads:root data.dialog_drop_rate_multiplier set value "$(dialog_drop_rate_multiplier)"

# Head drop advancement
  execute unless data storage mob_heads:root data.head_drop_advancement run data modify storage mob_heads:root data.head_drop_advancement set value 2
  data modify storage mob_heads:root data.dialog_head_drop_advancement set value "$(dialog_head_drop_advancement)"
  execute unless score &head_drop_advancement mob_heads.config = &head_drop_advancement mob_heads.config run scoreboard players set &head_drop_advancement mob_heads.config 2

# Drop message 
  # Drop message text
    execute unless data storage mob_heads:root data.drop_message_1 run data modify storage mob_heads:root data.drop_message_1 set value "A %s just dropped its head!"
    execute unless data storage mob_heads:root data.drop_message_2 run data modify storage mob_heads:root data.drop_message_2 set value "A %s head has been dropped!"
    execute unless data storage mob_heads:root data.drop_message_3 run data modify storage mob_heads:root data.drop_message_3 set value "A %s lost its head!"
    execute unless data storage mob_heads:root data.drop_message_4 run data modify storage mob_heads:root data.drop_message_4 set value "Whoa! A %s just lost its head!"
    execute unless data storage mob_heads:root data.drop_message_5 run data modify storage mob_heads:root data.drop_message_5 set value "A head from %s lies on the ground, lifeless"
    execute unless data storage mob_heads:root data.drop_message_6 run data modify storage mob_heads:root data.drop_message_6 set value "Legends say taking the head of %s grants power"
    execute unless data storage mob_heads:root data.drop_message_7 run data modify storage mob_heads:root data.drop_message_7 set value "Heads up! A %s lost its head!"
    execute unless data storage mob_heads:root data.drop_message_8 run data modify storage mob_heads:root data.drop_message_8 set value "Look what we have here - a %s head!"
    execute unless data storage mob_heads:root data.drop_message_9 run data modify storage mob_heads:root data.drop_message_9 set value "A %s dropped a head!"
    execute unless data storage mob_heads:root data.drop_message_10 run data modify storage mob_heads:root data.drop_message_10 set value "A new %s head has been dropped!"

  # Drop message dialog
    data modify storage mob_heads:root data.dialog_drop_message_1 set value "'$(dialog_drop_message_1)'"
    data modify storage mob_heads:root data.dialog_drop_message_2 set value "'$(dialog_drop_message_2)'"
    data modify storage mob_heads:root data.dialog_drop_message_3 set value "'$(dialog_drop_message_3)'"
    data modify storage mob_heads:root data.dialog_drop_message_4 set value "'$(dialog_drop_message_4)'"
    data modify storage mob_heads:root data.dialog_drop_message_5 set value "'$(dialog_drop_message_5)'"
    data modify storage mob_heads:root data.dialog_drop_message_6 set value "'$(dialog_drop_message_6)'"
    data modify storage mob_heads:root data.dialog_drop_message_7 set value "'$(dialog_drop_message_7)'"
    data modify storage mob_heads:root data.dialog_drop_message_8 set value "'$(dialog_drop_message_8)'"
    data modify storage mob_heads:root data.dialog_drop_message_9 set value "'$(dialog_drop_message_9)'"
    data modify storage mob_heads:root data.dialog_drop_message_10 set value "'$(dialog_drop_message_10)'"

  execute unless score &drop_message mob_heads.config = &drop_message mob_heads.config run scoreboard players set &drop_message mob_heads.config 1

# Drop rates
  # Default drop rates
    execute unless data storage mob_heads:root data.allay run data modify storage mob_heads:root data.allay set value 0.01
    execute unless data storage mob_heads:root data.armadillo run data modify storage mob_heads:root data.armadillo set value 0.01
    execute unless data storage mob_heads:root data.axolotl run data modify storage mob_heads:root data.axolotl set value 0.01
    execute unless data storage mob_heads:root data.axolotl_blue run data modify storage mob_heads:root data.axolotl_blue set value 0.05

    execute unless data storage mob_heads:root data.bat run data modify storage mob_heads:root data.bat set value 0.01
    execute unless data storage mob_heads:root data.bee run data modify storage mob_heads:root data.bee set value 0.01
    execute unless data storage mob_heads:root data.blaze run data modify storage mob_heads:root data.blaze set value 0.005
    execute unless data storage mob_heads:root data.bogged run data modify storage mob_heads:root data.bogged set value 0.01
    execute unless data storage mob_heads:root data.breeze run data modify storage mob_heads:root data.breeze set value 0.01

    execute unless data storage mob_heads:root data.camel run data modify storage mob_heads:root data.camel set value 0.02
    execute unless data storage mob_heads:root data.cat run data modify storage mob_heads:root data.cat set value 0.02
    execute unless data storage mob_heads:root data.cave_spider run data modify storage mob_heads:root data.cave_spider set value 0.005
    execute unless data storage mob_heads:root data.chicken run data modify storage mob_heads:root data.chicken set value 0.001
    execute unless data storage mob_heads:root data.cod run data modify storage mob_heads:root data.cod set value 0.001
    execute unless data storage mob_heads:root data.cow run data modify storage mob_heads:root data.cow set value 0.001
    execute unless data storage mob_heads:root data.creaking run data modify storage mob_heads:root data.creaking set value 0.001
    execute unless data storage mob_heads:root data.creeper run data modify storage mob_heads:root data.creeper set value 0.001
    execute unless data storage mob_heads:root data.creeper_charged run data modify storage mob_heads:root data.creeper_charged set value 0.02

    execute unless data storage mob_heads:root data.dolphin run data modify storage mob_heads:root data.dolphin set value 0.01
    execute unless data storage mob_heads:root data.donkey run data modify storage mob_heads:root data.donkey set value 0.01
    execute unless data storage mob_heads:root data.drowned run data modify storage mob_heads:root data.drowned set value 0.001

    execute unless data storage mob_heads:root data.elder_guardian run data modify storage mob_heads:root data.elder_guardian set value 0.05
    execute unless data storage mob_heads:root data.ender_dragon run data modify storage mob_heads:root data.ender_dragon set value 0.05
    execute unless data storage mob_heads:root data.enderman run data modify storage mob_heads:root data.enderman set value 0.001
    execute unless data storage mob_heads:root data.endermite run data modify storage mob_heads:root data.endermite set value 0.01
    execute unless data storage mob_heads:root data.evoker run data modify storage mob_heads:root data.evoker set value 0.01

    execute unless data storage mob_heads:root data.fox run data modify storage mob_heads:root data.fox set value 0.01
    execute unless data storage mob_heads:root data.frog run data modify storage mob_heads:root data.frog set value 0.01

    execute unless data storage mob_heads:root data.ghast run data modify storage mob_heads:root data.ghast set value 0.005
    execute unless data storage mob_heads:root data.glow_squid run data modify storage mob_heads:root data.glow_squid set value 0.01
    execute unless data storage mob_heads:root data.goat run data modify storage mob_heads:root data.goat set value 0.01
    execute unless data storage mob_heads:root data.guardian run data modify storage mob_heads:root data.guardian set value 0.001

    execute unless data storage mob_heads:root data.happy_ghast run data modify storage mob_heads:root data.happy_ghast set value 0.01
    execute unless data storage mob_heads:root data.hoglin run data modify storage mob_heads:root data.hoglin set value 0.005
    execute unless data storage mob_heads:root data.horse run data modify storage mob_heads:root data.horse set value 0.01
    execute unless data storage mob_heads:root data.husk run data modify storage mob_heads:root data.husk set value 0.005

    execute unless data storage mob_heads:root data.illusioner run data modify storage mob_heads:root data.illusioner set value 0.005
    execute unless data storage mob_heads:root data.iron_golem run data modify storage mob_heads:root data.iron_golem set value 0.005

    execute unless data storage mob_heads:root data.llama run data modify storage mob_heads:root data.llama set value 0.01

    execute unless data storage mob_heads:root data.magma_cube run data modify storage mob_heads:root data.magma_cube set value 0.01
    execute unless data storage mob_heads:root data.mooshroom run data modify storage mob_heads:root data.mooshroom set value 0.01
    execute unless data storage mob_heads:root data.mooshroom_brown run data modify storage mob_heads:root data.mooshroom_brown set value 0.02
    execute unless data storage mob_heads:root data.mule run data modify storage mob_heads:root data.mule set value 0.01

    execute unless data storage mob_heads:root data.ocelot run data modify storage mob_heads:root data.ocelot set value 0.01

    execute unless data storage mob_heads:root data.panda run data modify storage mob_heads:root data.panda set value 0.01
    execute unless data storage mob_heads:root data.panda_special run data modify storage mob_heads:root data.panda_special set value 0.02
    execute unless data storage mob_heads:root data.parrot run data modify storage mob_heads:root data.parrot set value 0.01
    execute unless data storage mob_heads:root data.phantom run data modify storage mob_heads:root data.phantom set value 0.005
    execute unless data storage mob_heads:root data.pig run data modify storage mob_heads:root data.pig set value 0.001
    execute unless data storage mob_heads:root data.piglin_brute run data modify storage mob_heads:root data.piglin_brute set value 0.02
    execute unless data storage mob_heads:root data.piglin run data modify storage mob_heads:root data.piglin set value 0.005
    execute unless data storage mob_heads:root data.pillager run data modify storage mob_heads:root data.pillager set value 0.001
    execute unless data storage mob_heads:root data.polar_bear run data modify storage mob_heads:root data.polar_bear set value 0.01
    execute unless data storage mob_heads:root data.pufferfish run data modify storage mob_heads:root data.pufferfish set value 0.01

    execute unless data storage mob_heads:root data.rabbit run data modify storage mob_heads:root data.rabbit set value 0.01
    execute unless data storage mob_heads:root data.ravager run data modify storage mob_heads:root data.ravager set value 0.01

    execute unless data storage mob_heads:root data.salmon run data modify storage mob_heads:root data.salmon set value 0.005
    execute unless data storage mob_heads:root data.sheep run data modify storage mob_heads:root data.sheep set value 0.001
    execute unless data storage mob_heads:root data.shulker run data modify storage mob_heads:root data.shulker set value 0.01
    execute unless data storage mob_heads:root data.silverfish run data modify storage mob_heads:root data.silverfish set value 0.001
    execute unless data storage mob_heads:root data.skeleton_horse run data modify storage mob_heads:root data.skeleton_horse set value 0.02
    execute unless data storage mob_heads:root data.skeleton run data modify storage mob_heads:root data.skeleton set value 0.001
    execute unless data storage mob_heads:root data.slime run data modify storage mob_heads:root data.slime set value 0.001
    execute unless data storage mob_heads:root data.sniffer run data modify storage mob_heads:root data.sniffer set value 0.01
    execute unless data storage mob_heads:root data.snow_golem run data modify storage mob_heads:root data.snow_golem set value 0.001
    execute unless data storage mob_heads:root data.spider run data modify storage mob_heads:root data.spider set value 0.001
    execute unless data storage mob_heads:root data.squid run data modify storage mob_heads:root data.squid set value 0.005
    execute unless data storage mob_heads:root data.stray run data modify storage mob_heads:root data.stray set value 0.005
    execute unless data storage mob_heads:root data.strider run data modify storage mob_heads:root data.strider set value 0.01

    execute unless data storage mob_heads:root data.tadpole run data modify storage mob_heads:root data.tadpole set value 0.01
    execute unless data storage mob_heads:root data.trader_llama run data modify storage mob_heads:root data.trader_llama set value 0.005
    execute unless data storage mob_heads:root data.tropical_fish run data modify storage mob_heads:root data.tropical_fish set value 0.01
    execute unless data storage mob_heads:root data.turtle run data modify storage mob_heads:root data.turtle set value 0.01

    execute unless data storage mob_heads:root data.vex run data modify storage mob_heads:root data.vex set value 0.01
    execute unless data storage mob_heads:root data.villager run data modify storage mob_heads:root data.villager set value 0.01
    execute unless data storage mob_heads:root data.vindicator run data modify storage mob_heads:root data.vindicator set value 0.005

    execute unless data storage mob_heads:root data.wandering_trader run data modify storage mob_heads:root data.wandering_trader set value 0.01
    execute unless data storage mob_heads:root data.warden run data modify storage mob_heads:root data.warden set value 0.05
    execute unless data storage mob_heads:root data.witch run data modify storage mob_heads:root data.witch set value 0.001
    execute unless data storage mob_heads:root data.wither run data modify storage mob_heads:root data.wither set value 0.05
    execute unless data storage mob_heads:root data.wither_invulnerable run data modify storage mob_heads:root data.wither_invulnerable set value 0.01
    execute unless data storage mob_heads:root data.wolf run data modify storage mob_heads:root data.wolf set value 0.01

    execute unless data storage mob_heads:root data.zoglin run data modify storage mob_heads:root data.zoglin set value 0.01
    execute unless data storage mob_heads:root data.zombie_horse run data modify storage mob_heads:root data.zombie_horse set value 0.01
    execute unless data storage mob_heads:root data.zombie_villager run data modify storage mob_heads:root data.zombie_villager set value 0.03
    execute unless data storage mob_heads:root data.zombie run data modify storage mob_heads:root data.zombie set value 0.001
    execute unless data storage mob_heads:root data.zombified_piglin run data modify storage mob_heads:root data.zombified_piglin set value 0.001

  # Updates
    execute unless data storage mob_heads:root data.copper_golem run data modify storage mob_heads:root data.copper_golem set value 0.005
    execute unless data storage mob_heads:root data.nautilus run data modify storage mob_heads:root data.nautilus set value 0.01
    execute unless data storage mob_heads:root data.parched run data modify storage mob_heads:root data.parched set value 0.01
    execute unless data storage mob_heads:root data.zombie_nautilus run data modify storage mob_heads:root data.zombie_nautilus set value 0.01
    execute unless data storage mob_heads:root data.camel_husk run data modify storage mob_heads:root data.camel_husk set value 0.03

  # Initial drop rates
    execute unless data storage mob_heads:root data.allay_init run data modify storage mob_heads:root data.allay_init set value 0.01
    execute unless data storage mob_heads:root data.armadillo_init run data modify storage mob_heads:root data.armadillo_init set value 0.01
    execute unless data storage mob_heads:root data.axolotl_init run data modify storage mob_heads:root data.axolotl_init set value 0.01
    execute unless data storage mob_heads:root data.axolotl_blue_init run data modify storage mob_heads:root data.axolotl_blue_init set value 0.05

    execute unless data storage mob_heads:root data.bat_init run data modify storage mob_heads:root data.bat_init set value 0.01
    execute unless data storage mob_heads:root data.bee_init run data modify storage mob_heads:root data.bee_init set value 0.01
    execute unless data storage mob_heads:root data.blaze_init run data modify storage mob_heads:root data.blaze_init set value 0.005
    execute unless data storage mob_heads:root data.bogged_init run data modify storage mob_heads:root data.bogged_init set value 0.01
    execute unless data storage mob_heads:root data.breeze_init run data modify storage mob_heads:root data.breeze_init set value 0.01

    execute unless data storage mob_heads:root data.camel_init run data modify storage mob_heads:root data.camel_init set value 0.02
    execute unless data storage mob_heads:root data.cat_init run data modify storage mob_heads:root data.cat_init set value 0.02
    execute unless data storage mob_heads:root data.cave_spider_init run data modify storage mob_heads:root data.cave_spider_init set value 0.005
    execute unless data storage mob_heads:root data.chicken_init run data modify storage mob_heads:root data.chicken_init set value 0.001
    execute unless data storage mob_heads:root data.cod_init run data modify storage mob_heads:root data.cod_init set value 0.001
    execute unless data storage mob_heads:root data.cow_init run data modify storage mob_heads:root data.cow_init set value 0.001
    execute unless data storage mob_heads:root data.creaking_init run data modify storage mob_heads:root data.creaking_init set value 0.001
    execute unless data storage mob_heads:root data.creeper_init run data modify storage mob_heads:root data.creeper_init set value 0.001
    execute unless data storage mob_heads:root data.creeper_charged_init run data modify storage mob_heads:root data.creeper_charged_init set value 0.02

    execute unless data storage mob_heads:root data.dolphin_init run data modify storage mob_heads:root data.dolphin_init set value 0.01
    execute unless data storage mob_heads:root data.donkey_init run data modify storage mob_heads:root data.donkey_init set value 0.01
    execute unless data storage mob_heads:root data.drowned_init run data modify storage mob_heads:root data.drowned_init set value 0.001

    execute unless data storage mob_heads:root data.elder_guardian_init run data modify storage mob_heads:root data.elder_guardian_init set value 0.05
    execute unless data storage mob_heads:root data.ender_dragon_init run data modify storage mob_heads:root data.ender_dragon_init set value 0.05
    execute unless data storage mob_heads:root data.enderman_init run data modify storage mob_heads:root data.enderman_init set value 0.001
    execute unless data storage mob_heads:root data.endermite_init run data modify storage mob_heads:root data.endermite_init set value 0.01
    execute unless data storage mob_heads:root data.evoker_init run data modify storage mob_heads:root data.evoker_init set value 0.01

    execute unless data storage mob_heads:root data.fox_init run data modify storage mob_heads:root data.fox_init set value 0.01
    execute unless data storage mob_heads:root data.frog_init run data modify storage mob_heads:root data.frog_init set value 0.01

    execute unless data storage mob_heads:root data.ghast_init run data modify storage mob_heads:root data.ghast_init set value 0.005
    execute unless data storage mob_heads:root data.glow_squid_init run data modify storage mob_heads:root data.glow_squid_init set value 0.01
    execute unless data storage mob_heads:root data.goat_init run data modify storage mob_heads:root data.goat_init set value 0.01
    execute unless data storage mob_heads:root data.guardian_init run data modify storage mob_heads:root data.guardian_init set value 0.001

    execute unless data storage mob_heads:root data.happy_ghast_init run data modify storage mob_heads:root data.happy_ghast_init set value 0.01
    execute unless data storage mob_heads:root data.hoglin_init run data modify storage mob_heads:root data.hoglin_init set value 0.005
    execute unless data storage mob_heads:root data.horse_init run data modify storage mob_heads:root data.horse_init set value 0.01
    execute unless data storage mob_heads:root data.husk_init run data modify storage mob_heads:root data.husk_init set value 0.005

    execute unless data storage mob_heads:root data.illusioner_init run data modify storage mob_heads:root data.illusioner_init set value 0.005
    execute unless data storage mob_heads:root data.iron_golem_init run data modify storage mob_heads:root data.iron_golem_init set value 0.005

    execute unless data storage mob_heads:root data.llama_init run data modify storage mob_heads:root data.llama_init set value 0.01

    execute unless data storage mob_heads:root data.magma_cube_init run data modify storage mob_heads:root data.magma_cube_init set value 0.01
    execute unless data storage mob_heads:root data.mooshroom_init run data modify storage mob_heads:root data.mooshroom_init set value 0.01
    execute unless data storage mob_heads:root data.mooshroom_brown_init run data modify storage mob_heads:root data.mooshroom_brown_init set value 0.02
    execute unless data storage mob_heads:root data.mule_init run data modify storage mob_heads:root data.mule_init set value 0.01

    execute unless data storage mob_heads:root data.ocelot_init run data modify storage mob_heads:root data.ocelot_init set value 0.01

    execute unless data storage mob_heads:root data.panda_init run data modify storage mob_heads:root data.panda_init set value 0.01
    execute unless data storage mob_heads:root data.panda_special_init run data modify storage mob_heads:root data.panda_special_init set value 0.02
    execute unless data storage mob_heads:root data.parrot_init run data modify storage mob_heads:root data.parrot_init set value 0.01
    execute unless data storage mob_heads:root data.phantom_init run data modify storage mob_heads:root data.phantom_init set value 0.005
    execute unless data storage mob_heads:root data.pig_init run data modify storage mob_heads:root data.pig_init set value 0.001
    execute unless data storage mob_heads:root data.piglin_brute_init run data modify storage mob_heads:root data.piglin_brute_init set value 0.02
    execute unless data storage mob_heads:root data.piglin_init run data modify storage mob_heads:root data.piglin_init set value 0.005
    execute unless data storage mob_heads:root data.pillager_init run data modify storage mob_heads:root data.pillager_init set value 0.001
    execute unless data storage mob_heads:root data.polar_bear_init run data modify storage mob_heads:root data.polar_bear_init set value 0.01
    execute unless data storage mob_heads:root data.pufferfish_init run data modify storage mob_heads:root data.pufferfish_init set value 0.01

    execute unless data storage mob_heads:root data.rabbit_init run data modify storage mob_heads:root data.rabbit_init set value 0.01
    execute unless data storage mob_heads:root data.ravager_init run data modify storage mob_heads:root data.ravager_init set value 0.01

    execute unless data storage mob_heads:root data.salmon_init run data modify storage mob_heads:root data.salmon_init set value 0.005
    execute unless data storage mob_heads:root data.sheep_init run data modify storage mob_heads:root data.sheep_init set value 0.001
    execute unless data storage mob_heads:root data.shulker_init run data modify storage mob_heads:root data.shulker_init set value 0.01
    execute unless data storage mob_heads:root data.silverfish_init run data modify storage mob_heads:root data.silverfish_init set value 0.001
    execute unless data storage mob_heads:root data.skeleton_horse_init run data modify storage mob_heads:root data.skeleton_horse_init set value 0.02
    execute unless data storage mob_heads:root data.skeleton_init run data modify storage mob_heads:root data.skeleton_init set value 0.001
    execute unless data storage mob_heads:root data.slime_init run data modify storage mob_heads:root data.slime_init set value 0.001
    execute unless data storage mob_heads:root data.sniffer_init run data modify storage mob_heads:root data.sniffer_init set value 0.01
    execute unless data storage mob_heads:root data.snow_golem_init run data modify storage mob_heads:root data.snow_golem_init set value 0.001
    execute unless data storage mob_heads:root data.spider_init run data modify storage mob_heads:root data.spider_init set value 0.001
    execute unless data storage mob_heads:root data.squid_init run data modify storage mob_heads:root data.squid_init set value 0.005
    execute unless data storage mob_heads:root data.stray_init run data modify storage mob_heads:root data.stray_init set value 0.005
    execute unless data storage mob_heads:root data.strider_init run data modify storage mob_heads:root data.strider_init set value 0.01

    execute unless data storage mob_heads:root data.tadpole_init run data modify storage mob_heads:root data.tadpole_init set value 0.01
    execute unless data storage mob_heads:root data.trader_llama_init run data modify storage mob_heads:root data.trader_llama_init set value 0.005
    execute unless data storage mob_heads:root data.tropical_fish_init run data modify storage mob_heads:root data.tropical_fish_init set value 0.01
    execute unless data storage mob_heads:root data.turtle_init run data modify storage mob_heads:root data.turtle_init set value 0.01

    execute unless data storage mob_heads:root data.vex_init run data modify storage mob_heads:root data.vex_init set value 0.01
    execute unless data storage mob_heads:root data.villager_init run data modify storage mob_heads:root data.villager_init set value 0.01
    execute unless data storage mob_heads:root data.vindicator_init run data modify storage mob_heads:root data.vindicator_init set value 0.005

    execute unless data storage mob_heads:root data.wandering_trader_init run data modify storage mob_heads:root data.wandering_trader_init set value 0.01
    execute unless data storage mob_heads:root data.warden_init run data modify storage mob_heads:root data.warden_init set value 0.05
    execute unless data storage mob_heads:root data.witch_init run data modify storage mob_heads:root data.witch_init set value 0.001
    execute unless data storage mob_heads:root data.wither_init run data modify storage mob_heads:root data.wither_init set value 0.05
    execute unless data storage mob_heads:root data.wither_invulnerable_init run data modify storage mob_heads:root data.wither_invulnerable_init set value 0.01
    execute unless data storage mob_heads:root data.wolf_init run data modify storage mob_heads:root data.wolf_init set value 0.01

    execute unless data storage mob_heads:root data.zoglin_init run data modify storage mob_heads:root data.zoglin_init set value 0.01
    execute unless data storage mob_heads:root data.zombie_horse_init run data modify storage mob_heads:root data.zombie_horse_init set value 0.01
    execute unless data storage mob_heads:root data.zombie_villager_init run data modify storage mob_heads:root data.zombie_villager_init set value 0.03
    execute unless data storage mob_heads:root data.zombie_init run data modify storage mob_heads:root data.zombie_init set value 0.001
    execute unless data storage mob_heads:root data.zombified_piglin_init run data modify storage mob_heads:root data.zombified_piglin_init set value 0.001

  # Updates
    execute unless data storage mob_heads:root data.copper_golem_init run data modify storage mob_heads:root data.copper_golem_init set value 0.005
    execute unless data storage mob_heads:root data.nautilus_init run data modify storage mob_heads:root data.nautilus_init set value 0.01
    execute unless data storage mob_heads:root data.parched_init run data modify storage mob_heads:root data.parched_init set value 0.01
    execute unless data storage mob_heads:root data.zombie_nautilus_init run data modify storage mob_heads:root data.zombie_nautilus_init set value 0.01
    execute unless data storage mob_heads:root data.camel_husk_init run data modify storage mob_heads:root data.camel_husk_init set value 0.03

  # Dialog drop rates
    data modify storage mob_heads:root data.drop_rate_allay set value "$(drop_rate_allay)"
    data modify storage mob_heads:root data.drop_rate_armadillo set value "$(drop_rate_armadillo)"
    data modify storage mob_heads:root data.drop_rate_axolotl set value "$(drop_rate_axolotl)"
    data modify storage mob_heads:root data.drop_rate_axolotl_blue set value "$(drop_rate_axolotl_blue)"

    data modify storage mob_heads:root data.drop_rate_bat set value "$(drop_rate_bat)"
    data modify storage mob_heads:root data.drop_rate_bee set value "$(drop_rate_bee)"
    data modify storage mob_heads:root data.drop_rate_blaze set value "$(drop_rate_blaze)"
    data modify storage mob_heads:root data.drop_rate_bogged set value "$(drop_rate_bogged)"
    data modify storage mob_heads:root data.drop_rate_breeze set value "$(drop_rate_breeze)"

    data modify storage mob_heads:root data.drop_rate_camel set value "$(drop_rate_camel)"
    data modify storage mob_heads:root data.drop_rate_cat set value "$(drop_rate_cat)"
    data modify storage mob_heads:root data.drop_rate_cave_spider set value "$(drop_rate_cave_spider)"
    data modify storage mob_heads:root data.drop_rate_chicken set value "$(drop_rate_chicken)"
    data modify storage mob_heads:root data.drop_rate_cod set value "$(drop_rate_cod)"
    data modify storage mob_heads:root data.drop_rate_cow set value "$(drop_rate_cow)"
    data modify storage mob_heads:root data.drop_rate_creaking set value "$(drop_rate_creaking)"
    data modify storage mob_heads:root data.drop_rate_creeper set value "$(drop_rate_creeper)"
    data modify storage mob_heads:root data.drop_rate_creeper_charged set value "$(drop_rate_creeper_charged)"

    data modify storage mob_heads:root data.drop_rate_dolphin set value "$(drop_rate_dolphin)"
    data modify storage mob_heads:root data.drop_rate_donkey set value "$(drop_rate_donkey)"
    data modify storage mob_heads:root data.drop_rate_drowned set value "$(drop_rate_drowned)"

    data modify storage mob_heads:root data.drop_rate_elder_guardian set value "$(drop_rate_elder_guardian)"
    data modify storage mob_heads:root data.drop_rate_ender_dragon set value "$(drop_rate_ender_dragon)"
    data modify storage mob_heads:root data.drop_rate_enderman set value "$(drop_rate_enderman)"
    data modify storage mob_heads:root data.drop_rate_endermite set value "$(drop_rate_endermite)"
    data modify storage mob_heads:root data.drop_rate_evoker set value "$(drop_rate_evoker)"

    data modify storage mob_heads:root data.drop_rate_fox set value "$(drop_rate_fox)"
    data modify storage mob_heads:root data.drop_rate_frog set value "$(drop_rate_frog)"

    data modify storage mob_heads:root data.drop_rate_ghast set value "$(drop_rate_ghast)"
    data modify storage mob_heads:root data.drop_rate_glow_squid set value "$(drop_rate_glow_squid)"
    data modify storage mob_heads:root data.drop_rate_goat set value "$(drop_rate_goat)"
    data modify storage mob_heads:root data.drop_rate_guardian set value "$(drop_rate_guardian)"

    data modify storage mob_heads:root data.drop_rate_happy_ghast set value "$(drop_rate_happy_ghast)"
    data modify storage mob_heads:root data.drop_rate_hoglin set value "$(drop_rate_hoglin)"
    data modify storage mob_heads:root data.drop_rate_horse set value "$(drop_rate_horse)"
    data modify storage mob_heads:root data.drop_rate_husk set value "$(drop_rate_husk)"

    data modify storage mob_heads:root data.drop_rate_illusioner set value "$(drop_rate_illusioner)"
    data modify storage mob_heads:root data.drop_rate_iron_golem set value "$(drop_rate_iron_golem)"

    data modify storage mob_heads:root data.drop_rate_llama set value "$(drop_rate_llama)"

    data modify storage mob_heads:root data.drop_rate_magma_cube set value "$(drop_rate_magma_cube)"
    data modify storage mob_heads:root data.drop_rate_mooshroom set value "$(drop_rate_mooshroom)"
    data modify storage mob_heads:root data.drop_rate_mooshroom_brown set value "$(drop_rate_mooshroom_brown)"
    data modify storage mob_heads:root data.drop_rate_mule set value "$(drop_rate_mule)"

    data modify storage mob_heads:root data.drop_rate_ocelot set value "$(drop_rate_ocelot)"

    # panda = normal, weak
    data modify storage mob_heads:root data.drop_rate_panda set value "$(drop_rate_panda)"
    # panda special = lazy, brown, playful, aggressive, worried
    data modify storage mob_heads:root data.drop_rate_panda_special set value "$(drop_rate_panda_special)"
    data modify storage mob_heads:root data.drop_rate_parrot set value "$(drop_rate_parrot)"
    data modify storage mob_heads:root data.drop_rate_phantom set value "$(drop_rate_phantom)"
    data modify storage mob_heads:root data.drop_rate_pig set value "$(drop_rate_pig)"
    data modify storage mob_heads:root data.drop_rate_piglin_brute set value "$(drop_rate_piglin_brute)"
    data modify storage mob_heads:root data.drop_rate_piglin set value "$(drop_rate_piglin)"
    data modify storage mob_heads:root data.drop_rate_pillager set value "$(drop_rate_pillager)"
    data modify storage mob_heads:root data.drop_rate_polar_bear set value "$(drop_rate_polar_bear)"
    data modify storage mob_heads:root data.drop_rate_pufferfish set value "$(drop_rate_pufferfish)"

    data modify storage mob_heads:root data.drop_rate_rabbit set value "$(drop_rate_rabbit)"
    data modify storage mob_heads:root data.drop_rate_ravager set value "$(drop_rate_ravager)"

    data modify storage mob_heads:root data.drop_rate_salmon set value "$(drop_rate_salmon)"
    data modify storage mob_heads:root data.drop_rate_sheep set value "$(drop_rate_sheep)"
    data modify storage mob_heads:root data.drop_rate_shulker set value "$(drop_rate_shulker)"
    data modify storage mob_heads:root data.drop_rate_silverfish set value "$(drop_rate_silverfish)"
    data modify storage mob_heads:root data.drop_rate_skeleton_horse set value "$(drop_rate_skeleton_horse)"
    data modify storage mob_heads:root data.drop_rate_skeleton set value "$(drop_rate_skeleton)"
    data modify storage mob_heads:root data.drop_rate_slime set value "$(drop_rate_slime)"
    data modify storage mob_heads:root data.drop_rate_sniffer set value "$(drop_rate_sniffer)"
    data modify storage mob_heads:root data.drop_rate_snow_golem set value "$(drop_rate_snow_golem)"
    data modify storage mob_heads:root data.drop_rate_spider set value "$(drop_rate_spider)"
    data modify storage mob_heads:root data.drop_rate_squid set value "$(drop_rate_squid)"
    data modify storage mob_heads:root data.drop_rate_stray set value "$(drop_rate_stray)"
    data modify storage mob_heads:root data.drop_rate_strider set value "$(drop_rate_strider)"

    data modify storage mob_heads:root data.drop_rate_tadpole set value "$(drop_rate_tadpole)"
    data modify storage mob_heads:root data.drop_rate_trader_llama set value "$(drop_rate_trader_llama)"
    data modify storage mob_heads:root data.drop_rate_tropical_fish set value "$(drop_rate_tropical_fish)"
    data modify storage mob_heads:root data.drop_rate_turtle set value "$(drop_rate_turtle)"

    data modify storage mob_heads:root data.drop_rate_vex set value "$(drop_rate_vex)"
    data modify storage mob_heads:root data.drop_rate_villager set value "$(drop_rate_villager)"
    data modify storage mob_heads:root data.drop_rate_vindicator set value "$(drop_rate_vindicator)"

    data modify storage mob_heads:root data.drop_rate_wandering_trader set value "$(drop_rate_wandering_trader)"
    data modify storage mob_heads:root data.drop_rate_warden set value "$(drop_rate_warden)"
    data modify storage mob_heads:root data.drop_rate_witch set value "$(drop_rate_witch)"
    data modify storage mob_heads:root data.drop_rate_wither set value "$(drop_rate_wither)"
    data modify storage mob_heads:root data.drop_rate_wither_invulnerable set value "$(drop_rate_wither_invulnerable)"
    data modify storage mob_heads:root data.drop_rate_wolf set value "$(drop_rate_wolf)"

    data modify storage mob_heads:root data.drop_rate_zoglin set value "$(drop_rate_zoglin)"
    data modify storage mob_heads:root data.drop_rate_zombie_horse set value "$(drop_rate_zombie_horse)"
    data modify storage mob_heads:root data.drop_rate_zombie_villager set value "$(drop_rate_zombie_villager)"
    data modify storage mob_heads:root data.drop_rate_zombie set value "$(drop_rate_zombie)"
    data modify storage mob_heads:root data.drop_rate_zombified_piglin set value "$(drop_rate_zombified_piglin)"

  # Updates
    data modify storage mob_heads:root data.drop_rate_copper_golem set value "$(drop_rate_copper_golem)"
    data modify storage mob_heads:root data.drop_rate_nautilus set value "$(drop_rate_nautilus)"
    data modify storage mob_heads:root data.drop_rate_parched set value "$(drop_rate_parched)"
    data modify storage mob_heads:root data.drop_rate_zombie_nautilus set value "$(drop_rate_zombie_nautilus)"
    data modify storage mob_heads:root data.drop_rate_camel_husk set value "$(drop_rate_camel_husk)"

# Rarity levels
  # Rarity in storage
    execute unless data storage mob_heads:root data.rarity_allay run data modify storage mob_heads:root data.rarity_allay set value 1
    execute unless data storage mob_heads:root data.rarity_armadillo run data modify storage mob_heads:root data.rarity_armadillo set value 1
    execute unless data storage mob_heads:root data.rarity_axolotl run data modify storage mob_heads:root data.rarity_axolotl set value 2
    execute unless data storage mob_heads:root data.rarity_axolotl_blue run data modify storage mob_heads:root data.rarity_axolotl_blue set value 5

    execute unless data storage mob_heads:root data.rarity_bat run data modify storage mob_heads:root data.rarity_bat set value 2
    execute unless data storage mob_heads:root data.rarity_bee run data modify storage mob_heads:root data.rarity_bee set value 1
    execute unless data storage mob_heads:root data.rarity_blaze run data modify storage mob_heads:root data.rarity_blaze set value 0
    execute unless data storage mob_heads:root data.rarity_bogged run data modify storage mob_heads:root data.rarity_bogged set value 1
    execute unless data storage mob_heads:root data.rarity_breeze run data modify storage mob_heads:root data.rarity_breeze set value 2

    execute unless data storage mob_heads:root data.rarity_camel run data modify storage mob_heads:root data.rarity_camel set value 1
    execute unless data storage mob_heads:root data.rarity_cat run data modify storage mob_heads:root data.rarity_cat set value 2
    execute unless data storage mob_heads:root data.rarity_cave_spider run data modify storage mob_heads:root data.rarity_cave_spider set value 0
    execute unless data storage mob_heads:root data.rarity_chicken run data modify storage mob_heads:root data.rarity_chicken set value 0
    execute unless data storage mob_heads:root data.rarity_cod run data modify storage mob_heads:root data.rarity_cod set value 1
    execute unless data storage mob_heads:root data.rarity_cow run data modify storage mob_heads:root data.rarity_cow set value 0
    execute unless data storage mob_heads:root data.rarity_creaking run data modify storage mob_heads:root data.rarity_creaking set value 3
    execute unless data storage mob_heads:root data.rarity_creeper run data modify storage mob_heads:root data.rarity_creeper set value 0
    execute unless data storage mob_heads:root data.rarity_creeper_charged run data modify storage mob_heads:root data.rarity_creeper_charged set value 3

    execute unless data storage mob_heads:root data.rarity_dolphin run data modify storage mob_heads:root data.rarity_dolphin set value 1
    execute unless data storage mob_heads:root data.rarity_donkey run data modify storage mob_heads:root data.rarity_donkey set value 1
    execute unless data storage mob_heads:root data.rarity_drowned run data modify storage mob_heads:root data.rarity_drowned set value 0

    execute unless data storage mob_heads:root data.rarity_elder_guardian run data modify storage mob_heads:root data.rarity_elder_guardian set value 5
    execute unless data storage mob_heads:root data.rarity_ender_dragon run data modify storage mob_heads:root data.rarity_ender_dragon set value 4
    execute unless data storage mob_heads:root data.rarity_enderman run data modify storage mob_heads:root data.rarity_enderman set value 0
    execute unless data storage mob_heads:root data.rarity_endermite run data modify storage mob_heads:root data.rarity_endermite set value 3
    execute unless data storage mob_heads:root data.rarity_evoker run data modify storage mob_heads:root data.rarity_evoker set value 3

    execute unless data storage mob_heads:root data.rarity_fox run data modify storage mob_heads:root data.rarity_fox set value 1
    execute unless data storage mob_heads:root data.rarity_frog run data modify storage mob_heads:root data.rarity_frog set value 1

    execute unless data storage mob_heads:root data.rarity_ghast run data modify storage mob_heads:root data.rarity_ghast set value 1
    execute unless data storage mob_heads:root data.rarity_glow_squid run data modify storage mob_heads:root data.rarity_glow_squid set value 1
    execute unless data storage mob_heads:root data.rarity_goat run data modify storage mob_heads:root data.rarity_goat set value 1
    execute unless data storage mob_heads:root data.rarity_guardian run data modify storage mob_heads:root data.rarity_guardian set value 0

    execute unless data storage mob_heads:root data.rarity_happy_ghast run data modify storage mob_heads:root data.rarity_happy_ghast set value 2
    execute unless data storage mob_heads:root data.rarity_hoglin run data modify storage mob_heads:root data.rarity_hoglin set value 1
    execute unless data storage mob_heads:root data.rarity_horse run data modify storage mob_heads:root data.rarity_horse set value 1
    execute unless data storage mob_heads:root data.rarity_husk run data modify storage mob_heads:root data.rarity_husk set value 1

    execute unless data storage mob_heads:root data.rarity_illusioner run data modify storage mob_heads:root data.rarity_illusioner set value 3
    execute unless data storage mob_heads:root data.rarity_iron_golem run data modify storage mob_heads:root data.rarity_iron_golem set value 1

    execute unless data storage mob_heads:root data.rarity_llama run data modify storage mob_heads:root data.rarity_llama set value 1

    execute unless data storage mob_heads:root data.rarity_magma_cube run data modify storage mob_heads:root data.rarity_magma_cube set value 0
    execute unless data storage mob_heads:root data.rarity_mooshroom run data modify storage mob_heads:root data.rarity_mooshroom set value 2
    execute unless data storage mob_heads:root data.rarity_mooshroom_brown run data modify storage mob_heads:root data.rarity_mooshroom_brown set value 3
    execute unless data storage mob_heads:root data.rarity_mule run data modify storage mob_heads:root data.rarity_mule set value 1

    execute unless data storage mob_heads:root data.rarity_ocelot run data modify storage mob_heads:root data.rarity_ocelot set value 2

    execute unless data storage mob_heads:root data.rarity_panda run data modify storage mob_heads:root data.rarity_panda set value 2
    execute unless data storage mob_heads:root data.rarity_panda_special run data modify storage mob_heads:root data.rarity_panda_special set value 3
    execute unless data storage mob_heads:root data.rarity_parrot run data modify storage mob_heads:root data.rarity_parrot set value 2
    execute unless data storage mob_heads:root data.rarity_phantom run data modify storage mob_heads:root data.rarity_phantom set value 1

    execute unless data storage mob_heads:root data.rarity_pig run data modify storage mob_heads:root data.rarity_pig set value 0
    execute unless data storage mob_heads:root data.rarity_piglin_brute run data modify storage mob_heads:root data.rarity_piglin_brute set value 5
    execute unless data storage mob_heads:root data.rarity_piglin run data modify storage mob_heads:root data.rarity_piglin set value 0
    execute unless data storage mob_heads:root data.rarity_pillager run data modify storage mob_heads:root data.rarity_pillager set value 1
    execute unless data storage mob_heads:root data.rarity_polar_bear run data modify storage mob_heads:root data.rarity_polar_bear set value 1
    execute unless data storage mob_heads:root data.rarity_pufferfish run data modify storage mob_heads:root data.rarity_pufferfish set value 1

    execute unless data storage mob_heads:root data.rarity_rabbit run data modify storage mob_heads:root data.rarity_rabbit set value 1
    execute unless data storage mob_heads:root data.rarity_ravager run data modify storage mob_heads:root data.rarity_ravager set value 2

    execute unless data storage mob_heads:root data.rarity_salmon run data modify storage mob_heads:root data.rarity_salmon set value 1
    execute unless data storage mob_heads:root data.rarity_sheep run data modify storage mob_heads:root data.rarity_sheep set value 0
    execute unless data storage mob_heads:root data.rarity_shulker run data modify storage mob_heads:root data.rarity_shulker set value 1
    execute unless data storage mob_heads:root data.rarity_silverfish run data modify storage mob_heads:root data.rarity_silverfish set value 0
    execute unless data storage mob_heads:root data.rarity_skeleton_horse run data modify storage mob_heads:root data.rarity_skeleton_horse set value 5
    execute unless data storage mob_heads:root data.rarity_skeleton run data modify storage mob_heads:root data.rarity_skeleton set value 0
    execute unless data storage mob_heads:root data.rarity_slime run data modify storage mob_heads:root data.rarity_slime set value 0
    execute unless data storage mob_heads:root data.rarity_sniffer run data modify storage mob_heads:root data.rarity_sniffer set value 1
    execute unless data storage mob_heads:root data.rarity_snow_golem run data modify storage mob_heads:root data.rarity_snow_golem set value 1
    execute unless data storage mob_heads:root data.rarity_spider run data modify storage mob_heads:root data.rarity_spider set value 0
    execute unless data storage mob_heads:root data.rarity_squid run data modify storage mob_heads:root data.rarity_squid set value 1
    execute unless data storage mob_heads:root data.rarity_stray run data modify storage mob_heads:root data.rarity_stray set value 1
    execute unless data storage mob_heads:root data.rarity_strider run data modify storage mob_heads:root data.rarity_strider set value 1

    execute unless data storage mob_heads:root data.rarity_tadpole run data modify storage mob_heads:root data.rarity_tadpole set value 3
    execute unless data storage mob_heads:root data.rarity_trader_llama run data modify storage mob_heads:root data.rarity_trader_llama set value 2
    execute unless data storage mob_heads:root data.rarity_tropical_fish run data modify storage mob_heads:root data.rarity_tropical_fish set value 1

    execute unless data storage mob_heads:root data.rarity_turtle run data modify storage mob_heads:root data.rarity_turtle set value 1

    execute unless data storage mob_heads:root data.rarity_vex run data modify storage mob_heads:root data.rarity_vex set value 1
    execute unless data storage mob_heads:root data.rarity_villager run data modify storage mob_heads:root data.rarity_villager set value 2
    execute unless data storage mob_heads:root data.rarity_vindicator run data modify storage mob_heads:root data.rarity_vindicator set value 2

    execute unless data storage mob_heads:root data.rarity_wandering_trader run data modify storage mob_heads:root data.rarity_wandering_trader set value 2
    execute unless data storage mob_heads:root data.rarity_warden run data modify storage mob_heads:root data.rarity_warden set value 4
    execute unless data storage mob_heads:root data.rarity_witch run data modify storage mob_heads:root data.rarity_witch set value 2
    execute unless data storage mob_heads:root data.rarity_wither run data modify storage mob_heads:root data.rarity_wither set value 4
    execute unless data storage mob_heads:root data.rarity_wither_invulnerable run data modify storage mob_heads:root data.rarity_wither_invulnerable set value 5
    execute unless data storage mob_heads:root data.rarity_wolf run data modify storage mob_heads:root data.rarity_wolf set value 1

    execute unless data storage mob_heads:root data.rarity_zoglin run data modify storage mob_heads:root data.rarity_zoglin set value 2
    execute unless data storage mob_heads:root data.rarity_zombie_horse run data modify storage mob_heads:root data.rarity_zombie_horse set value 5
    execute unless data storage mob_heads:root data.rarity_zombie_villager run data modify storage mob_heads:root data.rarity_zombie_villager set value 2
    execute unless data storage mob_heads:root data.rarity_zombie run data modify storage mob_heads:root data.rarity_zombie set value 0
    execute unless data storage mob_heads:root data.rarity_zombified_piglin run data modify storage mob_heads:root data.rarity_zombified_piglin set value 0

  # Updates
    execute unless data storage mob_heads:root data.rarity_copper_golem run data modify storage mob_heads:root data.rarity_copper_golem set value 2
    execute unless data storage mob_heads:root data.rarity_nautilus run data modify storage mob_heads:root data.rarity_nautilus set value 3
    execute unless data storage mob_heads:root data.rarity_parched run data modify storage mob_heads:root data.rarity_parched set value 3
    execute unless data storage mob_heads:root data.rarity_zombie_nautilus run data modify storage mob_heads:root data.rarity_zombie_nautilus set value 3
    execute unless data storage mob_heads:root data.rarity_camel_husk run data modify storage mob_heads:root data.rarity_camel_husk set value 3

  # Rarity scoreboard
    execute unless score &allay mob_heads.rarity = &allay mob_heads.rarity run scoreboard players set &allay mob_heads.rarity 1
    execute unless score &armadillo mob_heads.rarity = &armadillo mob_heads.rarity run scoreboard players set &armadillo mob_heads.rarity 1
    execute unless score &axolotl mob_heads.rarity = &axolotl mob_heads.rarity run scoreboard players set &axolotl mob_heads.rarity 2
    execute unless score &axolotl_blue mob_heads.rarity = &axolotl_blue mob_heads.rarity run scoreboard players set &axolotl_blue mob_heads.rarity 5

    execute unless score &bat mob_heads.rarity = &bat mob_heads.rarity run scoreboard players set &bat mob_heads.rarity 2
    execute unless score &bee mob_heads.rarity = &bee mob_heads.rarity run scoreboard players set &bee mob_heads.rarity 1
    execute unless score &blaze mob_heads.rarity = &blaze mob_heads.rarity run scoreboard players set &blaze mob_heads.rarity 0
    execute unless score &bogged mob_heads.rarity = &bogged mob_heads.rarity run scoreboard players set &bogged mob_heads.rarity 1
    execute unless score &breeze mob_heads.rarity = &breeze mob_heads.rarity run scoreboard players set &breeze mob_heads.rarity 2

    execute unless score &camel mob_heads.rarity = &camel mob_heads.rarity run scoreboard players set &camel mob_heads.rarity 1
    execute unless score &cat mob_heads.rarity = &cat mob_heads.rarity run scoreboard players set &cat mob_heads.rarity 2
    execute unless score &cave_spider mob_heads.rarity = &cave_spider mob_heads.rarity run scoreboard players set &cave_spider mob_heads.rarity 0
    execute unless score &chicken mob_heads.rarity = &chicken mob_heads.rarity run scoreboard players set &chicken mob_heads.rarity 0
    execute unless score &cod mob_heads.rarity = &cod mob_heads.rarity run scoreboard players set &cod mob_heads.rarity 1
    execute unless score &cow mob_heads.rarity = &cow mob_heads.rarity run scoreboard players set &cow mob_heads.rarity 0
    execute unless score &creaking mob_heads.rarity = &creaking mob_heads.rarity run scoreboard players set &creaking mob_heads.rarity 3
    execute unless score &creeper mob_heads.rarity = &creeper mob_heads.rarity run scoreboard players set &creeper mob_heads.rarity 0
    execute unless score &creeper_charged mob_heads.rarity = &creeper_charged mob_heads.rarity run scoreboard players set &creeper_charged mob_heads.rarity 3

    execute unless score &dolphin mob_heads.rarity = &dolphin mob_heads.rarity run scoreboard players set &dolphin mob_heads.rarity 1
    execute unless score &donkey mob_heads.rarity = &donkey mob_heads.rarity run scoreboard players set &donkey mob_heads.rarity 1
    execute unless score &drowned mob_heads.rarity = &drowned mob_heads.rarity run scoreboard players set &drowned mob_heads.rarity 0

    execute unless score &elder_guardian mob_heads.rarity = &elder_guardian mob_heads.rarity run scoreboard players set &elder_guardian mob_heads.rarity 5
    execute unless score &ender_dragon mob_heads.rarity = &ender_dragon mob_heads.rarity run scoreboard players set &ender_dragon mob_heads.rarity 4
    execute unless score &enderman mob_heads.rarity = &enderman mob_heads.rarity run scoreboard players set &enderman mob_heads.rarity 0
    execute unless score &endermite mob_heads.rarity = &endermite mob_heads.rarity run scoreboard players set &endermite mob_heads.rarity 3
    execute unless score &evoker mob_heads.rarity = &evoker mob_heads.rarity run scoreboard players set &evoker mob_heads.rarity 3

    execute unless score &fox mob_heads.rarity = &fox mob_heads.rarity run scoreboard players set &fox mob_heads.rarity 1
    execute unless score &frog mob_heads.rarity = &frog mob_heads.rarity run scoreboard players set &frog mob_heads.rarity 1

    execute unless score &ghast mob_heads.rarity = &ghast mob_heads.rarity run scoreboard players set &ghast mob_heads.rarity 1
    execute unless score &glow_squid mob_heads.rarity = &glow_squid mob_heads.rarity run scoreboard players set &glow_squid mob_heads.rarity 1
    execute unless score &goat mob_heads.rarity = &goat mob_heads.rarity run scoreboard players set &goat mob_heads.rarity 1
    execute unless score &guardian mob_heads.rarity = &guardian mob_heads.rarity run scoreboard players set &guardian mob_heads.rarity 0

    execute unless score &happy_ghast mob_heads.rarity = &happy_ghast mob_heads.rarity run scoreboard players set &happy_ghast mob_heads.rarity 2
    execute unless score &hoglin mob_heads.rarity = &hoglin mob_heads.rarity run scoreboard players set &hoglin mob_heads.rarity 1
    execute unless score &horse mob_heads.rarity = &horse mob_heads.rarity run scoreboard players set &horse mob_heads.rarity 1
    execute unless score &husk mob_heads.rarity = &husk mob_heads.rarity run scoreboard players set &husk mob_heads.rarity 1

    execute unless score &illusioner mob_heads.rarity = &illusioner mob_heads.rarity run scoreboard players set &illusioner mob_heads.rarity 3
    execute unless score &iron_golem mob_heads.rarity = &iron_golem mob_heads.rarity run scoreboard players set &iron_golem mob_heads.rarity 1

    execute unless score &llama mob_heads.rarity = &llama mob_heads.rarity run scoreboard players set &llama mob_heads.rarity 1

    execute unless score &magma_cube mob_heads.rarity = &magma_cube mob_heads.rarity run scoreboard players set &magma_cube mob_heads.rarity 0
    execute unless score &mooshroom mob_heads.rarity = &mooshroom mob_heads.rarity run scoreboard players set &mooshroom mob_heads.rarity 2
    execute unless score &mooshroom_brown mob_heads.rarity = &mooshroom_brown mob_heads.rarity run scoreboard players set &mooshroom_brown mob_heads.rarity 3
    execute unless score &mule mob_heads.rarity = &mule mob_heads.rarity run scoreboard players set &mule mob_heads.rarity 1

    execute unless score &ocelot mob_heads.rarity = &ocelot mob_heads.rarity run scoreboard players set &ocelot mob_heads.rarity 2

    execute unless score &panda mob_heads.rarity = &panda mob_heads.rarity run scoreboard players set &panda mob_heads.rarity 2
    execute unless score &panda_special mob_heads.rarity = &panda_special mob_heads.rarity run scoreboard players set &panda_special mob_heads.rarity 3
    execute unless score &parrot mob_heads.rarity = &parrot mob_heads.rarity run scoreboard players set &parrot mob_heads.rarity 2
    execute unless score &phantom mob_heads.rarity = &phantom mob_heads.rarity run scoreboard players set &phantom mob_heads.rarity 1

    execute unless score &pig mob_heads.rarity = &pig mob_heads.rarity run scoreboard players set &pig mob_heads.rarity 0
    execute unless score &piglin_brute mob_heads.rarity = &piglin_brute mob_heads.rarity run scoreboard players set &piglin_brute mob_heads.rarity 5
    execute unless score &piglin mob_heads.rarity = &piglin mob_heads.rarity run scoreboard players set &piglin mob_heads.rarity 0
    execute unless score &pillager mob_heads.rarity = &pillager mob_heads.rarity run scoreboard players set &pillager mob_heads.rarity 1
    execute unless score &polar_bear mob_heads.rarity = &polar_bear mob_heads.rarity run scoreboard players set &polar_bear mob_heads.rarity 1
    execute unless score &pufferfish mob_heads.rarity = &pufferfish mob_heads.rarity run scoreboard players set &pufferfish mob_heads.rarity 1

    execute unless score &rabbit mob_heads.rarity = &rabbit mob_heads.rarity run scoreboard players set &rabbit mob_heads.rarity 1
    execute unless score &ravager mob_heads.rarity = &ravager mob_heads.rarity run scoreboard players set &ravager mob_heads.rarity 2

    execute unless score &salmon mob_heads.rarity = &salmon mob_heads.rarity run scoreboard players set &salmon mob_heads.rarity 1
    execute unless score &sheep mob_heads.rarity = &sheep mob_heads.rarity run scoreboard players set &sheep mob_heads.rarity 0
    execute unless score &shulker mob_heads.rarity = &shulker mob_heads.rarity run scoreboard players set &shulker mob_heads.rarity 1
    execute unless score &silverfish mob_heads.rarity = &silverfish mob_heads.rarity run scoreboard players set &silverfish mob_heads.rarity 0
    execute unless score &skeleton_horse mob_heads.rarity = &skeleton_horse mob_heads.rarity run scoreboard players set &skeleton_horse mob_heads.rarity 5
    execute unless score &skeleton mob_heads.rarity = &skeleton mob_heads.rarity run scoreboard players set &skeleton mob_heads.rarity 0
    execute unless score &slime mob_heads.rarity = &slime mob_heads.rarity run scoreboard players set &slime mob_heads.rarity 0
    execute unless score &sniffer mob_heads.rarity = &sniffer mob_heads.rarity run scoreboard players set &sniffer mob_heads.rarity 1
    execute unless score &snow_golem mob_heads.rarity = &snow_golem mob_heads.rarity run scoreboard players set &snow_golem mob_heads.rarity 1
    execute unless score &spider mob_heads.rarity = &spider mob_heads.rarity run scoreboard players set &spider mob_heads.rarity 0
    execute unless score &squid mob_heads.rarity = &squid mob_heads.rarity run scoreboard players set &squid mob_heads.rarity 1
    execute unless score &stray mob_heads.rarity = &stray mob_heads.rarity run scoreboard players set &stray mob_heads.rarity 1
    execute unless score &strider mob_heads.rarity = &strider mob_heads.rarity run scoreboard players set &strider mob_heads.rarity 1

    execute unless score &tadpole mob_heads.rarity = &tadpole mob_heads.rarity run scoreboard players set &tadpole mob_heads.rarity 3
    execute unless score &trader_llama mob_heads.rarity = &trader_llama mob_heads.rarity run scoreboard players set &trader_llama mob_heads.rarity 2
    execute unless score &tropical_fish mob_heads.rarity = &tropical_fish mob_heads.rarity run scoreboard players set &tropical_fish mob_heads.rarity 1

    execute unless score &turtle mob_heads.rarity = &turtle mob_heads.rarity run scoreboard players set &turtle mob_heads.rarity 1

    execute unless score &vex mob_heads.rarity = &vex mob_heads.rarity run scoreboard players set &vex mob_heads.rarity 1
    execute unless score &villager mob_heads.rarity = &villager mob_heads.rarity run scoreboard players set &villager mob_heads.rarity 2
    execute unless score &vindicator mob_heads.rarity = &vindicator mob_heads.rarity run scoreboard players set &vindicator mob_heads.rarity 2

    execute unless score &wandering_trader mob_heads.rarity = &wandering_trader mob_heads.rarity run scoreboard players set &wandering_trader mob_heads.rarity 2
    execute unless score &warden mob_heads.rarity = &warden mob_heads.rarity run scoreboard players set &warden mob_heads.rarity 4
    execute unless score &witch mob_heads.rarity = &witch mob_heads.rarity run scoreboard players set &witch mob_heads.rarity 2
    execute unless score &wither mob_heads.rarity = &wither mob_heads.rarity run scoreboard players set &wither mob_heads.rarity 4
    execute unless score &wither_invulnerable mob_heads.rarity = &wither_invulnerable mob_heads.rarity run scoreboard players set &wither_invulnerable mob_heads.rarity 5
    execute unless score &wolf mob_heads.rarity = &wolf mob_heads.rarity run scoreboard players set &wolf mob_heads.rarity 1

    execute unless score &zoglin mob_heads.rarity = &zoglin mob_heads.rarity run scoreboard players set &zoglin mob_heads.rarity 2
    execute unless score &zombie_horse mob_heads.rarity = &zombie_horse mob_heads.rarity run scoreboard players set &zombie_horse mob_heads.rarity 5
    execute unless score &zombie_villager mob_heads.rarity = &zombie_villager mob_heads.rarity run scoreboard players set &zombie_villager mob_heads.rarity 2
    execute unless score &zombie mob_heads.rarity = &zombie mob_heads.rarity run scoreboard players set &zombie mob_heads.rarity 0
    execute unless score &zombified_piglin mob_heads.rarity = &zombified_piglin mob_heads.rarity run scoreboard players set &zombified_piglin mob_heads.rarity 0

  # Updates
    execute unless score &copper_golem mob_heads.rarity = &copper_golem mob_heads.rarity run scoreboard players set &copper_golem mob_heads.rarity 2
    execute unless score &nautilus mob_heads.rarity = &nautilus mob_heads.rarity run scoreboard players set &nautilus mob_heads.rarity 3
    execute unless score &parched mob_heads.rarity = &parched mob_heads.rarity run scoreboard players set &parched mob_heads.rarity 3
    execute unless score &zombie_nautilus mob_heads.rarity = &zombie_nautilus mob_heads.rarity run scoreboard players set &zombie_nautilus mob_heads.rarity 3
    execute unless score &camel_husk mob_heads.rarity = &camel_husk mob_heads.rarity run scoreboard players set &camel_husk mob_heads.rarity 3

  # Dialog rarity in storage
    data modify storage mob_heads:root data.dialog_rarity_allay set value "$(dialog_rarity_allay)"
    data modify storage mob_heads:root data.dialog_rarity_armadillo set value "$(dialog_rarity_armadillo)"
    data modify storage mob_heads:root data.dialog_rarity_axolotl set value "$(dialog_rarity_axolotl)"
    data modify storage mob_heads:root data.dialog_rarity_axolotl_blue set value "$(dialog_rarity_axolotl_blue)"

    data modify storage mob_heads:root data.dialog_rarity_bat set value "$(dialog_rarity_bat)"
    data modify storage mob_heads:root data.dialog_rarity_bee set value "$(dialog_rarity_bee)"
    data modify storage mob_heads:root data.dialog_rarity_blaze set value "$(dialog_rarity_blaze)"
    data modify storage mob_heads:root data.dialog_rarity_bogged set value "$(dialog_rarity_bogged)"
    data modify storage mob_heads:root data.dialog_rarity_breeze set value "$(dialog_rarity_breeze)"

    data modify storage mob_heads:root data.dialog_rarity_camel set value "$(dialog_rarity_camel)"
    data modify storage mob_heads:root data.dialog_rarity_cat set value "$(dialog_rarity_cat)"
    data modify storage mob_heads:root data.dialog_rarity_cave_spider set value "$(dialog_rarity_cave_spider)"
    data modify storage mob_heads:root data.dialog_rarity_chicken set value "$(dialog_rarity_chicken)"
    data modify storage mob_heads:root data.dialog_rarity_cod set value "$(dialog_rarity_cod)"
    data modify storage mob_heads:root data.dialog_rarity_cow set value "$(dialog_rarity_cow)"
    data modify storage mob_heads:root data.dialog_rarity_creaking set value "$(dialog_rarity_creaking)"
    data modify storage mob_heads:root data.dialog_rarity_creeper set value "$(dialog_rarity_creeper)"
    data modify storage mob_heads:root data.dialog_rarity_creeper_charged set value "$(dialog_rarity_creeper_charged)"

    data modify storage mob_heads:root data.dialog_rarity_dolphin set value "$(dialog_rarity_dolphin)"
    data modify storage mob_heads:root data.dialog_rarity_donkey set value "$(dialog_rarity_donkey)"
    data modify storage mob_heads:root data.dialog_rarity_drowned set value "$(dialog_rarity_drowned)"

    data modify storage mob_heads:root data.dialog_rarity_elder_guardian set value "$(dialog_rarity_elder_guardian)"
    data modify storage mob_heads:root data.dialog_rarity_ender_dragon set value "$(dialog_rarity_ender_dragon)"
    data modify storage mob_heads:root data.dialog_rarity_enderman set value "$(dialog_rarity_enderman)"
    data modify storage mob_heads:root data.dialog_rarity_endermite set value "$(dialog_rarity_endermite)"
    data modify storage mob_heads:root data.dialog_rarity_evoker set value "$(dialog_rarity_evoker)"

    data modify storage mob_heads:root data.dialog_rarity_fox set value "$(dialog_rarity_fox)"
    data modify storage mob_heads:root data.dialog_rarity_frog set value "$(dialog_rarity_frog)"

    data modify storage mob_heads:root data.dialog_rarity_ghast set value "$(dialog_rarity_ghast)"
    data modify storage mob_heads:root data.dialog_rarity_glow_squid set value "$(dialog_rarity_glow_squid)"
    data modify storage mob_heads:root data.dialog_rarity_goat set value "$(dialog_rarity_goat)"
    data modify storage mob_heads:root data.dialog_rarity_guardian set value "$(dialog_rarity_guardian)"

    data modify storage mob_heads:root data.dialog_rarity_happy_ghast set value "$(dialog_rarity_happy_ghast)"
    data modify storage mob_heads:root data.dialog_rarity_hoglin set value "$(dialog_rarity_hoglin)"
    data modify storage mob_heads:root data.dialog_rarity_horse set value "$(dialog_rarity_horse)"
    data modify storage mob_heads:root data.dialog_rarity_husk set value "$(dialog_rarity_husk)"

    data modify storage mob_heads:root data.dialog_rarity_illusioner set value "$(dialog_rarity_illusioner)"
    data modify storage mob_heads:root data.dialog_rarity_iron_golem set value "$(dialog_rarity_iron_golem)"

    data modify storage mob_heads:root data.dialog_rarity_llama set value "$(dialog_rarity_llama)"

    data modify storage mob_heads:root data.dialog_rarity_magma_cube set value "$(dialog_rarity_magma_cube)"
    data modify storage mob_heads:root data.dialog_rarity_mooshroom set value "$(dialog_rarity_mooshroom)"
    data modify storage mob_heads:root data.dialog_rarity_mooshroom_brown set value "$(dialog_rarity_mooshroom_brown)"
    data modify storage mob_heads:root data.dialog_rarity_mule set value "$(dialog_rarity_mule)"

    data modify storage mob_heads:root data.dialog_rarity_ocelot set value "$(dialog_rarity_ocelot)"

    # panda = normal, weak
    data modify storage mob_heads:root data.dialog_rarity_panda set value "$(dialog_rarity_panda)"
    # panda special = lazy, brown, playful, aggressive, worried
    data modify storage mob_heads:root data.dialog_rarity_panda_special set value "$(dialog_rarity_panda_special)"
    data modify storage mob_heads:root data.dialog_rarity_parrot set value "$(dialog_rarity_parrot)"
    data modify storage mob_heads:root data.dialog_rarity_phantom set value "$(dialog_rarity_phantom)"
    data modify storage mob_heads:root data.dialog_rarity_pig set value "$(dialog_rarity_pig)"
    data modify storage mob_heads:root data.dialog_rarity_piglin_brute set value "$(dialog_rarity_piglin_brute)"
    data modify storage mob_heads:root data.dialog_rarity_piglin set value "$(dialog_rarity_piglin)"
    data modify storage mob_heads:root data.dialog_rarity_pillager set value "$(dialog_rarity_pillager)"
    data modify storage mob_heads:root data.dialog_rarity_polar_bear set value "$(dialog_rarity_polar_bear)"
    data modify storage mob_heads:root data.dialog_rarity_pufferfish set value "$(dialog_rarity_pufferfish)"

    data modify storage mob_heads:root data.dialog_rarity_rabbit set value "$(dialog_rarity_rabbit)"
    data modify storage mob_heads:root data.dialog_rarity_ravager set value "$(dialog_rarity_ravager)"

    data modify storage mob_heads:root data.dialog_rarity_salmon set value "$(dialog_rarity_salmon)"
    data modify storage mob_heads:root data.dialog_rarity_sheep set value "$(dialog_rarity_sheep)"
    data modify storage mob_heads:root data.dialog_rarity_shulker set value "$(dialog_rarity_shulker)"
    data modify storage mob_heads:root data.dialog_rarity_silverfish set value "$(dialog_rarity_silverfish)"
    data modify storage mob_heads:root data.dialog_rarity_skeleton_horse set value "$(dialog_rarity_skeleton_horse)"
    data modify storage mob_heads:root data.dialog_rarity_skeleton set value "$(dialog_rarity_skeleton)"
    data modify storage mob_heads:root data.dialog_rarity_slime set value "$(dialog_rarity_slime)"
    data modify storage mob_heads:root data.dialog_rarity_sniffer set value "$(dialog_rarity_sniffer)"
    data modify storage mob_heads:root data.dialog_rarity_snow_golem set value "$(dialog_rarity_snow_golem)"
    data modify storage mob_heads:root data.dialog_rarity_spider set value "$(dialog_rarity_spider)"
    data modify storage mob_heads:root data.dialog_rarity_squid set value "$(dialog_rarity_squid)"
    data modify storage mob_heads:root data.dialog_rarity_stray set value "$(dialog_rarity_stray)"
    data modify storage mob_heads:root data.dialog_rarity_strider set value "$(dialog_rarity_strider)"

    data modify storage mob_heads:root data.dialog_rarity_tadpole set value "$(dialog_rarity_tadpole)"
    data modify storage mob_heads:root data.dialog_rarity_trader_llama set value "$(dialog_rarity_trader_llama)"
    data modify storage mob_heads:root data.dialog_rarity_tropical_fish set value "$(dialog_rarity_tropical_fish)"
    data modify storage mob_heads:root data.dialog_rarity_turtle set value "$(dialog_rarity_turtle)"

    data modify storage mob_heads:root data.dialog_rarity_vex set value "$(dialog_rarity_vex)"
    data modify storage mob_heads:root data.dialog_rarity_villager set value "$(dialog_rarity_villager)"
    data modify storage mob_heads:root data.dialog_rarity_vindicator set value "$(dialog_rarity_vindicator)"

    data modify storage mob_heads:root data.dialog_rarity_wandering_trader set value "$(dialog_rarity_wandering_trader)"
    data modify storage mob_heads:root data.dialog_rarity_warden set value "$(dialog_rarity_warden)"
    data modify storage mob_heads:root data.dialog_rarity_witch set value "$(dialog_rarity_witch)"
    data modify storage mob_heads:root data.dialog_rarity_wither set value "$(dialog_rarity_wither)"
    data modify storage mob_heads:root data.dialog_rarity_wither_invulnerable set value "$(dialog_rarity_wither_invulnerable)"
    data modify storage mob_heads:root data.dialog_rarity_wolf set value "$(dialog_rarity_wolf)"

    data modify storage mob_heads:root data.dialog_rarity_zoglin set value "$(dialog_rarity_zoglin)"
    data modify storage mob_heads:root data.dialog_rarity_zombie_horse set value "$(dialog_rarity_zombie_horse)"
    data modify storage mob_heads:root data.dialog_rarity_zombie_villager set value "$(dialog_rarity_zombie_villager)"
    data modify storage mob_heads:root data.dialog_rarity_zombie set value "$(dialog_rarity_zombie)"
    data modify storage mob_heads:root data.dialog_rarity_zombified_piglin set value "$(dialog_rarity_zombified_piglin)"

# Updates
    data modify storage mob_heads:root data.dialog_rarity_copper_golem set value "$(dialog_rarity_copper_golem)"
    data modify storage mob_heads:root data.dialog_rarity_nautilus set value "$(dialog_rarity_nautilus)"
    data modify storage mob_heads:root data.dialog_rarity_parched set value "$(dialog_rarity_parched)"
    data modify storage mob_heads:root data.dialog_rarity_zombie_nautilus set value "$(dialog_rarity_zombie_nautilus)"
    data modify storage mob_heads:root data.dialog_rarity_camel_husk set value "$(dialog_rarity_camel_husk)"