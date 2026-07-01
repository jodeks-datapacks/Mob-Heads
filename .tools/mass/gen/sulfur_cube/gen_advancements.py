"""
gen_advancements.py
Advancement generators for sulfur_cube heads.

Generates:
  Per variant:
    advancements/collection/sulfur_cube/<category>/<variant>.json
    advancements/collection/sulfur_cube/<category>/end.json
  Root (once):
    advancements/collection/sulfur_cube.json
  Notification:
    advancements/notification/killed_mob_check/sulfur_cube.json

Advancement parent chain per category group:
  sulfur_cube.json (root)
    └── hot/magma_block.json        (parent: sulfur_cube)
          └── hot/end.json
    └── sticky/honeycomb_1.json     (parent: sulfur_cube)
          └── ...
"""

from _constants import (
    ENTITY_TYPE, NAME_KEY, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    jdump, write, block_extras, group_entries_by_category,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_advancement_collection(variant: str, texture: str, item_id: str, parent: str) -> dict:
    extras = block_extras(item_id)

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
                    {"text": NAME_KEY},
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


def gen_advancement_end(category: str, last_variant: str) -> dict:
    return {
        "criteria": {
            "end": {
                "trigger": "minecraft:location"
            }
        },
        "parent": f"mob_heads:{CATEGORY}/{category}/{last_variant}"
    }


# ── Root ──────────────────────────────────────────────────────────────────────

def gen_advancement_root(entries: list) -> dict:
    criteria = {}
    for entry in entries:
        category = entry.get("category", "default")
        variant  = entry["variant"]
        criteria[f"{category}_{variant}"] = {
            "trigger": "minecraft:tick",
            "conditions": {
                "player": {
                    "type_specific": {
                        "type": "minecraft:player",
                        "advancements": {
                            f"mob_heads:{CATEGORY}/{category}/{variant}": True
                        }
                    }
                }
            }
        }

    return {
        "display": {
            "icon": {
                "id": "minecraft:slime_ball"
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
    groups = group_entries_by_category(entries)
    base   = OUTPUT_ROOT / "advancements" / "collection" / "sulfur_cube"

    for category, group_entries in groups.items():
        prev_parent = f"mob_heads:{CATEGORY}"

        for entry in group_entries:
            variant = entry["variant"]
            item_id = entry.get("item_id", variant)

            adv = gen_advancement_collection(variant, entry["texture"], item_id, prev_parent)
            write(base / category / f"{variant}.json", jdump(adv))

            prev_parent = f"mob_heads:{CATEGORY}/{category}/{variant}"

        last_variant = group_entries[-1]["variant"]
        write(base / category / "end.json", jdump(gen_advancement_end(category, last_variant)))

    write(
        OUTPUT_ROOT / "advancements" / "collection" / "sulfur_cube.json",
        jdump(gen_advancement_root(entries))
    )


def write_shared_advancements(force: bool = False):
    path = OUTPUT_ROOT / f"advancements/notification/killed_mob_check/{ENTITY_TYPE}.json"
    if not path.exists() or force:
        write(path, jdump(gen_advancement_killed_mob_check()))
    else:
        print(f"  exists {path.relative_to(SCRIPT_DIR)}")
