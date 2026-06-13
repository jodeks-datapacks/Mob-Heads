"""
generate_head_data.py
Generates all datapack files for each mob head entry in head_data.json.
"""

import json
import pathlib
import sys

# Config

SCRIPT_DIR = pathlib.Path(__file__).parent
INPUT_FILE = SCRIPT_DIR / "head_data.json"
OUTPUT_ROOT = SCRIPT_DIR / "generated" / "heads"

RARITY_COLORS = ["white", "yellow", "aqua", "dark_purple", "gold", "green"]

# Helpers

def write(path: pathlib.Path, content: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"  wrote {path}")


def jdump(obj) -> str:
    return json.dumps(obj, indent=2, ensure_ascii=False)

# File generators

def gen_loot_table(mob: dict) -> dict:
    et = mob["entity_type"]
    name_key = mob["name"]
    texture = mob["texture"]
    sound = mob["note_block_sound"]

    set_name_functions = []
    for rarity, color in enumerate(RARITY_COLORS):
        set_name_functions.append({
            "function": "minecraft:set_name",
            "name": {
                "translate": name_key,
                "color": color,
                "italic": False,
                "extra": [
                    {"text": " "},
                    {"translate": "mob_heads.head", "fallback": "Head"}
                ]
            },
            "conditions": [
                {
                    "condition": "minecraft:value_check",
                    "value": {
                        "type": "minecraft:score",
                        "target": {"type": "minecraft:fixed", "name": f"&{et}"},
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
                                    "minecraft:note_block_sound": sound
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
                                    "path": f"data.{et}"
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


def gen_advancement_collection(mob: dict) -> dict:
    et = mob["entity_type"]
    name_key = mob["name"]
    fallback = mob.get("fallback", "")
    texture = mob["texture"]
    category = mob["category"]

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
                "translate": name_key,
                "fallback": fallback,
                "extra": [
                    {"text": " "},
                    {"translate": "mob_heads.head", "fallback": "Head"}
                ]
            },
            "description": {
                "translate": "mob_heads.advancement.collection.collect_the",
                "fallback": "Collect the",
                "extra": [
                    {"text": " "},
                    {"translate": name_key},
                    {"text": " "},
                    {"translate": "mob_heads.head", "fallback": "Head"}
                ]
            },
            "frame": "task",
            "show_toast": True,
            "announce_to_chat": True,
            "hidden": False
        },
        "parent": f"mob_heads:{category}",
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


def gen_advancement_criteria(mob: dict) -> dict:
    et = mob["entity_type"]
    category = mob["category"]

    return {
        et: {
            "trigger": "minecraft:tick",
            "conditions": {
                "player": {
                    "type_specific": {
                        "type": "minecraft:player",
                        "advancements": {
                            f"mob_heads:{category}/{et}": True
                        }
                    }
                }
            }
        }
    }


def gen_advancement_killed_mob_check(mob: dict) -> dict:
    et = mob["entity_type"]
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
                                    "name": f"&{et}"
                                },
                                "score": "mob_heads.drop_notification"
                            },
                            "range": 1
                        }
                    ],
                    "entity": {
                        "type": f"minecraft:{et}"
                    }
                }
            }
        },
        "rewards": {
            "function": f"mob_heads:app/notification/run/{et}"
        }
    }


def gen_get_mob_head(mob: dict) -> str:
    et = mob["entity_type"]
    name_key = mob["name"]
    sound = mob["note_block_sound"]
    texture = mob["texture"]
    return (
        f'give @s minecraft:player_head['
        f'minecraft:custom_name={{"translate": "{name_key}",'
        f'"extra": [{{"text": " "}},{{"translate": "mob_heads.head","fallback": "Head"}}],'
        f'"color":"white",italic:false}},'
        f'note_block_sound="{sound}",'
        f'profile={{properties:[{{name:"textures",value:"{texture}"}}]}}] 1\n'
    )


def gen_notification_check(mob: dict) -> str:
    et = mob["entity_type"]
    sound = mob["note_block_sound"]
    return (
        f'execute as @e[type=item,nbt={{Item:{{components:{{"minecraft:note_block_sound":"{sound}"}}}}}}] \\\n'
        f'  if items entity @s contents player_head '
        f'unless entity @s[nbt={{Item:{{components:{{"minecraft:custom_data":{{mob_heads.checked_head:1b}}}}}}}}] '
        f'run function mob_heads:app/notification/dropped/{et}\n'
    )


def gen_notification_dropped(mob: dict) -> str:
    et = mob["entity_type"]
    return (
        f'data modify storage mob_heads:root data.entity set value {et}\n'
        f'function mob_heads:config/drop_messages with storage mob_heads:root data\n'
        f'scoreboard players add &{et} mob_heads.head_dropped.mob 1\n'
        f'data modify entity @s Item.components."minecraft:custom_data" set value {{mob_heads.checked_head:1b}}\n'
    )


def gen_notification_run(mob: dict) -> str:
    et = mob["entity_type"]
    return (
        f'advancement revoke @a only mob_heads:killed_mob_check/{et}\n'
        f'\n'
        f'schedule function mob_heads:app/notification/check/{et} 1t\n'
        f'\n'
        f'scoreboard players add &{et} mob_heads.killed.mob 1\n'
    )

# Main

def generate(mob: dict):
    et = mob["entity_type"]
    base = OUTPUT_ROOT

    write(base / "loot_table" / f"{et}.json",                              jdump(gen_loot_table(mob)))
    write(base / "advancements" / "collection" / f"{et}.json",            jdump(gen_advancement_collection(mob)))
    write(base / "advancements" / "notification" / "killed_mob_check" / f"{et}.json",
                                                                           jdump(gen_advancement_killed_mob_check(mob)))
    write(base / "advancements" / "criteria" / f"{et}.json",                jdump(gen_advancement_criteria(mob)))
    write(base / "get_mob_head" / f"{et}.mcfunction",                      gen_get_mob_head(mob))
    write(base / "notification" / "check" / f"{et}.mcfunction",           gen_notification_check(mob))
    write(base / "notification" / "dropped" / f"{et}.mcfunction",         gen_notification_dropped(mob))
    write(base / "notification" / "run" / f"{et}.mcfunction",             gen_notification_run(mob))


def main():
    if not INPUT_FILE.exists():
        print(f"ERROR: {INPUT_FILE} not found", file=sys.stderr)
        sys.exit(1)

    mobs = json.loads(INPUT_FILE.read_text(encoding="utf-8"))
    print(f"Generating files for {len(mobs)} mob(s)...")

    for mob in mobs:
        et = mob.get("entity_type", "?")
        print(f"\n[{et}]")
        generate(mob)

    print("\nDone.")


if __name__ == "__main__":
    main()