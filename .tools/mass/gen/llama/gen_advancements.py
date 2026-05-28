"""
gen_advancements.py
Advancement generators for llama heads.

Generates:
  Per variant:
    advancements/collection/llama/<llama_color>/no_carpet.json
    advancements/collection/llama/<llama_color>/<carpet_color>.json
    advancements/collection/llama/<llama_color>/end.json
  Root (once):
    advancements/collection/llama.json
  Notification:
    advancements/notification/killed_mob_check/llama.json

Advancement parent chain per llama-color group:
  llama.json
    └── brown/no_carpet.json   (parent: llama)
          └── brown/black.json  (parent: brown/no_carpet)
                └── ...
                      └── brown/yellow.json
                            └── brown/end.json
    └── creamy/no_carpet.json  (parent: llama)
          └── ...
"""

from _constants import (
    ENTITY_TYPE, NAME_KEY, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    jdump, write, name_extras, parse_variant, carpet_key, group_entries_by_llama_color,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_advancement_collection(variant: str, texture: str, parent: str) -> dict:
    llama_color, carpet = parse_variant(variant)
    extras = name_extras(llama_color, carpet)

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
                "translate": f"item.minecraft.firework_star.{llama_color}",
                "extra": extras
            },
            "description": {
                "translate": "mob_heads.advancement.collection.collect_the",
                "fallback": "Collect the",
                "extra": [
                    {"text": " "},
                    {"translate": f"item.minecraft.firework_star.{llama_color}"},
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


def gen_advancement_end(llama_color: str, last_variant: str) -> dict:
    """end.json for a llama-color group, parent = last variant in the group."""
    key = carpet_key(last_variant)
    return {
        "criteria": {
            "end": {
                "trigger": "minecraft:location"
            }
        },
        "parent": f"mob_heads:{CATEGORY}/{llama_color}/{key}"
    }


# ── Root ──────────────────────────────────────────────────────────────────────

def gen_advancement_root(entries: list) -> dict:
    """Root advancement — one criterion per variant, tracks collecting all heads."""
    criteria = {}
    for entry in entries:
        llama_color, _ = parse_variant(entry["variant"])
        key = carpet_key(entry["variant"])
        criteria[entry["variant"]] = {
            "trigger": "minecraft:tick",
            "conditions": {
                "player": {
                    "type_specific": {
                        "type": "minecraft:player",
                        "advancements": {
                            f"mob_heads:{CATEGORY}/{llama_color}/{key}": True
                        }
                    }
                }
            }
        }

    return {
        "display": {
            "icon": {
                "id": "minecraft:llama_spawn_egg"
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
    groups = group_entries_by_llama_color(entries)
    base = OUTPUT_ROOT / "advancements" / "collection" / "llama"

    for llama_color, group_entries in groups.items():
        prev_parent = f"mob_heads:{CATEGORY}"

        for entry in group_entries:
            variant = entry["variant"]
            key = carpet_key(variant)

            adv = gen_advancement_collection(variant, entry["texture"], prev_parent)
            write(base / llama_color / f"{key}.json", jdump(adv))

            prev_parent = f"mob_heads:{CATEGORY}/{llama_color}/{key}"

        last_variant = group_entries[-1]["variant"]
        end = gen_advancement_end(llama_color, last_variant)
        write(base / llama_color / "end.json", jdump(end))

    write(
        OUTPUT_ROOT / "advancements" / "collection" / "llama.json",
        jdump(gen_advancement_root(entries))
    )


def write_shared_advancements(force: bool = False):
    path = OUTPUT_ROOT / f"advancements/notification/killed_mob_check/{ENTITY_TYPE}.json"
    if not path.exists() or force:
        write(path, jdump(gen_advancement_killed_mob_check()))
    else:
        print(f"  exists {path.relative_to(SCRIPT_DIR)}")
