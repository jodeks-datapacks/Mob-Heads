"""
gen_mcfunctions.py
mcfunction generators for happy_ghast heads.

Generates per variant:
  get_mob_head/happy_ghast/<harness_color>/<state>.mcfunction

Generates dialog:
  get_mob_head/happy_ghast/dialog.mcfunction

Generates shared (once):
  notification/check/happy_ghast.mcfunction
  notification/dropped/happy_ghast.mcfunction
  notification/run/happy_ghast.mcfunction
"""

from _constants import (
    ENTITY_TYPE, SOUND, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    write, jdump, parse_variant, state_fallback, group_entries_by_harness_color,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_get_mob_head(variant: str, texture: str) -> str:
    harness_color, state = parse_variant(variant)
    fb = state_fallback(state)
    name_json = (
        f'{{"translate":"entity.minecraft.{ENTITY_TYPE}",'
        f'"extra":[{{"text":" "}},'
        f'{{"translate":"item.minecraft.{harness_color}_harness"}},'
        f'{{"text":" "}},'
        f'{{"translate":"mob_heads.head","fallback":"Head"}},'
        f'{{"text":" "}},'
        f'{{"translate":"mob_heads.happy_ghast.{state}","fallback":"{fb}"}}],'
        f'"color":"white",italic:false}}'
    )
    return (
        f'give @s minecraft:player_head['
        f'minecraft:custom_name={name_json},'
        f'note_block_sound="{SOUND}",'
        f'profile={{properties:[{{name:"textures",value:"{texture}"}}]}}] 1\n'
    )


# ── Dialog ────────────────────────────────────────────────────────────────────

def _dialog_action(harness_color: str, state: str, texture: str) -> dict:
    return {
        "label": {
            "player": {
                "properties": [
                    {"name": "textures", "value": texture.rstrip("=")}
                ]
            },
            "extra": ["|"]
        },
        "action": {
            "type": "run_command",
            "command": f"function mob_heads:app/get_mob_head/happy_ghast/{harness_color}/{state}"
        },
        "width": 22
    }


def gen_dialog(entries: list) -> str:
    groups = group_entries_by_harness_color(entries)
    actions = []
    for harness_color, group_entries in groups.items():
        for entry in group_entries:
            _, state = parse_variant(entry["variant"])
            actions.append(_dialog_action(harness_color, state, entry["texture"]))

    return jdump({
        "type": "minecraft:multi_action",
        "title": "Get Mob Head",
        "body": {
            "type": "minecraft:plain_message",
            "contents": [
                "Click on a head and click 'Run Command'",
                "\n",
                "\n",
                "Close with escape"
            ]
        },
        "pause": False,
        "exit_action": {
            "label": {
                "translate": "jodek.exit",
                "fallback": "Exit"
            },
            "action": {
                "type": "minecraft:show_dialog",
                "dialog": "mob_heads:get_mob_head"
            }
        },
        "columns": 15,
        "after_action": "none",
        "actions": actions
    })


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

def write_mcfunctions(entries: list):
    groups = group_entries_by_harness_color(entries)
    base = OUTPUT_ROOT / "get_mob_head" / "happy_ghast"

    for harness_color, group_entries in groups.items():
        for entry in group_entries:
            _, state = parse_variant(entry["variant"])
            write(
                base / harness_color / f"{state}.mcfunction",
                gen_get_mob_head(entry["variant"], entry["texture"])
            )

    write(base / "dialog.json", gen_dialog(entries))


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
