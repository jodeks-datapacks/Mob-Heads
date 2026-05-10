"""
gen_mcfunctions.py
mcfunction generators for tropical fish heads.

Generates per variant:
  get_mob_head/tropical_fish/<fish_type>/<body_color>/<pattern_color>.mcfunction

Generates once per fish type:
  get_mob_head/tropical_fish/<fish_type>_dialog.mcfunction

Generates shared (once):
  notification/check/tropical_fish.mcfunction
  notification/dropped/tropical_fish.mcfunction
  notification/run/tropical_fish.mcfunction
"""

from _constants import (
    ENTITY_TYPE, SOUND, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    write, parse_colors, group_entries_by_body_color,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_get_mob_head(fish_type: str, variant: str, texture: str) -> str:
    fish_name_key = f"mob_heads.tropical_fish.{fish_type}"
    colors = parse_colors(variant)
    color_parts = "".join(
        f'{{"text": " "}},{{"translate": "item.minecraft.firework_star.{c}"}},'
        for c in colors
    )
    return (
        f'give @s minecraft:player_head['
        f'minecraft:custom_name={{"translate": "{fish_name_key}", "fallback": "{fish_type.title()}", '
        f'"extra": [{color_parts}{{"text": " "}},{{"translate": "mob_heads.head","fallback": "Head"}}],'
        f'"color":"white",italic:false}},'
        f'note_block_sound="{SOUND}",'
        f'profile={{properties:[{{name:"textures",value:"{texture}"}}]}}] 1\n'
    )


# ── Dialog ────────────────────────────────────────────────────────────────────

def _dialog_action(fish_type: str, body_color: str, pattern_color: str, texture: str) -> str:
    command = f"function mob_heads:app/get_mob_head/tropical_fish/{fish_type}/{body_color}/{pattern_color}"
    tex = texture.rstrip("=")
    lines = [
        "    {",
        '      "label": {',
        '        "player": {',
        '          "properties": [',
        "            {",
        '              "name": "textures",',
        f'              "value": "{tex}"',
        "            }",
        "          ]",
        "        },",
        '        "extra": [',
        '          "|"',
        "        ]",
        "      },",
        "      action:{",
        '        type:"run_command",',
        f'        command:"{command}"',
        "      },",
        '      "width": 22',
        "    }",
    ]
    return "\n".join(lines)


def gen_dialog(fish_type: str, entries: list) -> str:
    groups = group_entries_by_body_color(entries)
    actions = []
    for body_color, group_entries in groups.items():
        for entry in group_entries:
            variant = entry["variant"]
            pattern_color = parse_colors(variant)[1]
            actions.append(_dialog_action(fish_type, body_color, pattern_color, entry["texture"]))

    actions_str = ",\n".join(actions)
    return (
        'dialog show @s {\\\n'
        '  type:"minecraft:multi_action",\\\n'
        '  title:"Get Mob Head",\\\n'
        '  "body": {\\\n'
        '    "type": "minecraft:plain_message",\\\n'
        '    "contents": [\\\n'
        '      "Click on a head and click \\"Run Command\\"",\\\n'
        '      "\\n",\\\n'
        '      "\\n",\\\n'
        '      "Close with escape"\\\n'
        '    ]\\\n'
        '  },\\\n'
        '  columns:15,\\\n'
        '  "after_action": "none",\\\n'
        '  actions:[\\\n'
        + actions_str.replace("\n", "\\\n")
        + "\\\n"
        '  ]\\\n'
        '}\n'
    )


# ── Shared (once) ─────────────────────────────────────────────────────────────

def gen_notification_check() -> str:
    return (
        f'execute as @e[type=item,nbt={{Item:{{components:{{"minecraft:note_block_sound":"{SOUND}"}}}}}}] \\\n'
        f'  if items entity @s contents player_head '
        f'unless entity @s[nbt={{Item:{{components:{{"minecraft:custom_data":{{mob_heads.checked_head:1b}}}}}}}}] '
        f'run function mob_heads:app/notification/dropped/{ENTITY_TYPE}\n'
    )


def gen_notification_dropped() -> str:
    return (
        f'data modify storage mob_heads:root data.entity set value {ENTITY_TYPE}\n'
        f'function mob_heads:config/drop_messages with storage mob_heads:root data\n'
        f'scoreboard players add &{ENTITY_TYPE} mob_heads.head_dropped.mob 1\n'
        f'data modify entity @s Item.components."minecraft:custom_data" set value {{mob_heads.checked_head:1b}}\n'
    )


def gen_notification_run() -> str:
    return (
        f'advancement revoke @a only mob_heads:killed_mob_check/{ENTITY_TYPE}\n'
        f'\n'
        f'schedule function mob_heads:app/notification/check/{ENTITY_TYPE} 1t\n'
        f'\n'
        f'scoreboard players add &{ENTITY_TYPE} mob_heads.killed.mob 1\n'
    )


# ── Write functions ───────────────────────────────────────────────────────────

def write_mcfunctions_for_fish_type(fish_type: str, entries: list):
    groups = group_entries_by_body_color(entries)
    base = OUTPUT_ROOT / "get_mob_head" / "tropical_fish"

    for body_color, group_entries in groups.items():
        for entry in group_entries:
            variant = entry["variant"]
            pattern_color = parse_colors(variant)[1]
            write(
                base / fish_type / body_color / f"{pattern_color}.mcfunction",
                gen_get_mob_head(fish_type, variant, entry["texture"])
            )

    write(
        base / f"{fish_type}_dialog.mcfunction",
        gen_dialog(fish_type, entries)
    )


def write_shared_mcfunctions(force: bool = False):
    files = {
        OUTPUT_ROOT / f"notification/check/{ENTITY_TYPE}.mcfunction":   gen_notification_check(),
        OUTPUT_ROOT / f"notification/dropped/{ENTITY_TYPE}.mcfunction": gen_notification_dropped(),
        OUTPUT_ROOT / f"notification/run/{ENTITY_TYPE}.mcfunction":     gen_notification_run(),
    }
    for path, content in files.items():
        if not path.exists() or force:
            write(path, content)
        else:
            print(f"  exists {path.relative_to(SCRIPT_DIR)}")