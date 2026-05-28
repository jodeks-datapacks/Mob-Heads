"""
gen_loot_table.py
Loot table generators for llama heads.

Generates per variant:
  loot_table/llama/<llama_color>/no_carpet.json
  loot_table/llama/<llama_color>/<carpet_color>.json

Summary:
  loot_table/llama.json
"""

from _constants import (
    ENTITY_TYPE, SOUND,
    RARITY_COLORS, OUTPUT_ROOT,
    jdump, write, name_extras, parse_variant, carpet_key, group_entries_by_llama_color,
)


def gen_loot_table(variant: str, texture: str) -> dict:
    llama_color, carpet = parse_variant(variant)

    set_name_functions = []
    for rarity, rarity_color in enumerate(RARITY_COLORS):
        set_name_functions.append({
            "function": "minecraft:set_name",
            "name": {
                "color": rarity_color,
                "translate": f"item.minecraft.firework_star.{llama_color}",
                "italic": False,
                "extra": name_extras(llama_color, carpet)
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

    # carpet condition: has a specific carpet, or (inverted) has no wool carpet at all
    if carpet is not None:
        carpet_condition = {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
                "slots": {
                    "armor.body": {
                        "items": f"minecraft:{carpet}_carpet"
                    }
                }
            }
        }
    else:
        carpet_condition = {
            "condition": "minecraft:inverted",
            "term": {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                    "slots": {
                        "armor.body": {
                            "items": "#minecraft:wool_carpets"
                        }
                    }
                }
            }
        }

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
                                    "minecraft:note_block_sound": SOUND
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
                                    "components": {
                                        f"minecraft:{ENTITY_TYPE}/variant": llama_color
                                    }
                                }
                            },
                            carpet_condition,
                            {
                                "condition": "reference",
                                "name": "mob_heads:should_head_drop"
                            }
                        ]
                    }
                ]
            }
        ]
    }


def gen_summary_loot_table(entries: list) -> dict:
    groups = group_entries_by_llama_color(entries)
    pools = []
    for llama_color, group_entries in groups.items():
        for entry in group_entries:
            key = carpet_key(entry["variant"])
            pools.append({
                "rolls": 1,
                "entries": [
                    {
                        "type": "loot_table",
                        "value": f"mob_heads:entities/llama/{llama_color}/{key}"
                    }
                ]
            })
    return {
        "type": "minecraft:entity",
        "pools": pools
    }


def write_loot_tables(entries: list):
    groups = group_entries_by_llama_color(entries)
    base = OUTPUT_ROOT / "loot_table" / "llama"

    for llama_color, group_entries in groups.items():
        for entry in group_entries:
            key = carpet_key(entry["variant"])
            write(
                base / llama_color / f"{key}.json",
                jdump(gen_loot_table(entry["variant"], entry["texture"]))
            )

    write(
        OUTPUT_ROOT / "loot_table" / "llama.json",
        jdump(gen_summary_loot_table(entries))
    )
