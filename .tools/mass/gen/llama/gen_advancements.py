"""
gen_advancements.py
Advancement generators for tropical fish heads.

Generates:
  Per variant:
    advancements/collection/tropical_fish/<fish_type>/<body_color>/<pattern_color>.json
    advancements/collection/tropical_fish/<fish_type>/<body_color>/end.json
  Per fish type:
    advancements/collection/tropical_fish/<fish_type>.json
  Shared (once):
    advancements/notification/killed_mob_check/tropical_fish.json

Advancement parent chain per body-color group:
  betty.json
    └── black/black.json   (parent: betty)
          └── black/blue.json  (parent: black/black)
                └── ...
                      └── black/yellow.json
                            └── black/end.json
    └── blue/black.json   (parent: betty)
          └── ...
"""

from _constants import (
    ENTITY_TYPE, NAME_KEY, SOUND, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    jdump, write, color_extras, parse_colors, group_entries_by_body_color,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_advancement_collection(
    fish_type: str,
    variant: str,
    texture: str,
    parent: str,
) -> dict:
    fish_name_key = f"mob_heads.tropical_fish.{fish_type}"
    fish_fallback = fish_type.title()
    colors = parse_colors(variant)
    colors_list = parse_colors(variant)
    body_color = colors_list[0]
    pattern_color = colors_list[1]
    adv_path = f"{CATEGORY}/{body_color}/{pattern_color}"

    return {
        "display": {
            "icon": {
                "id": "minecraft:player_head",
                "components": {
                    "minecraft:profile": {
                        "properties": [
                            {"name": "textures", "value": texture}
                        ]
                    }
                }
            },
            "title": {
                "translate": fish_name_key,
                "fallback": fish_fallback,
                "extra": [
                    *color_extras(colors),
                    {"text": " "},
                    {"translate": "mob_heads.head", "fallback": "Head"}
                ]
            },
            "description": {
                "translate": "mob_heads.advancement.collection.collect_the",
                "fallback": "Collect the",
                "extra": [
                    {"text": " "},
                    {"translate": fish_name_key, "fallback": fish_fallback},
                    *color_extras(colors),
                    {"text": " "},
                    {"translate": "mob_heads.head", "fallback": "Head"}
                ]
            },
            "frame": "task",
            "show_toast": True,
            "announce_to_chat": True,
            "hidden": False
        },
        "parent": parent,
        "criteria": {
            "requirement": {
                "trigger": "minecraft:inventory_changed",
                "conditions": {
                    "player": [
                        {
                            "condition": "minecraft:value_check",
                            "value": {
                                "type": "minecraft:score",
                                "target": {
                                    "type": "minecraft:fixed",
                                    "name": "&head_drop_advancement"
                                },
                                "score": "mob_heads.config"
                            },
                            "range": 2
                        }
                    ],
                    "items": [
                        {
                            "items": "minecraft:player_head",
                            "components": {
                                "minecraft:profile": {
                                    "properties": [
                                        {"name": "textures", "value": texture}
                                    ]
                                }
                            }
                        }
                    ]
                }
            }
        }
    }


def gen_advancement_end(fish_type: str, body_color: str, last_variant: str) -> dict:
    """end.json for a body-color group, parent = last variant in the group."""
    colors = parse_colors(last_variant)
    last_pattern = colors[1]
    return {
        "criteria": {
            "end": {
                "trigger": "minecraft:location"
            }
        },
        "parent": f"mob_heads:{CATEGORY}/{fish_type}/{body_color}/{last_pattern}"
    }


# ── Per fish type ─────────────────────────────────────────────────────────────

def gen_advancement_fish_type(fish_type: str, entries: list) -> dict:
    """Central advancement for a fish type — one criterion per variant."""
    fish_name_key = f"mob_heads.tropical_fish.{fish_type}"
    fish_fallback = fish_type.title()

    criteria = {}
    for entry in entries:
        variant = entry["variant"]
        colors = parse_colors(variant)
        body_color, pattern_color = colors[0], colors[1]
        criteria[variant] = {
            "trigger": "minecraft:tick",
            "conditions": {
                "player": {
                    "type_specific": {
                        "type": "minecraft:player",
                        "advancements": {
                            f"mob_heads:{CATEGORY}/{fish_type}/{body_color}/{pattern_color}": True
                        }
                    }
                }
            }
        }

    return {
        "display": {
            "icon": {
                "id": "minecraft:tube_coral"
            },
            "title": {
                "translate": fish_name_key,
                "fallback": fish_fallback,
                "extra": [
                    {"text": " "},
                    {"translate": "mob_heads.heads", "fallback": "Heads"}
                ]
            },
            "description": {
                "translate": "mob_heads.advancement.collection.collect_all",
                "fallback": "Collect all",
                "extra": [
                    {"text": " "},
                    {"translate": fish_name_key, "fallback": fish_fallback},
                    {"text": " "},
                    {"translate": "mob_heads.heads", "fallback": "Heads"}
                ]
            },
            "frame": "goal",
            "show_toast": True,
            "announce_to_chat": True
        },
        "parent": f"mob_heads:{CATEGORY}",
        "criteria": criteria
    }


# ── Shared (once) ─────────────────────────────────────────────────────────────

def gen_advancement_killed_mob_check() -> dict:
    return {
        "criteria": {
            "killed_mob": {
                "trigger": "minecraft:player_killed_entity",
                "conditions": {
                    "player": [
                        {
                            "condition": "minecraft:value_check",
                            "value": {
                                "type": "minecraft:score",
                                "target": {
                                    "type": "minecraft:fixed",
                                    "name": "&drop_notification"
                                },
                                "score": "mob_heads.config"
                            },
                            "range": 1
                        },
                        {
                            "condition": "minecraft:value_check",
                            "value": {
                                "type": "minecraft:score",
                                "target": {
                                    "type": "minecraft:fixed",
                                    "name": f"&{ENTITY_TYPE}"
                                },
                                "score": "mob_heads.drop_notification"
                            },
                            "range": 1
                        }
                    ],
                    "entity": {
                        "type": f"minecraft:{ENTITY_TYPE}"
                    }
                }
            }
        },
        "rewards": {
            "function": f"mob_heads:app/notification/run/{ENTITY_TYPE}"
        }
    }


# ── Write functions ───────────────────────────────────────────────────────────

def write_advancements_for_fish_type(fish_type: str, entries: list):
    groups = group_entries_by_body_color(entries)
    base = OUTPUT_ROOT / "advancements" / "collection" / "tropical_fish"

    for body_color, group_entries in groups.items():
        prev_parent = f"mob_heads:{CATEGORY}/{fish_type}"

        for entry in group_entries:
            variant = entry["variant"]
            colors = parse_colors(variant)
            pattern_color = colors[1]

            adv = gen_advancement_collection(
                fish_type, variant, entry["texture"], prev_parent
            )
            write(base / fish_type / body_color / f"{pattern_color}.json", jdump(adv))

            # Next advancement's parent is this one
            prev_parent = f"mob_heads:{CATEGORY}/{fish_type}/{body_color}/{pattern_color}"

        # end.json — parent is the last variant in the group
        last_variant = group_entries[-1]["variant"]
        end = gen_advancement_end(fish_type, body_color, last_variant)
        write(base / fish_type / body_color / "end.json", jdump(end))

    # Central fish type advancement
    write(
        base / f"{fish_type}.json",
        jdump(gen_advancement_fish_type(fish_type, entries))
    )


def write_shared_advancements(force: bool = False):
    path = OUTPUT_ROOT / f"advancements/notification/killed_mob_check/{ENTITY_TYPE}.json"
    if not path.exists() or force:
        write(path, jdump(gen_advancement_killed_mob_check()))
    else:
        print(f"  exists {path.relative_to(SCRIPT_DIR)}")