"""
gen_advancements.py
Advancement generators for happy_ghast heads.

Generates:
  Per variant:
    advancements/collection/happy_ghast/<harness_color>/<state>.json
    advancements/collection/happy_ghast/<harness_color>/end.json
  Root (once):
    advancements/collection/happy_ghast.json
  Notification:
    advancements/notification/killed_mob_check/happy_ghast.json

Advancement parent chain per harness-color group:
  happy_ghast.json
    └── black/down.json   (parent: happy_ghast)
          └── black/up.json  (parent: black/down)
                └── black/end.json
    └── blue/down.json   (parent: happy_ghast)
          └── ...
"""

from _constants import (
    ENTITY_TYPE, NAME_KEY, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    jdump, write, name_extras, parse_variant, group_entries_by_harness_color,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_advancement_collection(variant: str, texture: str, parent: str) -> dict:
    harness_color, state = parse_variant(variant)
    extras = name_extras(harness_color, state)

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
                "translate": NAME_KEY,
                "extra": extras
            },
            "description": {
                "translate": "mob_heads.advancement.collection.collect_the",
                "fallback": "Collect the",
                "extra": [
                    {"text": " "},
                    {"translate": NAME_KEY},
                    *extras
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


def gen_advancement_end(harness_color: str, last_variant: str) -> dict:
    """end.json for a harness-color group, parent = last variant in the group."""
    _, state = parse_variant(last_variant)
    return {
        "criteria": {
            "end": {
                "trigger": "minecraft:location"
            }
        },
        "parent": f"mob_heads:{CATEGORY}/{harness_color}/{state}"
    }


# ── Root ──────────────────────────────────────────────────────────────────────

def gen_advancement_root(entries: list) -> dict:
    """Root advancement — one criterion per variant, tracks collecting all heads."""
    criteria = {}
    for entry in entries:
        harness_color, state = parse_variant(entry["variant"])
        criteria[entry["variant"]] = {
            "trigger": "minecraft:tick",
            "conditions": {
                "player": {
                    "type_specific": {
                        "type": "minecraft:player",
                        "advancements": {
                            f"mob_heads:{CATEGORY}/{harness_color}/{state}": True
                        }
                    }
                }
            }
        }

    return {
        "display": {
            "icon": {
                "id": "minecraft:ghast_tear"
            },
            "title": {
                "translate": NAME_KEY,
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
                    {"translate": NAME_KEY},
                    {"text": " "},
                    {"translate": "mob_heads.heads", "fallback": "Heads"}
                ]
            },
            "background": "minecraft:block/flowering_azalea_leaves",
            "frame": "challenge",
            "show_toast": True,
            "announce_to_chat": True
        },
        "criteria": criteria
    }


# ── Notification (once) ───────────────────────────────────────────────────────

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

def write_advancements(entries: list):
    groups = group_entries_by_harness_color(entries)
    base = OUTPUT_ROOT / "advancements" / "collection" / "happy_ghast"

    for harness_color, group_entries in groups.items():
        prev_parent = f"mob_heads:{CATEGORY}"

        for entry in group_entries:
            variant = entry["variant"]
            _, state = parse_variant(variant)

            adv = gen_advancement_collection(variant, entry["texture"], prev_parent)
            write(base / harness_color / f"{state}.json", jdump(adv))

            prev_parent = f"mob_heads:{CATEGORY}/{harness_color}/{state}"

        last_variant = group_entries[-1]["variant"]
        end = gen_advancement_end(harness_color, last_variant)
        write(base / harness_color / "end.json", jdump(end))

    write(
        OUTPUT_ROOT / "advancements" / "collection" / "happy_ghast.json",
        jdump(gen_advancement_root(entries))
    )


def write_shared_advancements(force: bool = False):
    path = OUTPUT_ROOT / f"advancements/notification/killed_mob_check/{ENTITY_TYPE}.json"
    if not path.exists() or force:
        write(path, jdump(gen_advancement_killed_mob_check()))
    else:
        print(f"  exists {path.relative_to(SCRIPT_DIR)}")
