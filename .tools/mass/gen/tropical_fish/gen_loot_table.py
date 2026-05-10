"""
gen_loot_table.py
Loot table generators for tropical fish heads.

Generates per variant:
  loot_table/tropical_fish/<fish_type>/<body_color>/<pattern_color>.json
"""

from _constants import (
    ENTITY_TYPE, SOUND, CATEGORY,
    RARITY_COLORS, OUTPUT_ROOT, SCRIPT_DIR,
    jdump, write, color_extras, parse_colors, group_entries_by_body_color,
)


def gen_loot_table(fish_type: str, variant: str, texture: str) -> dict:
    colors = parse_colors(variant)
    body_color, pattern_color = colors[0], colors[1]
    fish_name_key = f"mob_heads.tropical_fish.{fish_type}"
    fish_fallback = fish_type.title()

    set_name_functions = []
    for rarity, rarity_color in enumerate(RARITY_COLORS):
        set_name_functions.append({
            "function": "minecraft:set_name",
            "name": {
                "translate": fish_name_key,
                "fallback": fish_fallback,
                "color": rarity_color,
                "italic": False,
                "extra": [
                    *color_extras(colors),
                    {"text": " "},
                    {"translate": "mob_heads.head", "fallback": "Head"}
                ]
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
                                    "components": {
                                        "minecraft:tropical_fish/pattern": fish_type,
                                        "minecraft:tropical_fish/base_color": body_color,
                                        "minecraft:tropical_fish/pattern_color": pattern_color
                                    }
                                }
                            },
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


def write_loot_tables_for_fish_type(fish_type: str, entries: list):
    groups = group_entries_by_body_color(entries)
    base = OUTPUT_ROOT / "loot_table" / "tropical_fish"

    for body_color, group_entries in groups.items():
        for entry in group_entries:
            variant = entry["variant"]
            pattern_color = parse_colors(variant)[1]
            write(
                base / fish_type / body_color / f"{pattern_color}.json",
                jdump(gen_loot_table(fish_type, variant, entry["texture"]))
            )