"""
gen_loot_table.py
Loot table generators for happy_ghast heads.

Generates per variant:
  loot_table/happy_ghast/<harness_color>/<state>.json

Summary:
  loot_table/happy_ghast.json
"""

from _constants import (
    ENTITY_TYPE, SOUND,
    RARITY_COLORS, OUTPUT_ROOT,
    jdump, write, name_extras, parse_variant, group_entries_by_harness_color,
)


def gen_loot_table(variant: str, texture: str) -> dict:
    harness_color, state = parse_variant(variant)

    set_name_functions = []
    for rarity, rarity_color in enumerate(RARITY_COLORS):
        set_name_functions.append({
            "function": "minecraft:set_name",
            "name": {
                "translate": f"entity.minecraft.{ENTITY_TYPE}",
                "color": rarity_color,
                "italic": False,
                "extra": name_extras(harness_color, state)
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

    # down = has a player riding, up = no player riding
    if state == "down":
        passenger_condition = {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
                "passenger": {"type": "minecraft:player"}
            }
        }
    else:
        passenger_condition = {
            "condition": "minecraft:inverted",
            "term": {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                    "passenger": {"type": "minecraft:player"}
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
                                "function": "minecraft:set_components",
                                "components": {
                                    "minecraft:note_block_sound": SOUND
                                }
                            },
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
                            *set_name_functions
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
                                            "items": f"minecraft:{harness_color}_harness"
                                        }
                                    }
                                }
                            },
                            passenger_condition,
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
    groups = group_entries_by_harness_color(entries)
    pools = []
    for harness_color, group_entries in groups.items():
        for entry in group_entries:
            _, state = parse_variant(entry["variant"])
            pools.append({
                "rolls": 1,
                "entries": [
                    {
                        "type": "loot_table",
                        "value": f"mob_heads:entities/happy_ghast/{harness_color}/{state}"
                    }
                ]
            })
    return {
        "type": "minecraft:entity",
        "pools": pools
    }


def write_loot_tables(entries: list):
    groups = group_entries_by_harness_color(entries)
    base = OUTPUT_ROOT / "loot_table" / "happy_ghast"

    for harness_color, group_entries in groups.items():
        for entry in group_entries:
            _, state = parse_variant(entry["variant"])
            write(
                base / harness_color / f"{state}.json",
                jdump(gen_loot_table(entry["variant"], entry["texture"]))
            )

    write(
        OUTPUT_ROOT / "loot_table" / "happy_ghast.json",
        jdump(gen_summary_loot_table(entries))
    )
