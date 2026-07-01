"""
_constants.py
Shared constants and helpers for all gen_*.py modules.
"""

import json
import pathlib
import re

SCRIPT_DIR  = pathlib.Path(__file__).parent
DATA_DIR    = SCRIPT_DIR / "output" / "head_data"
OUTPUT_ROOT = SCRIPT_DIR / "output" / "generated"

# ── Minecraft constants ───────────────────────────────────────────────────────

ENTITY_TYPE = "sulfur_cube"
NAME_KEY    = "entity.minecraft.sulfur_cube"
SOUND       = "minecraft:entity.sulfur_cube.ambient"
CATEGORY    = "collection/sulfur_cube"

RARITY_COLORS = ["white", "yellow", "aqua", "dark_purple", "gold", "green"]

# Variant names that don't directly match Minecraft block IDs
ITEM_REMAP = {
    "honeycomb": "honeycomb_block",
    "hay_bale":  "hay_block",
}

# ── Helpers ───────────────────────────────────────────────────────────────────

def write(path: pathlib.Path, content: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"  wrote {path.relative_to(SCRIPT_DIR)}")


def jdump(obj) -> str:
    return json.dumps(obj, indent=2, ensure_ascii=False)


def slug(name: str) -> str:
    return name.replace("-", "_").replace(" ", "_").lower()


def derive_item_id(variant: str) -> str:
    """Strip trailing _<digit> suffix and apply known remaps to get the Minecraft block ID."""
    base = re.sub(r"_\d+$", "", variant)
    return ITEM_REMAP.get(base, base)


def block_extras(item_id: str) -> list[dict]:
    """Standard extras for titles/names: ' Head (block.minecraft.<item_id>)'."""
    return [
        {"text": " "},
        {"translate": "mob_heads.head", "fallback": "Head"},
        {"text": " ("},
        {"translate": f"block.minecraft.{item_id}"},
        {"text": ")"},
    ]


def group_entries_by_category(entries: list[dict]) -> dict[str, list[dict]]:
    """Group entries by their 'category' field, sorted alphabetically within each group."""
    groups: dict[str, list[dict]] = {}
    for entry in entries:
        cat = entry.get("category", "default")
        groups.setdefault(cat, []).append(entry)
    for cat in groups:
        groups[cat].sort(key=lambda e: e["variant"])
    return dict(sorted(groups.items()))
