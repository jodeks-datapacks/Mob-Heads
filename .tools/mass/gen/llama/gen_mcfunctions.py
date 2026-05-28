"""
gen_mcfunctions.py
mcfunction generators for llama heads.

Generates per variant:
  get_mob_head/llama/<llama_color>/no_carpet.mcfunction
  get_mob_head/llama/<llama_color>/<carpet_color>.mcfunction

Generates dialog:
  get_mob_head/llama/dialog.json

Generates shared (once):
  notification/check/llama.mcfunction
  notification/dropped/llama.mcfunction
  notification/run/llama.mcfunction
"""

from _constants import (
    ENTITY_TYPE, SOUND, CATEGORY,
    OUTPUT_ROOT, SCRIPT_DIR,
    write, jdump, parse_variant, carpet_key, group_entries_by_llama_color,
)


# ── Per-variant ───────────────────────────────────────────────────────────────

def gen_get_mob_head(variant: str, texture: str) -> str:
    llama_color, carpet = parse_variant(variant)
    extras_json = (
        f'{{"text":" "}},'
        f'{{"translate":"entity.minecraft.{ENTITY_TYPE}"}},'
        f'{{"text":" "}},'
        f'{{"translate":"mob_heads.head","fallback":"Head"}}'
    )
    if carpet is not None:
        extras_json += (
            f',{{"text":" "}},'
            f'{{"translate":"block.minecraft.{carpet}_carpet"}}'
        )
    name_json = (
        f'{{"translate":"item.minecraft.firework_star.{llama_color}",'
        f'"extra":[{extras_json}],'
        f'"color":"white",italic:false}}'
    )
    return (
        f'give @s minecraft:player_head['
        f'minecraft:custom_name={name_json},'
        f'note_block_sound="{SOUND}",'
        f'profile={{properties:[{{name:"textures",value:"{texture}"}}]}}] 1\n'
    )


# ── Dialog ────────────────────────────────────────────────────────────────────

def _dialog_action(llama_color: str, key: str, texture: str) -> dict:
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
            "command": f"function mob_heads:app/get_mob_head/llama/{llama_color}/{key}"
        },
        "width": 22
    }


def gen_dialog(entries: list) -> str:
    groups = group_entries_by_llama_color(entries)
    actions = []
    for llama_color, group_entries in groups.items():
        for entry in group_entries:
            key = carpet_key(entry["variant"])
            actions.append(_dialog_action(llama_color, key, entry["texture"]))

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
    groups = group_entries_by_llama_color(entries)
    base = OUTPUT_ROOT / "get_mob_head" / "llama"

    for llama_color, group_entries in groups.items():
        for entry in group_entries:
            key = carpet_key(entry["variant"])
            write(
                base / llama_color / f"{key}.mcfunction",
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
