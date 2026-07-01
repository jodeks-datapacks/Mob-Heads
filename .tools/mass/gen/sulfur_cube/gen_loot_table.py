"""
gen_loot_table.py
Loot table generators for sulfur_cube heads.

Generates per variant:
  loot_table/sulfur_cube/<category>/<variant>.json

Summary:
  loot_table/sulfur_cube.json
"""

from _constants import (
    ENTITY_TYPE, SOUND,
    RARITY_COLORS, OUTPUT_ROOT,
    jdump, write, block_extras, group_entries_by_category,
)


def gen_loot_table(variant: str, texture: str, item_id: str, note_block_sound: str) -> dict:
    extras = block_extras(item_id)

    set_name_functions = []
    for rarity, rarity_color in enumerate(RARITY_COLORS):
        set_name_functions.append({
            "function": "minecraft:set_name",
            "name": {
                "color": rarity_color,
                "translate": f"entity.minecraft.{ENTITY_TYPE}",
                "italic": False,
                "extra": extras
            },
            "conditions": [
                {
                    "condition": "minecraft:value_check",
                    "value": {
                        "type": "minecraft:score",
                        "target": {"type": "minecraft:fixed", "name": f"&{ENTITY_TYPE}"},
                        "score": "mob_heads.rarity"
                    },
                    "range": rarity
                }
            ]
        })

    return {
        "type": "minecraft:entity",
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": "minecraft:player_head",
                        "weight": 1,
                        "functions": [
                            {
                                "function": "minecraft:set_count",
                                "count": 1
                            },
                            {
                                "function": "minecraft:set_components",
                                "components": {
                                    "minecraft:profile": {
                                        "properties": [
                                            {"name": "textures", "value": texture}
                                        ]
                                    }
                                }
                            },
                            *set_name_functions,
                            {
                                "function": "minecraft:set_components",
                                "components": {
                                    "minecraft:note_block_sound": note_block_sound
                                }
                            },
                            {
                                "function": "minecraft:set_components",
                                "components": {
                                    "minecraft:custom_data": {
                                        ENTITY_TYPE: True
                                    }
                                }
                            }
                        ],
                        "conditions": [
                            {
                                "condition": "minecraft:random_chance",
                                "chance": {
                                    "type": "minecraft:storage",
                                    "storage": "mob_heads:root",
                                    "path": f"data.{ENTITY_TYPE}"
                                }
                            },
                            {
                                "condition": "minecraft:entity_properties",
                                "entity": "this",
                                "predicate": {
                                    "slots": {
                                        "armor.body": {
                                            "items": f"minecraft:{item_id}"
                                        }
                                    }
                                }
                            },
                            {
                                "condition": "reference",
                                "name": f"mob_heads:should_head_drop_{ENTITY_TYPE}"
                            }
                        ]
                    }
                ]
            }
        ]
    }


def gen_summary_loot_table(entries: list) -> dict:
    groups = group_entries_by_category(entries)
    pools  = []
    for category, group_entries in groups.items():
        for entry in group_entries:
            variant = entry["variant"]
            pools.append({
                "rolls": 1,
                "entries": [
                    {
                        "type": "loot_table",
                        "value": f"mob_heads:entities/{ENTITY_TYPE}/{category}/{variant}"
                    }
                ]
            })
    return {
        "type": "minecraft:entity",
        "pools": pools
    }


def write_loot_tables(entries: list):
    groups = group_entries_by_category(entries)
    base   = OUTPUT_ROOT / "loot_table" / "sulfur_cube"

    for category, group_entries in groups.items():
        for entry in group_entries:
            variant = entry["variant"]
            item_id = entry.get("item_id", variant)
            sound   = entry.get("note_block_sound", SOUND)
            write(
                base / category / f"{variant}.json",
                jdump(gen_loot_table(variant, entry["texture"], item_id, sound))
            )

    write(
        OUTPUT_ROOT / "loot_table" / "sulfur_cube.json",
        jdump(gen_summary_loot_table(entries))
    )
