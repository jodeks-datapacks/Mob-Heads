"""
04_build_dialog.py
Generates the dialog mcfunction for a fish type (all 256 variants as clickable heads).

Usage:
  python 04_build_dialog.py <FishType>
  python 04_build_dialog.py Betty

Input:  .tools/mass/output/head_data/<fish_type>.json
Output: .tools/mass/output/generated/get_mob_head/tropical_fish/<fish_type>_dialog.mcfunction
"""

import sys
import json
import pathlib

SCRIPT_DIR  = pathlib.Path(__file__).parent
DATA_DIR    = SCRIPT_DIR / "output" / "head_data"
OUTPUT_ROOT = SCRIPT_DIR / "output" / "generated"

ENTITY_TYPE = "tropical_fish"


def slug(name: str) -> str:
    return name.replace("-", "_").replace(" ", "_").lower()


def write(path: pathlib.Path, content: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"  wrote {path.relative_to(SCRIPT_DIR)}")


def build_action(fish_type: str, variant: str, texture: str) -> str:
    """Build a single action entry for the dialog."""
    command = f"function mob_heads:app/get_mob_head/tropical_fish/{fish_type}/{variant}"
    # Strip trailing = from texture value if present (MC doesn't need it in dialogs)
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


def build_dialog(fish_type: str, entries: list) -> str:
    """Build the full dialog show command as an mcfunction."""
    actions = []
    for entry in entries:
        actions.append(build_action(fish_type, entry["variant"], entry["texture"]))

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


def main():
    if len(sys.argv) < 2:
        print("Usage: python 04_build_dialog.py <FishType>")
        sys.exit(1)

    fish_type  = slug(sys.argv[1])
    cache_path = DATA_DIR / f"{fish_type}.json"

    if not cache_path.exists():
        print(f"ERROR: {cache_path} not found — run 02_upload_skins.py first")
        sys.exit(1)

    entries = json.loads(cache_path.read_text(encoding="utf-8"))
    print(f"Building dialog for '{fish_type}' ({len(entries)} variants)...")

    out_path = OUTPUT_ROOT / f"get_mob_head/tropical_fish/{fish_type}_dialog.mcfunction"
    write(out_path, build_dialog(fish_type, entries))

    print(f"\nDone.")


if __name__ == "__main__":
    main()