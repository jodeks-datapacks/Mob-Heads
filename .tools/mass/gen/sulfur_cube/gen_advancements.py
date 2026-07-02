"""
gen_advancements.py
Advancement generators for sulfur_cube heads.

Generates:
  Per variant:
    advancements/collection/sulfur_cube/<category>/<variant>.json
    advancements/collection/sulfur_cube/<category>/end.json
  or, for categories with a subcategory split (see SUBCATEGORY_RULES):
    advancements/collection/sulfur_cube/<category>/<subcategory>/<variant>.json
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

Categories in SUBCATEGORY_RULES are split into subfolders (e.g. bouncy/acacia/...),
but still form a single continuous chain per category — the last variant of one
subcategory parents the first variant of the next, ending in one end.json.
"""

import re

from _constants import (
    ENTITY_TYPE, NAME_KEY, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    jdump, write, block_extras, group_entries_by_category,
)


# ── Subcategory classification ───────────────────────────────────────────────

def _wood_type(variant: str) -> str:
    """Strip stripped_/log/wood/planks/hyphae/stem/block/mosaic to get the wood species."""
    base = re.sub(r"^stripped_", "", variant)
    return re.sub(r"_(log|wood|planks|hyphae|stem|block|mosaic)$", "", base)


def _first_match(variant: str, rules: list) -> str | None:
    for key, predicate in rules:
        if predicate(variant):
            return key
    return None


SUBCATEGORY_RULES = {
    "bouncy": {
        "classify": lambda v: _wood_type(v),
        "order": None,  # alphabetical by subcategory key
    },
    "fast_flat": {
        "classify": lambda v: "coral" if "coral" in v else "other",
        "order": ["coral", "other"],
    },
    "regular": {
        "classify": lambda v: "concrete_powder" if v.endswith("_concrete_powder") else "other",
        "order": ["concrete_powder", "other"],
    },
    "slow_bouncy": {
        "classify": lambda v: _first_match(v, [
            ("concrete", lambda x: x.endswith("_concrete")),
            ("ore", lambda x: x.endswith("_ore")),
            ("glazed_terracotta", lambda x: x.startswith("glazed_")),
            ("stained_terracotta", lambda x: x.startswith("stained_")),
            ("polished", lambda x: x.startswith("polished_")),
            ("chiseled", lambda x: x.startswith("chiseled_")),
        ]) or "other",
        "order": ["concrete", "ore", "glazed_terracotta", "stained_terracotta", "polished", "chiseled", "other"],
    },
    "slow_flat": {
        "classify": lambda v: (
            "weathered_copper" if v.startswith(("weathered_", "oxidized_", "exposed_"))
            else "copper" if "copper" in v
            else "other"
        ),
        "order": ["copper", "weathered_copper", "other"],
    },
}


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


def gen_advancement_end(last_parent: str) -> dict:
    return {
        "criteria": {
            "end": {
                "trigger": "minecraft:location"
            }
        },
        "parent": last_parent
    }


# ── Root ──────────────────────────────────────────────────────────────────────

def gen_advancement_root(entries: list, entry_ids: dict) -> dict:
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
                            entry_ids[(category, variant)]: True
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
    groups    = group_entries_by_category(entries)
    base      = OUTPUT_ROOT / "advancements" / "collection" / "sulfur_cube"
    entry_ids = {}  # (category, variant) -> full advancement id

    for category, group_entries in groups.items():
        rules = SUBCATEGORY_RULES.get(category)

        if rules:
            subgroups = {}
            for entry in group_entries:
                subgroups.setdefault(rules["classify"](entry["variant"]), []).append(entry)
            for key in subgroups:
                subgroups[key].sort(key=lambda e: e["variant"])
            order = rules["order"] or sorted(subgroups)
            ordered_keys = [k for k in order if k in subgroups] + \
                           [k for k in subgroups if k not in order]
        else:
            ordered_keys = [None]
            subgroups = {None: group_entries}

        prev_parent = f"mob_heads:{CATEGORY}"
        for key in ordered_keys:
            folder = base / category / key if key else base / category
            for entry in subgroups[key]:
                variant = entry["variant"]
                item_id = entry.get("item_id", variant)

                adv = gen_advancement_collection(variant, entry["texture"], item_id, prev_parent)
                write(folder / f"{variant}.json", jdump(adv))

                subpath     = f"{category}/{key}/{variant}" if key else f"{category}/{variant}"
                prev_parent = f"mob_heads:{CATEGORY}/{subpath}"
                entry_ids[(category, variant)] = prev_parent

        write(base / category / "end.json", jdump(gen_advancement_end(prev_parent)))

    write(
        OUTPUT_ROOT / "advancements" / "collection" / "sulfur_cube.json",
        jdump(gen_advancement_root(entries, entry_ids))
    )


def write_shared_advancements(force: bool = False):
    path = OUTPUT_ROOT / f"advancements/notification/killed_mob_check/{ENTITY_TYPE}.json"
    if not path.exists() or force:
        write(path, jdump(gen_advancement_killed_mob_check()))
    else:
        print(f"  exists {path.relative_to(SCRIPT_DIR)}")
