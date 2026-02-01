execute unless score &drop_notification mobheads.config = &drop_notification mobheads.config run data modify storage mobheads:root drop_notification set value 1
data modify storage mobheads:root dialog_drop_notification set value "$(dialog_drop_notification)"
execute unless score &drop_notification mobheads.config = &drop_notification mobheads.config run scoreboard players set &drop_notification mobheads.config 1

# 1 = player, 0 = charged creeper
execute unless score &killed_by_player mobheads.config = &killed_by_player mobheads.config run data modify storage mobheads:root killed_by_player_initial set value 1
execute unless score &killed_by_player mobheads.config = &killed_by_player mobheads.config run data modify storage mobheads:root killed_by_charged_creeper_initial set value 0
data modify storage mobheads:root dialog_killed_by set value "$(dialog_killed_by)"
execute unless score &killed_by_player mobheads.config = &killed_by_player mobheads.config run scoreboard players set &killed_by_player mobheads.config 1

# Drop notification individual settings
  # Drop notification storage
    execute unless score &allay mobheads.drop_notification = &allay mobheads.drop_notification run data modify storage mobheads:root drop_notification_allay set value 1
    execute unless score &armadillo mobheads.drop_notification = &armadillo mobheads.drop_notification run data modify storage mobheads:root drop_notification_armadillo set value 1
    execute unless score &axolotl mobheads.drop_notification = &axolotl mobheads.drop_notification run data modify storage mobheads:root drop_notification_axolotl set value 1

    execute unless score &bat mobheads.drop_notification = &bat mobheads.drop_notification run data modify storage mobheads:root drop_notification_bat set value 1
    execute unless score &bee mobheads.drop_notification = &bee mobheads.drop_notification run data modify storage mobheads:root drop_notification_bee set value 1
    execute unless score &blaze mobheads.drop_notification = &blaze mobheads.drop_notification run data modify storage mobheads:root drop_notification_blaze set value 1
    execute unless score &bogged mobheads.drop_notification = &bogged mobheads.drop_notification run data modify storage mobheads:root drop_notification_bogged set value 1
    execute unless score &breeze mobheads.drop_notification = &breeze mobheads.drop_notification run data modify storage mobheads:root drop_notification_breeze set value 1

    execute unless score &camel mobheads.drop_notification = &camel mobheads.drop_notification run data modify storage mobheads:root drop_notification_camel set value 1
    execute unless score &cat mobheads.drop_notification = &cat mobheads.drop_notification run data modify storage mobheads:root drop_notification_cat set value 1
    execute unless score &cave_spider mobheads.drop_notification = &cave_spider mobheads.drop_notification run data modify storage mobheads:root drop_notification_cave_spider set value 1
    execute unless score &chicken mobheads.drop_notification = &chicken mobheads.drop_notification run data modify storage mobheads:root drop_notification_chicken set value 1
    execute unless score &cod mobheads.drop_notification = &cod mobheads.drop_notification run data modify storage mobheads:root drop_notification_cod set value 1
    execute unless score &cow mobheads.drop_notification = &cow mobheads.drop_notification run data modify storage mobheads:root drop_notification_cow set value 1
    execute unless score &creaking mobheads.drop_notification = &creaking mobheads.drop_notification run data modify storage mobheads:root drop_notification_creaking set value 1
    execute unless score &creeper mobheads.drop_notification = &creeper mobheads.drop_notification run data modify storage mobheads:root drop_notification_creeper set value 1

    execute unless score &dolphin mobheads.drop_notification = &dolphin mobheads.drop_notification run data modify storage mobheads:root drop_notification_dolphin set value 1
    execute unless score &donkey mobheads.drop_notification = &donkey mobheads.drop_notification run data modify storage mobheads:root drop_notification_donkey set value 1
    execute unless score &drowned mobheads.drop_notification = &drowned mobheads.drop_notification run data modify storage mobheads:root drop_notification_drowned set value 1

    execute unless score &elder_guardian mobheads.drop_notification = &elder_guardian mobheads.drop_notification run data modify storage mobheads:root drop_notification_elder_guardian set value 1
    execute unless score &ender_dragon mobheads.drop_notification = &ender_dragon mobheads.drop_notification run data modify storage mobheads:root drop_notification_ender_dragon set value 1
    execute unless score &enderman mobheads.drop_notification = &enderman mobheads.drop_notification run data modify storage mobheads:root drop_notification_enderman set value 1
    execute unless score &endermite mobheads.drop_notification = &endermite mobheads.drop_notification run data modify storage mobheads:root drop_notification_endermite set value 1
    execute unless score &evoker mobheads.drop_notification = &evoker mobheads.drop_notification run data modify storage mobheads:root drop_notification_evoker set value 1

    execute unless score &fox mobheads.drop_notification = &fox mobheads.drop_notification run data modify storage mobheads:root drop_notification_fox set value 1
    execute unless score &frog mobheads.drop_notification = &frog mobheads.drop_notification run data modify storage mobheads:root drop_notification_frog set value 1

    execute unless score &ghast mobheads.drop_notification = &ghast mobheads.drop_notification run data modify storage mobheads:root drop_notification_ghast set value 1
    execute unless score &glow_squid mobheads.drop_notification = &glow_squid mobheads.drop_notification run data modify storage mobheads:root drop_notification_glow_squid set value 1
    execute unless score &goat mobheads.drop_notification = &goat mobheads.drop_notification run data modify storage mobheads:root drop_notification_goat set value 1
    execute unless score &guardian mobheads.drop_notification = &guardian mobheads.drop_notification run data modify storage mobheads:root drop_notification_guardian set value 1

    execute unless score &happy_ghast mobheads.drop_notification = &happy_ghast mobheads.drop_notification run data modify storage mobheads:root drop_notification_happy_ghast set value 1
    execute unless score &hoglin mobheads.drop_notification = &hoglin mobheads.drop_notification run data modify storage mobheads:root drop_notification_hoglin set value 1
    execute unless score &horse mobheads.drop_notification = &horse mobheads.drop_notification run data modify storage mobheads:root drop_notification_horse set value 1
    execute unless score &husk mobheads.drop_notification = &husk mobheads.drop_notification run data modify storage mobheads:root drop_notification_husk set value 1

    execute unless score &illusioner mobheads.drop_notification = &illusioner mobheads.drop_notification run data modify storage mobheads:root drop_notification_illusioner set value 1
    execute unless score &iron_golem mobheads.drop_notification = &iron_golem mobheads.drop_notification run data modify storage mobheads:root drop_notification_iron_golem set value 1

    execute unless score &llama mobheads.drop_notification = &llama mobheads.drop_notification run data modify storage mobheads:root drop_notification_llama set value 1

    execute unless score &magma_cube mobheads.drop_notification = &magma_cube mobheads.drop_notification run data modify storage mobheads:root drop_notification_magma_cube set value 1
    execute unless score &mooshroom mobheads.drop_notification = &mooshroom mobheads.drop_notification run data modify storage mobheads:root drop_notification_mooshroom set value 1
    execute unless score &mooshroom_brown mobheads.drop_notification = &mooshroom_brown mobheads.drop_notification run data modify storage mobheads:root drop_notification_mooshroom_brown set value 1
    execute unless score &mule mobheads.drop_notification = &mule mobheads.drop_notification run data modify storage mobheads:root drop_notification_mule set value 1

    execute unless score &ocelot mobheads.drop_notification = &ocelot mobheads.drop_notification run data modify storage mobheads:root drop_notification_ocelot set value 1

    execute unless score &panda mobheads.drop_notification = &panda mobheads.drop_notification run data modify storage mobheads:root drop_notification_panda set value 1
    execute unless score &parrot mobheads.drop_notification = &parrot mobheads.drop_notification run data modify storage mobheads:root drop_notification_parrot set value 1
    execute unless score &phantom mobheads.drop_notification = &phantom mobheads.drop_notification run data modify storage mobheads:root drop_notification_phantom set value 1

    execute unless score &pig mobheads.drop_notification = &pig mobheads.drop_notification run data modify storage mobheads:root drop_notification_pig set value 1
    execute unless score &piglin_brute mobheads.drop_notification = &piglin_brute mobheads.drop_notification run data modify storage mobheads:root drop_notification_piglin_brute set value 1
    execute unless score &piglin mobheads.drop_notification = &piglin mobheads.drop_notification run data modify storage mobheads:root drop_notification_piglin set value 1
    execute unless score &pillager mobheads.drop_notification = &pillager mobheads.drop_notification run data modify storage mobheads:root drop_notification_pillager set value 1
    execute unless score &polar_bear mobheads.drop_notification = &polar_bear mobheads.drop_notification run data modify storage mobheads:root drop_notification_polar_bear set value 1
    execute unless score &pufferfish mobheads.drop_notification = &pufferfish mobheads.drop_notification run data modify storage mobheads:root drop_notification_pufferfish set value 1

    execute unless score &rabbit mobheads.drop_notification = &rabbit mobheads.drop_notification run data modify storage mobheads:root drop_notification_rabbit set value 1
    execute unless score &ravager mobheads.drop_notification = &ravager mobheads.drop_notification run data modify storage mobheads:root drop_notification_ravager set value 1

    execute unless score &salmon mobheads.drop_notification = &salmon mobheads.drop_notification run data modify storage mobheads:root drop_notification_salmon set value 1
    execute unless score &sheep mobheads.drop_notification = &sheep mobheads.drop_notification run data modify storage mobheads:root drop_notification_sheep set value 1
    execute unless score &shulker mobheads.drop_notification = &shulker mobheads.drop_notification run data modify storage mobheads:root drop_notification_shulker set value 1
    execute unless score &silverfish mobheads.drop_notification = &silverfish mobheads.drop_notification run data modify storage mobheads:root drop_notification_silverfish set value 1
    execute unless score &skeleton_horse mobheads.drop_notification = &skeleton_horse mobheads.drop_notification run data modify storage mobheads:root drop_notification_skeleton_horse set value 1
    execute unless score &skeleton mobheads.drop_notification = &skeleton mobheads.drop_notification run data modify storage mobheads:root drop_notification_skeleton set value 1
    execute unless score &slime mobheads.drop_notification = &slime mobheads.drop_notification run data modify storage mobheads:root drop_notification_slime set value 1
    execute unless score &sniffer mobheads.drop_notification = &sniffer mobheads.drop_notification run data modify storage mobheads:root drop_notification_sniffer set value 1
    execute unless score &snow_golem mobheads.drop_notification = &snow_golem mobheads.drop_notification run data modify storage mobheads:root drop_notification_snow_golem set value 1
    execute unless score &spider mobheads.drop_notification = &spider mobheads.drop_notification run data modify storage mobheads:root drop_notification_spider set value 1
    execute unless score &squid mobheads.drop_notification = &squid mobheads.drop_notification run data modify storage mobheads:root drop_notification_squid set value 1
    execute unless score &stray mobheads.drop_notification = &stray mobheads.drop_notification run data modify storage mobheads:root drop_notification_stray set value 1
    execute unless score &strider mobheads.drop_notification = &strider mobheads.drop_notification run data modify storage mobheads:root drop_notification_strider set value 1

    execute unless score &tadpole mobheads.drop_notification = &tadpole mobheads.drop_notification run data modify storage mobheads:root drop_notification_tadpole set value 1
    execute unless score &trader_llama mobheads.drop_notification = &trader_llama mobheads.drop_notification run data modify storage mobheads:root drop_notification_trader_llama set value 1
    execute unless score &tropical_fish mobheads.drop_notification = &tropical_fish mobheads.drop_notification run data modify storage mobheads:root drop_notification_tropical_fish set value 1

    execute unless score &turtle mobheads.drop_notification = &turtle mobheads.drop_notification run data modify storage mobheads:root drop_notification_turtle set value 1

    execute unless score &vex mobheads.drop_notification = &vex mobheads.drop_notification run data modify storage mobheads:root drop_notification_vex set value 1
    execute unless score &villager mobheads.drop_notification = &villager mobheads.drop_notification run data modify storage mobheads:root drop_notification_villager set value 1
    execute unless score &vindicator mobheads.drop_notification = &vindicator mobheads.drop_notification run data modify storage mobheads:root drop_notification_vindicator set value 1

    execute unless score &wandering_trader mobheads.drop_notification = &wandering_trader mobheads.drop_notification run data modify storage mobheads:root drop_notification_wandering_trader set value 1
    execute unless score &warden mobheads.drop_notification = &warden mobheads.drop_notification run data modify storage mobheads:root drop_notification_warden set value 1
    execute unless score &witch mobheads.drop_notification = &witch mobheads.drop_notification run data modify storage mobheads:root drop_notification_witch set value 1
    execute unless score &wither mobheads.drop_notification = &wither mobheads.drop_notification run data modify storage mobheads:root drop_notification_wither set value 1
    execute unless score &wither_invulnerable mobheads.drop_notification = &wither_invulnerable mobheads.drop_notification run data modify storage mobheads:root drop_notification_wither_invulnerable set value 1
    execute unless score &wolf mobheads.drop_notification = &wolf mobheads.drop_notification run data modify storage mobheads:root drop_notification_wolf set value 1

    execute unless score &zoglin mobheads.drop_notification = &zoglin mobheads.drop_notification run data modify storage mobheads:root drop_notification_zoglin set value 1
    execute unless score &zombie_horse mobheads.drop_notification = &zombie_horse mobheads.drop_notification run data modify storage mobheads:root drop_notification_zombie_horse set value 1
    execute unless score &zombie_villager mobheads.drop_notification = &zombie_villager mobheads.drop_notification run data modify storage mobheads:root drop_notification_zombie_villager set value 1
    execute unless score &zombie mobheads.drop_notification = &zombie mobheads.drop_notification run data modify storage mobheads:root drop_notification_zombie set value 1
    execute unless score &zombified_piglin mobheads.drop_notification = &zombified_piglin mobheads.drop_notification run data modify storage mobheads:root drop_notification_zombified_piglin set value 1

    # Drop notification scoreboard
    execute unless score &allay mobheads.drop_notification = &allay mobheads.drop_notification run scoreboard players set &allay mobheads.drop_notification 1
    execute unless score &armadillo mobheads.drop_notification = &armadillo mobheads.drop_notification run scoreboard players set &armadillo mobheads.drop_notification 1
    execute unless score &axolotl mobheads.drop_notification = &axolotl mobheads.drop_notification run scoreboard players set &axolotl mobheads.drop_notification 1

    execute unless score &bat mobheads.drop_notification = &bat mobheads.drop_notification run scoreboard players set &bat mobheads.drop_notification 1
    execute unless score &bee mobheads.drop_notification = &bee mobheads.drop_notification run scoreboard players set &bee mobheads.drop_notification 1
    execute unless score &blaze mobheads.drop_notification = &blaze mobheads.drop_notification run scoreboard players set &blaze mobheads.drop_notification 1
    execute unless score &bogged mobheads.drop_notification = &bogged mobheads.drop_notification run scoreboard players set &bogged mobheads.drop_notification 1
    execute unless score &breeze mobheads.drop_notification = &breeze mobheads.drop_notification run scoreboard players set &breeze mobheads.drop_notification 1

    execute unless score &camel mobheads.drop_notification = &camel mobheads.drop_notification run scoreboard players set &camel mobheads.drop_notification 1
    execute unless score &cat mobheads.drop_notification = &cat mobheads.drop_notification run scoreboard players set &cat mobheads.drop_notification 1
    execute unless score &cave_spider mobheads.drop_notification = &cave_spider mobheads.drop_notification run scoreboard players set &cave_spider mobheads.drop_notification 1
    execute unless score &chicken mobheads.drop_notification = &chicken mobheads.drop_notification run scoreboard players set &chicken mobheads.drop_notification 1
    execute unless score &cod mobheads.drop_notification = &cod mobheads.drop_notification run scoreboard players set &cod mobheads.drop_notification 1
    execute unless score &cow mobheads.drop_notification = &cow mobheads.drop_notification run scoreboard players set &cow mobheads.drop_notification 1
    execute unless score &creaking mobheads.drop_notification = &creaking mobheads.drop_notification run scoreboard players set &creaking mobheads.drop_notification 1
    execute unless score &creeper mobheads.drop_notification = &creeper mobheads.drop_notification run scoreboard players set &creeper mobheads.drop_notification 1

    execute unless score &dolphin mobheads.drop_notification = &dolphin mobheads.drop_notification run scoreboard players set &dolphin mobheads.drop_notification 1
    execute unless score &donkey mobheads.drop_notification = &donkey mobheads.drop_notification run scoreboard players set &donkey mobheads.drop_notification 1
    execute unless score &drowned mobheads.drop_notification = &drowned mobheads.drop_notification run scoreboard players set &drowned mobheads.drop_notification 1

    execute unless score &elder_guardian mobheads.drop_notification = &elder_guardian mobheads.drop_notification run scoreboard players set &elder_guardian mobheads.drop_notification 1
    execute unless score &ender_dragon mobheads.drop_notification = &ender_dragon mobheads.drop_notification run scoreboard players set &ender_dragon mobheads.drop_notification 1
    execute unless score &enderman mobheads.drop_notification = &enderman mobheads.drop_notification run scoreboard players set &enderman mobheads.drop_notification 1
    execute unless score &endermite mobheads.drop_notification = &endermite mobheads.drop_notification run scoreboard players set &endermite mobheads.drop_notification 1
    execute unless score &evoker mobheads.drop_notification = &evoker mobheads.drop_notification run scoreboard players set &evoker mobheads.drop_notification 1

    execute unless score &fox mobheads.drop_notification = &fox mobheads.drop_notification run scoreboard players set &fox mobheads.drop_notification 1
    execute unless score &frog mobheads.drop_notification = &frog mobheads.drop_notification run scoreboard players set &frog mobheads.drop_notification 1

    execute unless score &ghast mobheads.drop_notification = &ghast mobheads.drop_notification run scoreboard players set &ghast mobheads.drop_notification 1
    execute unless score &glow_squid mobheads.drop_notification = &glow_squid mobheads.drop_notification run scoreboard players set &glow_squid mobheads.drop_notification 1
    execute unless score &goat mobheads.drop_notification = &goat mobheads.drop_notification run scoreboard players set &goat mobheads.drop_notification 1
    execute unless score &guardian mobheads.drop_notification = &guardian mobheads.drop_notification run scoreboard players set &guardian mobheads.drop_notification 1

    execute unless score &happy_ghast mobheads.drop_notification = &happy_ghast mobheads.drop_notification run scoreboard players set &happy_ghast mobheads.drop_notification 1
    execute unless score &hoglin mobheads.drop_notification = &hoglin mobheads.drop_notification run scoreboard players set &hoglin mobheads.drop_notification 1
    execute unless score &horse mobheads.drop_notification = &horse mobheads.drop_notification run scoreboard players set &horse mobheads.drop_notification 1
    execute unless score &husk mobheads.drop_notification = &husk mobheads.drop_notification run scoreboard players set &husk mobheads.drop_notification 1

    execute unless score &illusioner mobheads.drop_notification = &illusioner mobheads.drop_notification run scoreboard players set &illusioner mobheads.drop_notification 1
    execute unless score &iron_golem mobheads.drop_notification = &iron_golem mobheads.drop_notification run scoreboard players set &iron_golem mobheads.drop_notification 1

    execute unless score &llama mobheads.drop_notification = &llama mobheads.drop_notification run scoreboard players set &llama mobheads.drop_notification 1

    execute unless score &magma_cube mobheads.drop_notification = &magma_cube mobheads.drop_notification run scoreboard players set &magma_cube mobheads.drop_notification 1
    execute unless score &mooshroom mobheads.drop_notification = &mooshroom mobheads.drop_notification run scoreboard players set &mooshroom mobheads.drop_notification 1
    execute unless score &mooshroom_brown mobheads.drop_notification = &mooshroom_brown mobheads.drop_notification run scoreboard players set &mooshroom_brown mobheads.drop_notification 1
    execute unless score &mule mobheads.drop_notification = &mule mobheads.drop_notification run scoreboard players set &mule mobheads.drop_notification 1

    execute unless score &ocelot mobheads.drop_notification = &ocelot mobheads.drop_notification run scoreboard players set &ocelot mobheads.drop_notification 1

    execute unless score &panda mobheads.drop_notification = &panda mobheads.drop_notification run scoreboard players set &panda mobheads.drop_notification 1
    execute unless score &parrot mobheads.drop_notification = &parrot mobheads.drop_notification run scoreboard players set &parrot mobheads.drop_notification 1
    execute unless score &phantom mobheads.drop_notification = &phantom mobheads.drop_notification run scoreboard players set &phantom mobheads.drop_notification 1

    execute unless score &pig mobheads.drop_notification = &pig mobheads.drop_notification run scoreboard players set &pig mobheads.drop_notification 1
    execute unless score &piglin_brute mobheads.drop_notification = &piglin_brute mobheads.drop_notification run scoreboard players set &piglin_brute mobheads.drop_notification 1
    execute unless score &piglin mobheads.drop_notification = &piglin mobheads.drop_notification run scoreboard players set &piglin mobheads.drop_notification 1
    execute unless score &pillager mobheads.drop_notification = &pillager mobheads.drop_notification run scoreboard players set &pillager mobheads.drop_notification 1
    execute unless score &polar_bear mobheads.drop_notification = &polar_bear mobheads.drop_notification run scoreboard players set &polar_bear mobheads.drop_notification 1
    execute unless score &pufferfish mobheads.drop_notification = &pufferfish mobheads.drop_notification run scoreboard players set &pufferfish mobheads.drop_notification 1

    execute unless score &rabbit mobheads.drop_notification = &rabbit mobheads.drop_notification run scoreboard players set &rabbit mobheads.drop_notification 1
    execute unless score &ravager mobheads.drop_notification = &ravager mobheads.drop_notification run scoreboard players set &ravager mobheads.drop_notification 1

    execute unless score &salmon mobheads.drop_notification = &salmon mobheads.drop_notification run scoreboard players set &salmon mobheads.drop_notification 1
    execute unless score &sheep mobheads.drop_notification = &sheep mobheads.drop_notification run scoreboard players set &sheep mobheads.drop_notification 1
    execute unless score &shulker mobheads.drop_notification = &shulker mobheads.drop_notification run scoreboard players set &shulker mobheads.drop_notification 1
    execute unless score &silverfish mobheads.drop_notification = &silverfish mobheads.drop_notification run scoreboard players set &silverfish mobheads.drop_notification 1
    execute unless score &skeleton_horse mobheads.drop_notification = &skeleton_horse mobheads.drop_notification run scoreboard players set &skeleton_horse mobheads.drop_notification 1
    execute unless score &skeleton mobheads.drop_notification = &skeleton mobheads.drop_notification run scoreboard players set &skeleton mobheads.drop_notification 1
    execute unless score &slime mobheads.drop_notification = &slime mobheads.drop_notification run scoreboard players set &slime mobheads.drop_notification 1
    execute unless score &sniffer mobheads.drop_notification = &sniffer mobheads.drop_notification run scoreboard players set &sniffer mobheads.drop_notification 1
    execute unless score &snow_golem mobheads.drop_notification = &snow_golem mobheads.drop_notification run scoreboard players set &snow_golem mobheads.drop_notification 1
    execute unless score &spider mobheads.drop_notification = &spider mobheads.drop_notification run scoreboard players set &spider mobheads.drop_notification 1
    execute unless score &squid mobheads.drop_notification = &squid mobheads.drop_notification run scoreboard players set &squid mobheads.drop_notification 1
    execute unless score &stray mobheads.drop_notification = &stray mobheads.drop_notification run scoreboard players set &stray mobheads.drop_notification 1
    execute unless score &strider mobheads.drop_notification = &strider mobheads.drop_notification run scoreboard players set &strider mobheads.drop_notification 1

    execute unless score &tadpole mobheads.drop_notification = &tadpole mobheads.drop_notification run scoreboard players set &tadpole mobheads.drop_notification 1
    execute unless score &trader_llama mobheads.drop_notification = &trader_llama mobheads.drop_notification run scoreboard players set &trader_llama mobheads.drop_notification 1
    execute unless score &tropical_fish mobheads.drop_notification = &tropical_fish mobheads.drop_notification run scoreboard players set &tropical_fish mobheads.drop_notification 1

    execute unless score &turtle mobheads.drop_notification = &turtle mobheads.drop_notification run scoreboard players set &turtle mobheads.drop_notification 1

    execute unless score &vex mobheads.drop_notification = &vex mobheads.drop_notification run scoreboard players set &vex mobheads.drop_notification 1
    execute unless score &villager mobheads.drop_notification = &villager mobheads.drop_notification run scoreboard players set &villager mobheads.drop_notification 1
    execute unless score &vindicator mobheads.drop_notification = &vindicator mobheads.drop_notification run scoreboard players set &vindicator mobheads.drop_notification 1

    execute unless score &wandering_trader mobheads.drop_notification = &wandering_trader mobheads.drop_notification run scoreboard players set &wandering_trader mobheads.drop_notification 1
    execute unless score &warden mobheads.drop_notification = &warden mobheads.drop_notification run scoreboard players set &warden mobheads.drop_notification 1
    execute unless score &witch mobheads.drop_notification = &witch mobheads.drop_notification run scoreboard players set &witch mobheads.drop_notification 1
    execute unless score &wither mobheads.drop_notification = &wither mobheads.drop_notification run scoreboard players set &wither mobheads.drop_notification 1
    execute unless score &wither_invulnerable mobheads.drop_notification = &wither_invulnerable mobheads.drop_notification run scoreboard players set &wither_invulnerable mobheads.drop_notification 1
    execute unless score &wolf mobheads.drop_notification = &wolf mobheads.drop_notification run scoreboard players set &wolf mobheads.drop_notification 1

    execute unless score &zoglin mobheads.drop_notification = &zoglin mobheads.drop_notification run scoreboard players set &zoglin mobheads.drop_notification 1
    execute unless score &zombie_horse mobheads.drop_notification = &zombie_horse mobheads.drop_notification run scoreboard players set &zombie_horse mobheads.drop_notification 1
    execute unless score &zombie_villager mobheads.drop_notification = &zombie_villager mobheads.drop_notification run scoreboard players set &zombie_villager mobheads.drop_notification 1
    execute unless score &zombie mobheads.drop_notification = &zombie mobheads.drop_notification run scoreboard players set &zombie mobheads.drop_notification 1
    execute unless score &zombified_piglin mobheads.drop_notification = &zombified_piglin mobheads.drop_notification run scoreboard players set &zombified_piglin mobheads.drop_notification 1

  # Drop notification dialog
    data modify storage mobheads:root dialog_drop_notification_allay set value "$(dialog_drop_notification_allay)"
    data modify storage mobheads:root dialog_drop_notification_armadillo set value "$(dialog_drop_notification_armadillo)"
    data modify storage mobheads:root dialog_drop_notification_axolotl set value "$(dialog_drop_notification_axolotl)"
    data modify storage mobheads:root dialog_drop_notification_bat set value "$(dialog_drop_notification_bat)"
    data modify storage mobheads:root dialog_drop_notification_bee set value "$(dialog_drop_notification_bee)"
    data modify storage mobheads:root dialog_drop_notification_blaze set value "$(dialog_drop_notification_blaze)"
    data modify storage mobheads:root dialog_drop_notification_bogged set value "$(dialog_drop_notification_bogged)"
    data modify storage mobheads:root dialog_drop_notification_breeze set value "$(dialog_drop_notification_breeze)"
    data modify storage mobheads:root dialog_drop_notification_camel set value "$(dialog_drop_notification_camel)"
    data modify storage mobheads:root dialog_drop_notification_cat set value "$(dialog_drop_notification_cat)"
    data modify storage mobheads:root dialog_drop_notification_cave_spider set value "$(dialog_drop_notification_cave_spider)"
    data modify storage mobheads:root dialog_drop_notification_chicken set value "$(dialog_drop_notification_chicken)"
    data modify storage mobheads:root dialog_drop_notification_cod set value "$(dialog_drop_notification_cod)"
    data modify storage mobheads:root dialog_drop_notification_cow set value "$(dialog_drop_notification_cow)"
    data modify storage mobheads:root dialog_drop_notification_creaking set value "$(dialog_drop_notification_creaking)"
    data modify storage mobheads:root dialog_drop_notification_creeper set value "$(dialog_drop_notification_creeper)"
    data modify storage mobheads:root dialog_drop_notification_dolphin set value "$(dialog_drop_notification_dolphin)"
    data modify storage mobheads:root dialog_drop_notification_donkey set value "$(dialog_drop_notification_donkey)"
    data modify storage mobheads:root dialog_drop_notification_drowned set value "$(dialog_drop_notification_drowned)"
    data modify storage mobheads:root dialog_drop_notification_elder_guardian set value "$(dialog_drop_notification_elder_guardian)"
    data modify storage mobheads:root dialog_drop_notification_ender_dragon set value "$(dialog_drop_notification_ender_dragon)"
    data modify storage mobheads:root dialog_drop_notification_enderman set value "$(dialog_drop_notification_enderman)"
    data modify storage mobheads:root dialog_drop_notification_endermite set value "$(dialog_drop_notification_endermite)"
    data modify storage mobheads:root dialog_drop_notification_evoker set value "$(dialog_drop_notification_evoker)"
    data modify storage mobheads:root dialog_drop_notification_fox set value "$(dialog_drop_notification_fox)"
    data modify storage mobheads:root dialog_drop_notification_frog set value "$(dialog_drop_notification_frog)"
    data modify storage mobheads:root dialog_drop_notification_ghast set value "$(dialog_drop_notification_ghast)"
    data modify storage mobheads:root dialog_drop_notification_glow_squid set value "$(dialog_drop_notification_glow_squid)"
    data modify storage mobheads:root dialog_drop_notification_goat set value "$(dialog_drop_notification_goat)"
    data modify storage mobheads:root dialog_drop_notification_guardian set value "$(dialog_drop_notification_guardian)"
    data modify storage mobheads:root dialog_drop_notification_happy_ghast set value "$(dialog_drop_notification_happy_ghast)"
    data modify storage mobheads:root dialog_drop_notification_hoglin set value "$(dialog_drop_notification_hoglin)"
    data modify storage mobheads:root dialog_drop_notification_horse set value "$(dialog_drop_notification_horse)"
    data modify storage mobheads:root dialog_drop_notification_husk set value "$(dialog_drop_notification_husk)"
    data modify storage mobheads:root dialog_drop_notification_illusioner set value "$(dialog_drop_notification_illusioner)"
    data modify storage mobheads:root dialog_drop_notification_iron_golem set value "$(dialog_drop_notification_iron_golem)"
    data modify storage mobheads:root dialog_drop_notification_llama set value "$(dialog_drop_notification_llama)"
    data modify storage mobheads:root dialog_drop_notification_magma_cube set value "$(dialog_drop_notification_magma_cube)"
    data modify storage mobheads:root dialog_drop_notification_mooshroom set value "$(dialog_drop_notification_mooshroom)"
    data modify storage mobheads:root dialog_drop_notification_mooshroom_brown set value "$(dialog_drop_notification_mooshroom_brown)"
    data modify storage mobheads:root dialog_drop_notification_mule set value "$(dialog_drop_notification_mule)"
    data modify storage mobheads:root dialog_drop_notification_ocelot set value "$(dialog_drop_notification_ocelot)"
    data modify storage mobheads:root dialog_drop_notification_panda set value "$(dialog_drop_notification_panda)"
    data modify storage mobheads:root dialog_drop_notification_parrot set value "$(dialog_drop_notification_parrot)"
    data modify storage mobheads:root dialog_drop_notification_phantom set value "$(dialog_drop_notification_phantom)"
    data modify storage mobheads:root dialog_drop_notification_pig set value "$(dialog_drop_notification_pig)"
    data modify storage mobheads:root dialog_drop_notification_piglin_brute set value "$(dialog_drop_notification_piglin_brute)"
    data modify storage mobheads:root dialog_drop_notification_piglin set value "$(dialog_drop_notification_piglin)"
    data modify storage mobheads:root dialog_drop_notification_pillager set value "$(dialog_drop_notification_pillager)"
    data modify storage mobheads:root dialog_drop_notification_polar_bear set value "$(dialog_drop_notification_polar_bear)"
    data modify storage mobheads:root dialog_drop_notification_pufferfish set value "$(dialog_drop_notification_pufferfish)"
    data modify storage mobheads:root dialog_drop_notification_rabbit set value "$(dialog_drop_notification_rabbit)"
    data modify storage mobheads:root dialog_drop_notification_ravager set value "$(dialog_drop_notification_ravager)"
    data modify storage mobheads:root dialog_drop_notification_salmon set value "$(dialog_drop_notification_salmon)"
    data modify storage mobheads:root dialog_drop_notification_sheep set value "$(dialog_drop_notification_sheep)"
    data modify storage mobheads:root dialog_drop_notification_shulker set value "$(dialog_drop_notification_shulker)"
    data modify storage mobheads:root dialog_drop_notification_silverfish set value "$(dialog_drop_notification_silverfish)"
    data modify storage mobheads:root dialog_drop_notification_skeleton_horse set value "$(dialog_drop_notification_skeleton_horse)"
    data modify storage mobheads:root dialog_drop_notification_skeleton set value "$(dialog_drop_notification_skeleton)"
    data modify storage mobheads:root dialog_drop_notification_slime set value "$(dialog_drop_notification_slime)"
    data modify storage mobheads:root dialog_drop_notification_sniffer set value "$(dialog_drop_notification_sniffer)"
    data modify storage mobheads:root dialog_drop_notification_snow_golem set value "$(dialog_drop_notification_snow_golem)"
    data modify storage mobheads:root dialog_drop_notification_spider set value "$(dialog_drop_notification_spider)"
    data modify storage mobheads:root dialog_drop_notification_squid set value "$(dialog_drop_notification_squid)"
    data modify storage mobheads:root dialog_drop_notification_stray set value "$(dialog_drop_notification_stray)"
    data modify storage mobheads:root dialog_drop_notification_strider set value "$(dialog_drop_notification_strider)"
    data modify storage mobheads:root dialog_drop_notification_tadpole set value "$(dialog_drop_notification_tadpole)"
    data modify storage mobheads:root dialog_drop_notification_trader_llama set value "$(dialog_drop_notification_trader_llama)"
    data modify storage mobheads:root dialog_drop_notification_tropical_fish set value "$(dialog_drop_notification_tropical_fish)"
    data modify storage mobheads:root dialog_drop_notification_turtle set value "$(dialog_drop_notification_turtle)"
    data modify storage mobheads:root dialog_drop_notification_vex set value "$(dialog_drop_notification_vex)"
    data modify storage mobheads:root dialog_drop_notification_villager set value "$(dialog_drop_notification_villager)"
    data modify storage mobheads:root dialog_drop_notification_vindicator set value "$(dialog_drop_notification_vindicator)"
    data modify storage mobheads:root dialog_drop_notification_wandering_trader set value "$(dialog_drop_notification_wandering_trader)"
    data modify storage mobheads:root dialog_drop_notification_warden set value "$(dialog_drop_notification_warden)"
    data modify storage mobheads:root dialog_drop_notification_witch set value "$(dialog_drop_notification_witch)"
    data modify storage mobheads:root dialog_drop_notification_wither set value "$(dialog_drop_notification_wither)"
    data modify storage mobheads:root dialog_drop_notification_wither_invulnerable set value "$(dialog_drop_notification_wither_invulnerable)"
    data modify storage mobheads:root dialog_drop_notification_wolf set value "$(dialog_drop_notification_wolf)"
    data modify storage mobheads:root dialog_drop_notification_zoglin set value "$(dialog_drop_notification_zoglin)"
    data modify storage mobheads:root dialog_drop_notification_zombie_horse set value "$(dialog_drop_notification_zombie_horse)"
    data modify storage mobheads:root dialog_drop_notification_zombie_villager set value "$(dialog_drop_notification_zombie_villager)"
    data modify storage mobheads:root dialog_drop_notification_zombie set value "$(dialog_drop_notification_zombie)"
    data modify storage mobheads:root dialog_drop_notification_zombified_piglin set value "$(dialog_drop_notification_zombified_piglin)"

# Drop rate multiplier
  data modify storage mobheads:root drop_rate_multiplier set value 1
  data modify storage mobheads:root dialog_drop_rate_multiplier set value "$(dialog_drop_rate_multiplier)"

# Head drop advancement
  data modify storage mobheads:root head_drop_advancement set value 2
  data modify storage mobheads:root dialog_head_drop_advancement set value "$(dialog_head_drop_advancement)"
  scoreboard players set &head_drop_advancement mobheads.config 2

# Drop message 
  # Drop message text
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_1 set value "A %s just dropped its head!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_2 set value "A %s head has been dropped!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_3 set value "A %s lost its head!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_4 set value "Whoa! A %s just lost its head!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_5 set value "A head from %s lies on the ground, lifeless"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_6 set value "Legends say taking the head of %s grants power"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_7 set value "Heads up! A %s lost its head!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_8 set value "Look what we have here - a %s head!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_9 set value "A %s dropped a head!"
    execute unless score &drop_message mobheads.config = &drop_message mobheads.config run data modify storage mobheads:root drop_message_10 set value "A new %s head has been dropped!"

  # Drop mnessage dialog
    data modify storage mobheads:root dialog_drop_message_1 set value "'$(dialog_drop_message_1)'"
    data modify storage mobheads:root dialog_drop_message_2 set value "'$(dialog_drop_message_2)'"
    data modify storage mobheads:root dialog_drop_message_3 set value "'$(dialog_drop_message_3)'"
    data modify storage mobheads:root dialog_drop_message_4 set value "'$(dialog_drop_message_4)'"
    data modify storage mobheads:root dialog_drop_message_5 set value "'$(dialog_drop_message_5)'"
    data modify storage mobheads:root dialog_drop_message_6 set value "'$(dialog_drop_message_6)'"
    data modify storage mobheads:root dialog_drop_message_7 set value "'$(dialog_drop_message_7)'"
    data modify storage mobheads:root dialog_drop_message_8 set value "'$(dialog_drop_message_8)'"
    data modify storage mobheads:root dialog_drop_message_9 set value "'$(dialog_drop_message_9)'"
    data modify storage mobheads:root dialog_drop_message_10 set value "'$(dialog_drop_message_10)'"

  scoreboard players set &drop_message mobheads.config 1

# Drop rates
  # Default drop rates
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root allay set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root armadillo set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root axolotl set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root axolotl_blue set value 0.05

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root bat set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root bee set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root blaze set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root bogged set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root breeze set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root camel set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cat set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cave_spider set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root chicken set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cod set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cow set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root creaking set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root creeper set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root creeper_charged set value 0.02

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root dolphin set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root donkey set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root drowned set value 0.001

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root elder_guardian set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ender_dragon set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root enderman set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root endermite set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root evoker set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root fox set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root frog set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ghast set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root glow_squid set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root goat set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root guardian set value 0.001

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root happy_ghast set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root hoglin set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root horse set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root husk set value 0.005

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root illusioner set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root iron_golem set value 0.005

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root llama set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root magma_cube set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root mooshroom set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root mooshroom_brown set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root mule set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ocelot set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root panda set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root panda_special set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root parrot set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root phantom set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root pig set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root piglin_brute set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root piglin set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root pillager set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root polar_bear set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root pufferfish set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root rabbit set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ravager set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root salmon set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root sheep set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root shulker set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root silverfish set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root skeleton_horse set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root skeleton set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root slime set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root sniffer set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root snow_golem set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root spider set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root squid set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root stray set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root strider set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root tadpole set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root trader_llama set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root tropical_fish set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root turtle set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root vex set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root villager set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root vindicator set value 0.005

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wandering_trader set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root warden set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root witch set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wither set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wither_invulnerable set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wolf set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zoglin set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombie_horse set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombie_villager set value 0.03
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombie set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombified_piglin set value 0.001

  # Initial drop rates
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root allay_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root armadillo_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root axolotl_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root axolotl_blue_init set value 0.05

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root bat_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root bee_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root blaze_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root bogged_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root breeze_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root camel_init set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cat_init set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cave_spider_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root chicken_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cod_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root cow_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root creaking_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root creeper_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root creeper_charged_init set value 0.02

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root dolphin_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root donkey_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root drowned_init set value 0.001

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root elder_guardian_init set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ender_dragon_init set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root enderman_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root endermite_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root evoker_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root fox_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root frog_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ghast_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root glow_squid_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root goat_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root guardian_init set value 0.001

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root happy_ghast_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root hoglin_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root horse_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root husk_init set value 0.005

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root illusioner_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root iron_golem_init set value 0.005

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root llama_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root magma_cube_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root mooshroom_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root mooshroom_brown_init set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root mule_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ocelot_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root panda_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root panda_special_init set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root parrot_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root phantom_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root pig_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root piglin_brute_init set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root piglin_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root pillager_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root polar_bear_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root pufferfish_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root rabbit_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root ravager_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root salmon_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root sheep_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root shulker_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root silverfish_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root skeleton_horse_init set value 0.02
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root skeleton_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root slime_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root sniffer_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root snow_golem_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root spider_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root squid_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root stray_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root strider_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root tadpole_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root trader_llama_init set value 0.005
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root tropical_fish_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root turtle_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root vex_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root villager_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root vindicator_init set value 0.005

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wandering_trader_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root warden_init set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root witch_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wither_init set value 0.05
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wither_invulnerable_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root wolf_init set value 0.01

    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zoglin_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombie_horse_init set value 0.01
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombie_villager_init set value 0.03
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombie_init set value 0.001
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root zombified_piglin_init set value 0.001

  # Dialog drop rates
    data modify storage mobheads:root drop_rate_allay set value "$(drop_rate_allay)"
    data modify storage mobheads:root drop_rate_armadillo set value "$(drop_rate_armadillo)"
    data modify storage mobheads:root drop_rate_axolotl set value "$(drop_rate_axolotl)"
    data modify storage mobheads:root drop_rate_axolotl_blue set value "$(drop_rate_axolotl_blue)"

    data modify storage mobheads:root drop_rate_bat set value "$(drop_rate_bat)"
    data modify storage mobheads:root drop_rate_bee set value "$(drop_rate_bee)"
    data modify storage mobheads:root drop_rate_blaze set value "$(drop_rate_blaze)"
    data modify storage mobheads:root drop_rate_bogged set value "$(drop_rate_bogged)"
    data modify storage mobheads:root drop_rate_breeze set value "$(drop_rate_breeze)"

    data modify storage mobheads:root drop_rate_camel set value "$(drop_rate_camel)"
    data modify storage mobheads:root drop_rate_cat set value "$(drop_rate_cat)"
    data modify storage mobheads:root drop_rate_cave_spider set value "$(drop_rate_cave_spider)"
    data modify storage mobheads:root drop_rate_chicken set value "$(drop_rate_chicken)"
    data modify storage mobheads:root drop_rate_cod set value "$(drop_rate_cod)"
    data modify storage mobheads:root drop_rate_cow set value "$(drop_rate_cow)"
    data modify storage mobheads:root drop_rate_creaking set value "$(drop_rate_creaking)"
    data modify storage mobheads:root drop_rate_creeper set value "$(drop_rate_creeper)"
    data modify storage mobheads:root drop_rate_creeper_charged set value "$(drop_rate_creeper_charged)"

    data modify storage mobheads:root drop_rate_dolphin set value "$(drop_rate_dolphin)"
    data modify storage mobheads:root drop_rate_donkey set value "$(drop_rate_donkey)"
    data modify storage mobheads:root drop_rate_drowned set value "$(drop_rate_drowned)"

    data modify storage mobheads:root drop_rate_elder_guardian set value "$(drop_rate_elder_guardian)"
    data modify storage mobheads:root drop_rate_ender_dragon set value "$(drop_rate_ender_dragon)"
    data modify storage mobheads:root drop_rate_enderman set value "$(drop_rate_enderman)"
    data modify storage mobheads:root drop_rate_endermite set value "$(drop_rate_endermite)"
    data modify storage mobheads:root drop_rate_evoker set value "$(drop_rate_evoker)"

    data modify storage mobheads:root drop_rate_fox set value "$(drop_rate_fox)"
    data modify storage mobheads:root drop_rate_frog set value "$(drop_rate_frog)"

    data modify storage mobheads:root drop_rate_ghast set value "$(drop_rate_ghast)"
    data modify storage mobheads:root drop_rate_glow_squid set value "$(drop_rate_glow_squid)"
    data modify storage mobheads:root drop_rate_goat set value "$(drop_rate_goat)"
    data modify storage mobheads:root drop_rate_guardian set value "$(drop_rate_guardian)"

    data modify storage mobheads:root drop_rate_happy_ghast set value "$(drop_rate_happy_ghast)"
    data modify storage mobheads:root drop_rate_hoglin set value "$(drop_rate_hoglin)"
    data modify storage mobheads:root drop_rate_horse set value "$(drop_rate_horse)"
    data modify storage mobheads:root drop_rate_husk set value "$(drop_rate_husk)"

    data modify storage mobheads:root drop_rate_illusioner set value "$(drop_rate_illusioner)"
    data modify storage mobheads:root drop_rate_iron_golem set value "$(drop_rate_iron_golem)"

    data modify storage mobheads:root drop_rate_llama set value "$(drop_rate_llama)"

    data modify storage mobheads:root drop_rate_magma_cube set value "$(drop_rate_magma_cube)"
    data modify storage mobheads:root drop_rate_mooshroom set value "$(drop_rate_mooshroom)"
    data modify storage mobheads:root drop_rate_mooshroom_brown set value "$(drop_rate_mooshroom_brown)"
    data modify storage mobheads:root drop_rate_mule set value "$(drop_rate_mule)"

    data modify storage mobheads:root drop_rate_ocelot set value "$(drop_rate_ocelot)"

    # panda = normal, weak
    data modify storage mobheads:root drop_rate_panda set value "$(drop_rate_panda)"
    # panda special = lazy, brown, playful, aggressive, worried
    data modify storage mobheads:root drop_rate_panda_special set value "$(drop_rate_panda_special)"
    data modify storage mobheads:root drop_rate_parrot set value "$(drop_rate_parrot)"
    data modify storage mobheads:root drop_rate_phantom set value "$(drop_rate_phantom)"
    data modify storage mobheads:root drop_rate_pig set value "$(drop_rate_pig)"
    data modify storage mobheads:root drop_rate_piglin_brute set value "$(drop_rate_piglin_brute)"
    data modify storage mobheads:root drop_rate_piglin set value "$(drop_rate_piglin)"
    data modify storage mobheads:root drop_rate_pillager set value "$(drop_rate_pillager)"
    data modify storage mobheads:root drop_rate_polar_bear set value "$(drop_rate_polar_bear)"
    data modify storage mobheads:root drop_rate_pufferfish set value "$(drop_rate_pufferfish)"

    data modify storage mobheads:root drop_rate_rabbit set value "$(drop_rate_rabbit)"
    data modify storage mobheads:root drop_rate_ravager set value "$(drop_rate_ravager)"

    data modify storage mobheads:root drop_rate_salmon set value "$(drop_rate_salmon)"
    data modify storage mobheads:root drop_rate_sheep set value "$(drop_rate_sheep)"
    data modify storage mobheads:root drop_rate_shulker set value "$(drop_rate_shulker)"
    data modify storage mobheads:root drop_rate_silverfish set value "$(drop_rate_silverfish)"
    data modify storage mobheads:root drop_rate_skeleton_horse set value "$(drop_rate_skeleton_horse)"
    data modify storage mobheads:root drop_rate_skeleton set value "$(drop_rate_skeleton)"
    data modify storage mobheads:root drop_rate_slime set value "$(drop_rate_slime)"
    data modify storage mobheads:root drop_rate_sniffer set value "$(drop_rate_sniffer)"
    data modify storage mobheads:root drop_rate_snow_golem set value "$(drop_rate_snow_golem)"
    data modify storage mobheads:root drop_rate_spider set value "$(drop_rate_spider)"
    data modify storage mobheads:root drop_rate_squid set value "$(drop_rate_squid)"
    data modify storage mobheads:root drop_rate_stray set value "$(drop_rate_stray)"
    data modify storage mobheads:root drop_rate_strider set value "$(drop_rate_strider)"

    data modify storage mobheads:root drop_rate_tadpole set value "$(drop_rate_tadpole)"
    data modify storage mobheads:root drop_rate_trader_llama set value "$(drop_rate_trader_llama)"
    data modify storage mobheads:root drop_rate_tropical_fish set value "$(drop_rate_tropical_fish)"
    data modify storage mobheads:root drop_rate_turtle set value "$(drop_rate_turtle)"

    data modify storage mobheads:root drop_rate_vex set value "$(drop_rate_vex)"
    data modify storage mobheads:root drop_rate_villager set value "$(drop_rate_villager)"
    data modify storage mobheads:root drop_rate_vindicator set value "$(drop_rate_vindicator)"

    data modify storage mobheads:root drop_rate_wandering_trader set value "$(drop_rate_wandering_trader)"
    data modify storage mobheads:root drop_rate_warden set value "$(drop_rate_warden)"
    data modify storage mobheads:root drop_rate_witch set value "$(drop_rate_witch)"
    data modify storage mobheads:root drop_rate_wither set value "$(drop_rate_wither)"
    data modify storage mobheads:root drop_rate_wither_invulnerable set value "$(drop_rate_wither_invulnerable)"
    data modify storage mobheads:root drop_rate_wolf set value "$(drop_rate_wolf)"

    data modify storage mobheads:root drop_rate_zoglin set value "$(drop_rate_zoglin)"
    data modify storage mobheads:root drop_rate_zombie_horse set value "$(drop_rate_zombie_horse)"
    data modify storage mobheads:root drop_rate_zombie_villager set value "$(drop_rate_zombie_villager)"
    data modify storage mobheads:root drop_rate_zombie set value "$(drop_rate_zombie)"
    data modify storage mobheads:root drop_rate_zombified_piglin set value "$(drop_rate_zombified_piglin)"

# Rarity levels
  # Rarity in storage
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run data modify storage mobheads:root rarity_allay set value 1
    execute unless score &armadillo mobheads.rarity = &armadillo mobheads.rarity run data modify storage mobheads:root rarity_armadillo set value 1
    execute unless score &axolotl mobheads.rarity = &axolotl mobheads.rarity run data modify storage mobheads:root rarity_axolotl set value 2
    execute unless score &axolotl_blue mobheads.rarity = &axolotl_blue mobheads.rarity run data modify storage mobheads:root rarity_axolotl_blue set value 5

    execute unless score &bat mobheads.rarity = &bat mobheads.rarity run data modify storage mobheads:root rarity_bat set value 2
    execute unless score &bee mobheads.rarity = &bee mobheads.rarity run data modify storage mobheads:root rarity_bee set value 1
    execute unless score &blaze mobheads.rarity = &blaze mobheads.rarity run data modify storage mobheads:root rarity_blaze set value 0
    execute unless score &bogged mobheads.rarity = &bogged mobheads.rarity run data modify storage mobheads:root rarity_bogged set value 1
    execute unless score &breeze mobheads.rarity = &breeze mobheads.rarity run data modify storage mobheads:root rarity_breeze set value 2

    execute unless score &camel mobheads.rarity = &camel mobheads.rarity run data modify storage mobheads:root rarity_camel set value 1
    execute unless score &cat mobheads.rarity = &cat mobheads.rarity run data modify storage mobheads:root rarity_cat set value 2
    execute unless score &cave_spider mobheads.rarity = &cave_spider mobheads.rarity run data modify storage mobheads:root rarity_cave_spider set value 0
    execute unless score &chicken mobheads.rarity = &chicken mobheads.rarity run data modify storage mobheads:root rarity_chicken set value 0
    execute unless score &cod mobheads.rarity = &cod mobheads.rarity run data modify storage mobheads:root rarity_cod set value 1
    execute unless score &cow mobheads.rarity = &cow mobheads.rarity run data modify storage mobheads:root rarity_cow set value 0
    execute unless score &creaking mobheads.rarity = &creaking mobheads.rarity run data modify storage mobheads:root rarity_creaking set value 3
    execute unless score &creeper mobheads.rarity = &creeper mobheads.rarity run data modify storage mobheads:root rarity_creeper set value 0
    execute unless score &creeper_charged mobheads.rarity = &creeper_charged mobheads.rarity run data modify storage mobheads:root rarity_creeper_charged set value 3

    execute unless score &dolphin mobheads.rarity = &dolphin mobheads.rarity run data modify storage mobheads:root rarity_dolphin set value 1
    execute unless score &donkey mobheads.rarity = &donkey mobheads.rarity run data modify storage mobheads:root rarity_donkey set value 1
    execute unless score &drowned mobheads.rarity = &drowned mobheads.rarity run data modify storage mobheads:root rarity_drowned set value 0

    execute unless score &elder_guardian mobheads.rarity = &elder_guardian mobheads.rarity run data modify storage mobheads:root rarity_elder_guardian set value 5
    execute unless score &ender_dragon mobheads.rarity = &ender_dragon mobheads.rarity run data modify storage mobheads:root rarity_ender_dragon set value 4
    execute unless score &enderman mobheads.rarity = &enderman mobheads.rarity run data modify storage mobheads:root rarity_enderman set value 0
    execute unless score &endermite mobheads.rarity = &endermite mobheads.rarity run data modify storage mobheads:root rarity_endermite set value 3
    execute unless score &evoker mobheads.rarity = &evoker mobheads.rarity run data modify storage mobheads:root rarity_evoker set value 3

    execute unless score &fox mobheads.rarity = &fox mobheads.rarity run data modify storage mobheads:root rarity_fox set value 1
    execute unless score &frog mobheads.rarity = &frog mobheads.rarity run data modify storage mobheads:root rarity_frog set value 1

    execute unless score &ghast mobheads.rarity = &ghast mobheads.rarity run data modify storage mobheads:root rarity_ghast set value 1
    execute unless score &glow_squid mobheads.rarity = &glow_squid mobheads.rarity run data modify storage mobheads:root rarity_glow_squid set value 1
    execute unless score &goat mobheads.rarity = &goat mobheads.rarity run data modify storage mobheads:root rarity_goat set value 1
    execute unless score &guardian mobheads.rarity = &guardian mobheads.rarity run data modify storage mobheads:root rarity_guardian set value 0

    execute unless score &happy_ghast mobheads.rarity = &happy_ghast mobheads.rarity run data modify storage mobheads:root rarity_happy_ghast set value 2
    execute unless score &hoglin mobheads.rarity = &hoglin mobheads.rarity run data modify storage mobheads:root rarity_hoglin set value 1
    execute unless score &horse mobheads.rarity = &horse mobheads.rarity run data modify storage mobheads:root rarity_horse set value 1
    execute unless score &husk mobheads.rarity = &husk mobheads.rarity run data modify storage mobheads:root rarity_husk set value 1

    execute unless score &illusioner mobheads.rarity = &illusioner mobheads.rarity run data modify storage mobheads:root rarity_illusioner set value 3
    execute unless score &iron_golem mobheads.rarity = &iron_golem mobheads.rarity run data modify storage mobheads:root rarity_iron_golem set value 1

    execute unless score &llama mobheads.rarity = &llama mobheads.rarity run data modify storage mobheads:root rarity_llama set value 1

    execute unless score &magma_cube mobheads.rarity = &magma_cube mobheads.rarity run data modify storage mobheads:root rarity_magma_cube set value 0
    execute unless score &mooshroom mobheads.rarity = &mooshroom mobheads.rarity run data modify storage mobheads:root rarity_mooshroom set value 2
    execute unless score &mooshroom_brown mobheads.rarity = &mooshroom_brown mobheads.rarity run data modify storage mobheads:root rarity_mooshroom_brown set value 3
    execute unless score &mule mobheads.rarity = &mule mobheads.rarity run data modify storage mobheads:root rarity_mule set value 1

    execute unless score &ocelot mobheads.rarity = &ocelot mobheads.rarity run data modify storage mobheads:root rarity_ocelot set value 2

    execute unless score &panda mobheads.rarity = &panda mobheads.rarity run data modify storage mobheads:root rarity_panda set value 2
    execute unless score &panda_special mobheads.rarity = &panda_special mobheads.rarity run data modify storage mobheads:root rarity_panda_special set value 3
    execute unless score &parrot mobheads.rarity = &parrot mobheads.rarity run data modify storage mobheads:root rarity_parrot set value 2
    execute unless score &phantom mobheads.rarity = &phantom mobheads.rarity run data modify storage mobheads:root rarity_phantom set value 1

    execute unless score &pig mobheads.rarity = &pig mobheads.rarity run data modify storage mobheads:root rarity_pig set value 0
    execute unless score &piglin_brute mobheads.rarity = &piglin_brute mobheads.rarity run data modify storage mobheads:root rarity_piglin_brute set value 5
    execute unless score &piglin mobheads.rarity = &piglin mobheads.rarity run data modify storage mobheads:root rarity_piglin set value 0
    execute unless score &pillager mobheads.rarity = &pillager mobheads.rarity run data modify storage mobheads:root rarity_pillager set value 1
    execute unless score &polar_bear mobheads.rarity = &polar_bear mobheads.rarity run data modify storage mobheads:root rarity_polar_bear set value 1
    execute unless score &pufferfish mobheads.rarity = &pufferfish mobheads.rarity run data modify storage mobheads:root rarity_pufferfish set value 1

    execute unless score &rabbit mobheads.rarity = &rabbit mobheads.rarity run data modify storage mobheads:root rarity_rabbit set value 1
    execute unless score &ravager mobheads.rarity = &ravager mobheads.rarity run data modify storage mobheads:root rarity_ravager set value 2

    execute unless score &salmon mobheads.rarity = &salmon mobheads.rarity run data modify storage mobheads:root rarity_salmon set value 1
    execute unless score &sheep mobheads.rarity = &sheep mobheads.rarity run data modify storage mobheads:root rarity_sheep set value 0
    execute unless score &shulker mobheads.rarity = &shulker mobheads.rarity run data modify storage mobheads:root rarity_shulker set value 1
    execute unless score &silverfish mobheads.rarity = &silverfish mobheads.rarity run data modify storage mobheads:root rarity_silverfish set value 0
    execute unless score &skeleton_horse mobheads.rarity = &skeleton_horse mobheads.rarity run data modify storage mobheads:root rarity_skeleton_horse set value 5
    execute unless score &skeleton mobheads.rarity = &skeleton mobheads.rarity run data modify storage mobheads:root rarity_skeleton set value 0
    execute unless score &slime mobheads.rarity = &slime mobheads.rarity run data modify storage mobheads:root rarity_slime set value 0
    execute unless score &sniffer mobheads.rarity = &sniffer mobheads.rarity run data modify storage mobheads:root rarity_sniffer set value 1
    execute unless score &snow_golem mobheads.rarity = &snow_golem mobheads.rarity run data modify storage mobheads:root rarity_snow_golem set value 1
    execute unless score &spider mobheads.rarity = &spider mobheads.rarity run data modify storage mobheads:root rarity_spider set value 0
    execute unless score &squid mobheads.rarity = &squid mobheads.rarity run data modify storage mobheads:root rarity_squid set value 1
    execute unless score &stray mobheads.rarity = &stray mobheads.rarity run data modify storage mobheads:root rarity_stray set value 1
    execute unless score &strider mobheads.rarity = &strider mobheads.rarity run data modify storage mobheads:root rarity_strider set value 1

    execute unless score &tadpole mobheads.rarity = &tadpole mobheads.rarity run data modify storage mobheads:root rarity_tadpole set value 3
    execute unless score &trader_llama mobheads.rarity = &trader_llama mobheads.rarity run data modify storage mobheads:root rarity_trader_llama set value 2
    execute unless score &tropical_fish mobheads.rarity = &tropical_fish mobheads.rarity run data modify storage mobheads:root rarity_tropical_fish set value 1

    execute unless score &turtle mobheads.rarity = &turtle mobheads.rarity run data modify storage mobheads:root rarity_turtle set value 1

    execute unless score &vex mobheads.rarity = &vex mobheads.rarity run data modify storage mobheads:root rarity_vex set value 1
    execute unless score &villager mobheads.rarity = &villager mobheads.rarity run data modify storage mobheads:root rarity_villager set value 2
    execute unless score &vindicator mobheads.rarity = &vindicator mobheads.rarity run data modify storage mobheads:root rarity_vindicator set value 2

    execute unless score &wandering_trader mobheads.rarity = &wandering_trader mobheads.rarity run data modify storage mobheads:root rarity_wandering_trader set value 2
    execute unless score &warden mobheads.rarity = &warden mobheads.rarity run data modify storage mobheads:root rarity_warden set value 4
    execute unless score &witch mobheads.rarity = &witch mobheads.rarity run data modify storage mobheads:root rarity_witch set value 2
    execute unless score &wither mobheads.rarity = &wither mobheads.rarity run data modify storage mobheads:root rarity_wither set value 4
    execute unless score &wither_invulnerable mobheads.rarity = &wither_invulnerable mobheads.rarity run data modify storage mobheads:root rarity_wither_invulnerable set value 5
    execute unless score &wolf mobheads.rarity = &wolf mobheads.rarity run data modify storage mobheads:root rarity_wolf set value 1

    execute unless score &zoglin mobheads.rarity = &zoglin mobheads.rarity run data modify storage mobheads:root rarity_zoglin set value 2
    execute unless score &zombie_horse mobheads.rarity = &zombie_horse mobheads.rarity run data modify storage mobheads:root rarity_zombie_horse set value 5
    execute unless score &zombie_villager mobheads.rarity = &zombie_villager mobheads.rarity run data modify storage mobheads:root rarity_zombie_villager set value 2
    execute unless score &zombie mobheads.rarity = &zombie mobheads.rarity run data modify storage mobheads:root rarity_zombie set value 0
    execute unless score &zombified_piglin mobheads.rarity = &zombified_piglin mobheads.rarity run data modify storage mobheads:root rarity_zombified_piglin set value 0


      # Rarity scoreboard
    execute unless score &allay mobheads.rarity = &allay mobheads.rarity run scoreboard players set &allay mobheads.rarity 1
    execute unless score &armadillo mobheads.rarity = &armadillo mobheads.rarity run scoreboard players set &armadillo mobheads.rarity 1
    execute unless score &axolotl mobheads.rarity = &axolotl mobheads.rarity run scoreboard players set &axolotl mobheads.rarity 2
    execute unless score &axolotl_blue mobheads.rarity = &axolotl_blue mobheads.rarity run scoreboard players set &axolotl_blue mobheads.rarity 5

    execute unless score &bat mobheads.rarity = &bat mobheads.rarity run scoreboard players set &bat mobheads.rarity 2
    execute unless score &bee mobheads.rarity = &bee mobheads.rarity run scoreboard players set &bee mobheads.rarity 1
    execute unless score &blaze mobheads.rarity = &blaze mobheads.rarity run scoreboard players set &blaze mobheads.rarity 0
    execute unless score &bogged mobheads.rarity = &bogged mobheads.rarity run scoreboard players set &bogged mobheads.rarity 1
    execute unless score &breeze mobheads.rarity = &breeze mobheads.rarity run scoreboard players set &breeze mobheads.rarity 2

    execute unless score &camel mobheads.rarity = &camel mobheads.rarity run scoreboard players set &camel mobheads.rarity 1
    execute unless score &cat mobheads.rarity = &cat mobheads.rarity run scoreboard players set &cat mobheads.rarity 2
    execute unless score &cave_spider mobheads.rarity = &cave_spider mobheads.rarity run scoreboard players set &cave_spider mobheads.rarity 0
    execute unless score &chicken mobheads.rarity = &chicken mobheads.rarity run scoreboard players set &chicken mobheads.rarity 0
    execute unless score &cod mobheads.rarity = &cod mobheads.rarity run scoreboard players set &cod mobheads.rarity 1
    execute unless score &cow mobheads.rarity = &cow mobheads.rarity run scoreboard players set &cow mobheads.rarity 0
    execute unless score &creaking mobheads.rarity = &creaking mobheads.rarity run scoreboard players set &creaking mobheads.rarity 3
    execute unless score &creeper mobheads.rarity = &creeper mobheads.rarity run scoreboard players set &creeper mobheads.rarity 0
    execute unless score &creeper_charged mobheads.rarity = &creeper_charged mobheads.rarity run scoreboard players set &creeper_charged mobheads.rarity 3

    execute unless score &dolphin mobheads.rarity = &dolphin mobheads.rarity run scoreboard players set &dolphin mobheads.rarity 1
    execute unless score &donkey mobheads.rarity = &donkey mobheads.rarity run scoreboard players set &donkey mobheads.rarity 1
    execute unless score &drowned mobheads.rarity = &drowned mobheads.rarity run scoreboard players set &drowned mobheads.rarity 0

    execute unless score &elder_guardian mobheads.rarity = &elder_guardian mobheads.rarity run scoreboard players set &elder_guardian mobheads.rarity 5
    execute unless score &ender_dragon mobheads.rarity = &ender_dragon mobheads.rarity run scoreboard players set &ender_dragon mobheads.rarity 4
    execute unless score &enderman mobheads.rarity = &enderman mobheads.rarity run scoreboard players set &enderman mobheads.rarity 0
    execute unless score &endermite mobheads.rarity = &endermite mobheads.rarity run scoreboard players set &endermite mobheads.rarity 3
    execute unless score &evoker mobheads.rarity = &evoker mobheads.rarity run scoreboard players set &evoker mobheads.rarity 3

    execute unless score &fox mobheads.rarity = &fox mobheads.rarity run scoreboard players set &fox mobheads.rarity 1
    execute unless score &frog mobheads.rarity = &frog mobheads.rarity run scoreboard players set &frog mobheads.rarity 1

    execute unless score &ghast mobheads.rarity = &ghast mobheads.rarity run scoreboard players set &ghast mobheads.rarity 1
    execute unless score &glow_squid mobheads.rarity = &glow_squid mobheads.rarity run scoreboard players set &glow_squid mobheads.rarity 1
    execute unless score &goat mobheads.rarity = &goat mobheads.rarity run scoreboard players set &goat mobheads.rarity 1
    execute unless score &guardian mobheads.rarity = &guardian mobheads.rarity run scoreboard players set &guardian mobheads.rarity 0

    execute unless score &happy_ghast mobheads.rarity = &happy_ghast mobheads.rarity run scoreboard players set &happy_ghast mobheads.rarity 2
    execute unless score &hoglin mobheads.rarity = &hoglin mobheads.rarity run scoreboard players set &hoglin mobheads.rarity 1
    execute unless score &horse mobheads.rarity = &horse mobheads.rarity run scoreboard players set &horse mobheads.rarity 1
    execute unless score &husk mobheads.rarity = &husk mobheads.rarity run scoreboard players set &husk mobheads.rarity 1

    execute unless score &illusioner mobheads.rarity = &illusioner mobheads.rarity run scoreboard players set &illusioner mobheads.rarity 3
    execute unless score &iron_golem mobheads.rarity = &iron_golem mobheads.rarity run scoreboard players set &iron_golem mobheads.rarity 1

    execute unless score &llama mobheads.rarity = &llama mobheads.rarity run scoreboard players set &llama mobheads.rarity 1

    execute unless score &magma_cube mobheads.rarity = &magma_cube mobheads.rarity run scoreboard players set &magma_cube mobheads.rarity 0
    execute unless score &mooshroom mobheads.rarity = &mooshroom mobheads.rarity run scoreboard players set &mooshroom mobheads.rarity 2
    execute unless score &mooshroom_brown mobheads.rarity = &mooshroom_brown mobheads.rarity run scoreboard players set &mooshroom_brown mobheads.rarity 3
    execute unless score &mule mobheads.rarity = &mule mobheads.rarity run scoreboard players set &mule mobheads.rarity 1

    execute unless score &ocelot mobheads.rarity = &ocelot mobheads.rarity run scoreboard players set &ocelot mobheads.rarity 2

    execute unless score &panda mobheads.rarity = &panda mobheads.rarity run scoreboard players set &panda mobheads.rarity 2
    execute unless score &panda_special mobheads.rarity = &panda_special mobheads.rarity run scoreboard players set &panda_special mobheads.rarity 3
    execute unless score &parrot mobheads.rarity = &parrot mobheads.rarity run scoreboard players set &parrot mobheads.rarity 2
    execute unless score &phantom mobheads.rarity = &phantom mobheads.rarity run scoreboard players set &phantom mobheads.rarity 1

    execute unless score &pig mobheads.rarity = &pig mobheads.rarity run scoreboard players set &pig mobheads.rarity 0
    execute unless score &piglin_brute mobheads.rarity = &piglin_brute mobheads.rarity run scoreboard players set &piglin_brute mobheads.rarity 5
    execute unless score &piglin mobheads.rarity = &piglin mobheads.rarity run scoreboard players set &piglin mobheads.rarity 0
    execute unless score &pillager mobheads.rarity = &pillager mobheads.rarity run scoreboard players set &pillager mobheads.rarity 1
    execute unless score &polar_bear mobheads.rarity = &polar_bear mobheads.rarity run scoreboard players set &polar_bear mobheads.rarity 1
    execute unless score &pufferfish mobheads.rarity = &pufferfish mobheads.rarity run scoreboard players set &pufferfish mobheads.rarity 1

    execute unless score &rabbit mobheads.rarity = &rabbit mobheads.rarity run scoreboard players set &rabbit mobheads.rarity 1
    execute unless score &ravager mobheads.rarity = &ravager mobheads.rarity run scoreboard players set &ravager mobheads.rarity 2

    execute unless score &salmon mobheads.rarity = &salmon mobheads.rarity run scoreboard players set &salmon mobheads.rarity 1
    execute unless score &sheep mobheads.rarity = &sheep mobheads.rarity run scoreboard players set &sheep mobheads.rarity 0
    execute unless score &shulker mobheads.rarity = &shulker mobheads.rarity run scoreboard players set &shulker mobheads.rarity 1
    execute unless score &silverfish mobheads.rarity = &silverfish mobheads.rarity run scoreboard players set &silverfish mobheads.rarity 0
    execute unless score &skeleton_horse mobheads.rarity = &skeleton_horse mobheads.rarity run scoreboard players set &skeleton_horse mobheads.rarity 5
    execute unless score &skeleton mobheads.rarity = &skeleton mobheads.rarity run scoreboard players set &skeleton mobheads.rarity 0
    execute unless score &slime mobheads.rarity = &slime mobheads.rarity run scoreboard players set &slime mobheads.rarity 0
    execute unless score &sniffer mobheads.rarity = &sniffer mobheads.rarity run scoreboard players set &sniffer mobheads.rarity 1
    execute unless score &snow_golem mobheads.rarity = &snow_golem mobheads.rarity run scoreboard players set &snow_golem mobheads.rarity 1
    execute unless score &spider mobheads.rarity = &spider mobheads.rarity run scoreboard players set &spider mobheads.rarity 0
    execute unless score &squid mobheads.rarity = &squid mobheads.rarity run scoreboard players set &squid mobheads.rarity 1
    execute unless score &stray mobheads.rarity = &stray mobheads.rarity run scoreboard players set &stray mobheads.rarity 1
    execute unless score &strider mobheads.rarity = &strider mobheads.rarity run scoreboard players set &strider mobheads.rarity 1

    execute unless score &tadpole mobheads.rarity = &tadpole mobheads.rarity run scoreboard players set &tadpole mobheads.rarity 3
    execute unless score &trader_llama mobheads.rarity = &trader_llama mobheads.rarity run scoreboard players set &trader_llama mobheads.rarity 2
    execute unless score &tropical_fish mobheads.rarity = &tropical_fish mobheads.rarity run scoreboard players set &tropical_fish mobheads.rarity 1

    execute unless score &turtle mobheads.rarity = &turtle mobheads.rarity run scoreboard players set &turtle mobheads.rarity 1

    execute unless score &vex mobheads.rarity = &vex mobheads.rarity run scoreboard players set &vex mobheads.rarity 1
    execute unless score &villager mobheads.rarity = &villager mobheads.rarity run scoreboard players set &villager mobheads.rarity 2
    execute unless score &vindicator mobheads.rarity = &vindicator mobheads.rarity run scoreboard players set &vindicator mobheads.rarity 2

    execute unless score &wandering_trader mobheads.rarity = &wandering_trader mobheads.rarity run scoreboard players set &wandering_trader mobheads.rarity 2
    execute unless score &warden mobheads.rarity = &warden mobheads.rarity run scoreboard players set &warden mobheads.rarity 4
    execute unless score &witch mobheads.rarity = &witch mobheads.rarity run scoreboard players set &witch mobheads.rarity 2
    execute unless score &wither mobheads.rarity = &wither mobheads.rarity run scoreboard players set &wither mobheads.rarity 4
    execute unless score &wither_invulnerable mobheads.rarity = &wither_invulnerable mobheads.rarity run scoreboard players set &wither_invulnerable mobheads.rarity 5
    execute unless score &wolf mobheads.rarity = &wolf mobheads.rarity run scoreboard players set &wolf mobheads.rarity 1

    execute unless score &zoglin mobheads.rarity = &zoglin mobheads.rarity run scoreboard players set &zoglin mobheads.rarity 2
    execute unless score &zombie_horse mobheads.rarity = &zombie_horse mobheads.rarity run scoreboard players set &zombie_horse mobheads.rarity 5
    execute unless score &zombie_villager mobheads.rarity = &zombie_villager mobheads.rarity run scoreboard players set &zombie_villager mobheads.rarity 2
    execute unless score &zombie mobheads.rarity = &zombie mobheads.rarity run scoreboard players set &zombie mobheads.rarity 0
    execute unless score &zombified_piglin mobheads.rarity = &zombified_piglin mobheads.rarity run scoreboard players set &zombified_piglin mobheads.rarity 0

  # Dialog rarity in storage
    data modify storage mobheads:root dialog_rarity_allay set value "$(dialog_rarity_allay)"
    data modify storage mobheads:root dialog_rarity_armadillo set value "$(dialog_rarity_armadillo)"
    data modify storage mobheads:root dialog_rarity_axolotl set value "$(dialog_rarity_axolotl)"
    data modify storage mobheads:root dialog_rarity_axolotl_blue set value "$(dialog_rarity_axolotl_blue)"

    data modify storage mobheads:root dialog_rarity_bat set value "$(dialog_rarity_bat)"
    data modify storage mobheads:root dialog_rarity_bee set value "$(dialog_rarity_bee)"
    data modify storage mobheads:root dialog_rarity_blaze set value "$(dialog_rarity_blaze)"
    data modify storage mobheads:root dialog_rarity_bogged set value "$(dialog_rarity_bogged)"
    data modify storage mobheads:root dialog_rarity_breeze set value "$(dialog_rarity_breeze)"

    data modify storage mobheads:root dialog_rarity_camel set value "$(dialog_rarity_camel)"
    data modify storage mobheads:root dialog_rarity_cat set value "$(dialog_rarity_cat)"
    data modify storage mobheads:root dialog_rarity_cave_spider set value "$(dialog_rarity_cave_spider)"
    data modify storage mobheads:root dialog_rarity_chicken set value "$(dialog_rarity_chicken)"
    data modify storage mobheads:root dialog_rarity_cod set value "$(dialog_rarity_cod)"
    data modify storage mobheads:root dialog_rarity_cow set value "$(dialog_rarity_cow)"
    data modify storage mobheads:root dialog_rarity_creaking set value "$(dialog_rarity_creaking)"
    data modify storage mobheads:root dialog_rarity_creeper set value "$(dialog_rarity_creeper)"
    data modify storage mobheads:root dialog_rarity_creeper_charged set value "$(dialog_rarity_creeper_charged)"

    data modify storage mobheads:root dialog_rarity_dolphin set value "$(dialog_rarity_dolphin)"
    data modify storage mobheads:root dialog_rarity_donkey set value "$(dialog_rarity_donkey)"
    data modify storage mobheads:root dialog_rarity_drowned set value "$(dialog_rarity_drowned)"

    data modify storage mobheads:root dialog_rarity_elder_guardian set value "$(dialog_rarity_elder_guardian)"
    data modify storage mobheads:root dialog_rarity_ender_dragon set value "$(dialog_rarity_ender_dragon)"
    data modify storage mobheads:root dialog_rarity_enderman set value "$(dialog_rarity_enderman)"
    data modify storage mobheads:root dialog_rarity_endermite set value "$(dialog_rarity_endermite)"
    data modify storage mobheads:root dialog_rarity_evoker set value "$(dialog_rarity_evoker)"

    data modify storage mobheads:root dialog_rarity_fox set value "$(dialog_rarity_fox)"
    data modify storage mobheads:root dialog_rarity_frog set value "$(dialog_rarity_frog)"

    data modify storage mobheads:root dialog_rarity_ghast set value "$(dialog_rarity_ghast)"
    data modify storage mobheads:root dialog_rarity_glow_squid set value "$(dialog_rarity_glow_squid)"
    data modify storage mobheads:root dialog_rarity_goat set value "$(dialog_rarity_goat)"
    data modify storage mobheads:root dialog_rarity_guardian set value "$(dialog_rarity_guardian)"

    data modify storage mobheads:root dialog_rarity_happy_ghast set value "$(dialog_rarity_happy_ghast)"
    data modify storage mobheads:root dialog_rarity_hoglin set value "$(dialog_rarity_hoglin)"
    data modify storage mobheads:root dialog_rarity_horse set value "$(dialog_rarity_horse)"
    data modify storage mobheads:root dialog_rarity_husk set value "$(dialog_rarity_husk)"

    data modify storage mobheads:root dialog_rarity_illusioner set value "$(dialog_rarity_illusioner)"
    data modify storage mobheads:root dialog_rarity_iron_golem set value "$(dialog_rarity_iron_golem)"

    data modify storage mobheads:root dialog_rarity_llama set value "$(dialog_rarity_llama)"

    data modify storage mobheads:root dialog_rarity_magma_cube set value "$(dialog_rarity_magma_cube)"
    data modify storage mobheads:root dialog_rarity_mooshroom set value "$(dialog_rarity_mooshroom)"
    data modify storage mobheads:root dialog_rarity_mooshroom_brown set value "$(dialog_rarity_mooshroom_brown)"
    data modify storage mobheads:root dialog_rarity_mule set value "$(dialog_rarity_mule)"

    data modify storage mobheads:root dialog_rarity_ocelot set value "$(dialog_rarity_ocelot)"

    # panda = normal, weak
    data modify storage mobheads:root dialog_rarity_panda set value "$(dialog_rarity_panda)"
    # panda special = lazy, brown, playful, aggressive, worried
    data modify storage mobheads:root dialog_rarity_panda_special set value "$(dialog_rarity_panda_special)"
    data modify storage mobheads:root dialog_rarity_parrot set value "$(dialog_rarity_parrot)"
    data modify storage mobheads:root dialog_rarity_phantom set value "$(dialog_rarity_phantom)"
    data modify storage mobheads:root dialog_rarity_pig set value "$(dialog_rarity_pig)"
    data modify storage mobheads:root dialog_rarity_piglin_brute set value "$(dialog_rarity_piglin_brute)"
    data modify storage mobheads:root dialog_rarity_piglin set value "$(dialog_rarity_piglin)"
    data modify storage mobheads:root dialog_rarity_pillager set value "$(dialog_rarity_pillager)"
    data modify storage mobheads:root dialog_rarity_polar_bear set value "$(dialog_rarity_polar_bear)"
    data modify storage mobheads:root dialog_rarity_pufferfish set value "$(dialog_rarity_pufferfish)"

    data modify storage mobheads:root dialog_rarity_rabbit set value "$(dialog_rarity_rabbit)"
    data modify storage mobheads:root dialog_rarity_ravager set value "$(dialog_rarity_ravager)"

    data modify storage mobheads:root dialog_rarity_salmon set value "$(dialog_rarity_salmon)"
    data modify storage mobheads:root dialog_rarity_sheep set value "$(dialog_rarity_sheep)"
    data modify storage mobheads:root dialog_rarity_shulker set value "$(dialog_rarity_shulker)"
    data modify storage mobheads:root dialog_rarity_silverfish set value "$(dialog_rarity_silverfish)"
    data modify storage mobheads:root dialog_rarity_skeleton_horse set value "$(dialog_rarity_skeleton_horse)"
    data modify storage mobheads:root dialog_rarity_skeleton set value "$(dialog_rarity_skeleton)"
    data modify storage mobheads:root dialog_rarity_slime set value "$(dialog_rarity_slime)"
    data modify storage mobheads:root dialog_rarity_sniffer set value "$(dialog_rarity_sniffer)"
    data modify storage mobheads:root dialog_rarity_snow_golem set value "$(dialog_rarity_snow_golem)"
    data modify storage mobheads:root dialog_rarity_spider set value "$(dialog_rarity_spider)"
    data modify storage mobheads:root dialog_rarity_squid set value "$(dialog_rarity_squid)"
    data modify storage mobheads:root dialog_rarity_stray set value "$(dialog_rarity_stray)"
    data modify storage mobheads:root dialog_rarity_strider set value "$(dialog_rarity_strider)"

    data modify storage mobheads:root dialog_rarity_tadpole set value "$(dialog_rarity_tadpole)"
    data modify storage mobheads:root dialog_rarity_trader_llama set value "$(dialog_rarity_trader_llama)"
    data modify storage mobheads:root dialog_rarity_tropical_fish set value "$(dialog_rarity_tropical_fish)"
    data modify storage mobheads:root dialog_rarity_turtle set value "$(dialog_rarity_turtle)"

    data modify storage mobheads:root dialog_rarity_vex set value "$(dialog_rarity_vex)"
    data modify storage mobheads:root dialog_rarity_villager set value "$(dialog_rarity_villager)"
    data modify storage mobheads:root dialog_rarity_vindicator set value "$(dialog_rarity_vindicator)"

    data modify storage mobheads:root dialog_rarity_wandering_trader set value "$(dialog_rarity_wandering_trader)"
    data modify storage mobheads:root dialog_rarity_warden set value "$(dialog_rarity_warden)"
    data modify storage mobheads:root dialog_rarity_witch set value "$(dialog_rarity_witch)"
    data modify storage mobheads:root dialog_rarity_wither set value "$(dialog_rarity_wither)"
    data modify storage mobheads:root dialog_rarity_wither_invulnerable set value "$(dialog_rarity_wither_invulnerable)"
    data modify storage mobheads:root dialog_rarity_wolf set value "$(dialog_rarity_wolf)"

    data modify storage mobheads:root dialog_rarity_zoglin set value "$(dialog_rarity_zoglin)"
    data modify storage mobheads:root dialog_rarity_zombie_horse set value "$(dialog_rarity_zombie_horse)"
    data modify storage mobheads:root dialog_rarity_zombie_villager set value "$(dialog_rarity_zombie_villager)"
    data modify storage mobheads:root dialog_rarity_zombie set value "$(dialog_rarity_zombie)"
    data modify storage mobheads:root dialog_rarity_zombified_piglin set value "$(dialog_rarity_zombified_piglin)"

# Changes
  # Copper Golem
    execute unless score &copper_golem mobheads.rarity = &copper_golem mobheads.rarity run data modify storage mobheads:root copper_golem set value 0.005
    execute unless score &copper_golem mobheads.rarity = &copper_golem mobheads.rarity run data modify storage mobheads:root copper_golem_init set value 0.005
    execute unless score &copper_golem mobheads.rarity = &copper_golem mobheads.rarity run scoreboard players set &copper_golem mobheads.drop_notification 1
    execute unless score &copper_golem mobheads.rarity = &copper_golem mobheads.rarity run data modify storage mobheads:root drop_notification_copper_golem set value 1
    execute unless score &copper_golem mobheads.rarity = &copper_golem mobheads.rarity run data modify storage mobheads:root rarity_copper_golem set value 1
    execute unless score &copper_golem mobheads.rarity = &copper_golem mobheads.rarity run scoreboard players set &copper_golem mobheads.rarity 1
    data modify storage mobheads:root drop_rate_copper_golem set value "$(drop_rate_copper_golem)"
    data modify storage mobheads:root dialog_rarity_copper_golem set value "$(dialog_rarity_copper_golem)"
    data modify storage mobheads:root dialog_drop_notification_copper_golem set value "$(dialog_drop_notification_copper_golem)"

  # Nautilus
    execute unless score &nautilus mobheads.rarity = &nautilus mobheads.rarity run data modify storage mobheads:root nautilus set value 0.01
    execute unless score &nautilus mobheads.rarity = &nautilus mobheads.rarity run data modify storage mobheads:root nautilus_init set value 0.01
    execute unless score &nautilus mobheads.rarity = &nautilus mobheads.rarity run scoreboard players set &nautilus mobheads.drop_notification 1
    execute unless score &nautilus mobheads.rarity = &nautilus mobheads.rarity run data modify storage mobheads:root drop_notification_nautilus set value 1
    execute unless score &nautilus mobheads.rarity = &nautilus mobheads.rarity run data modify storage mobheads:root rarity_nautilus set value 1
    execute unless score &nautilus mobheads.rarity = &nautilus mobheads.rarity run scoreboard players set &nautilus mobheads.rarity 1
    data modify storage mobheads:root drop_rate_nautilus set value "$(drop_rate_nautilus)"
    data modify storage mobheads:root dialog_rarity_nautilus set value "$(dialog_rarity_nautilus)"
    data modify storage mobheads:root dialog_drop_notification_nautilus set value "$(dialog_drop_notification_nautilus)"

  # Parched
    execute unless score &parched mobheads.rarity = &parched mobheads.rarity run data modify storage mobheads:root parched set value 0.01
    execute unless score &parched mobheads.rarity = &parched mobheads.rarity run data modify storage mobheads:root parched_init set value 0.01
    execute unless score &parched mobheads.rarity = &parched mobheads.rarity run scoreboard players set &parched mobheads.drop_notification 1
    execute unless score &parched mobheads.rarity = &parched mobheads.rarity run data modify storage mobheads:root drop_notification_parched set value 1
    execute unless score &parched mobheads.rarity = &parched mobheads.rarity run scoreboard players set &parched mobheads.rarity 1
    data modify storage mobheads:root rarity_parched set value 1
    data modify storage mobheads:root drop_rate_parched set value "$(drop_rate_parched)"
    data modify storage mobheads:root dialog_rarity_parched set value "$(dialog_rarity_parched)"
    data modify storage mobheads:root dialog_drop_notification_parched set value "$(dialog_drop_notification_parched)"

  # Zombie Nautilus
    execute unless score &zombie_nautilus mobheads.rarity = &zombie_nautilus mobheads.rarity run data modify storage mobheads:root zombie_nautilus set value 0.01
    execute unless score &zombie_nautilus mobheads.rarity = &zombie_nautilus mobheads.rarity run data modify storage mobheads:root zombie_nautilus_init set value 0.01
    execute unless score &zombie_nautilus mobheads.rarity = &zombie_nautilus mobheads.rarity run scoreboard players set &zombie_nautilus mobheads.drop_notification 1
    execute unless score &zombie_nautilus mobheads.rarity = &zombie_nautilus mobheads.rarity run data modify storage mobheads:root drop_notification_zombie_nautilus set value 1
    execute unless score &zombie_nautilus mobheads.rarity = &zombie_nautilus mobheads.rarity run data modify storage mobheads:root rarity_zombie_nautilus set value 1
    execute unless score &zombie_nautilus mobheads.rarity = &zombie_nautilus mobheads.rarity run scoreboard players set &zombie_nautilus mobheads.rarity 1
    data modify storage mobheads:root drop_rate_zombie_nautilus set value "$(drop_rate_zombie_nautilus)"
    data modify storage mobheads:root dialog_rarity_zombie_nautilus set value "$(dialog_rarity_zombie_nautilus)"
    data modify storage mobheads:root dialog_drop_notification_zombie_nautilus set value "$(dialog_drop_notification_zombie_nautilus)"

  # Camel Husk
    execute unless score &camel_husk mobheads.rarity = &camel_husk mobheads.rarity run data modify storage mobheads:root camel_husk set value 0.03
    execute unless score &camel_husk mobheads.rarity = &camel_husk mobheads.rarity run data modify storage mobheads:root camel_husk_init set value 0.03
    execute unless score &camel_husk mobheads.rarity = &camel_husk mobheads.rarity run scoreboard players set &camel_husk mobheads.drop_notification 1
    execute unless score &camel_husk mobheads.rarity = &camel_husk mobheads.rarity run data modify storage mobheads:root drop_notification_camel_husk set value 1
    execute unless score &camel_husk mobheads.rarity = &camel_husk mobheads.rarity run scoreboard players set &camel_husk mobheads.rarity 1
    execute unless score &camel_husk mobheads.rarity = &camel_husk mobheads.rarity run data modify storage mobheads:root rarity_camel_husk set value 1
    data modify storage mobheads:root drop_rate_camel_husk set value "$(drop_rate_camel_husk)"
    data modify storage mobheads:root dialog_rarity_camel_husk set value "$(dialog_rarity_camel_husk)"
    data modify storage mobheads:root dialog_drop_notification_camel_husk set value "$(dialog_drop_notification_camel_husk)"