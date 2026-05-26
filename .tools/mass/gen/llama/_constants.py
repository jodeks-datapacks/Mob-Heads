"""
_constants.py
Shared constants and helpers for all gen_*.py modules.
"""

import json
import pathlib

SCRIPT_DIR  = pathlib.Path(__file__).parent
DATA_DIR    = SCRIPT_DIR / "output" / "head_data"
OUTPUT_ROOT = SCRIPT_DIR / "output" / "generated"

# ── Minecraft constants ───────────────────────────────────────────────────────

ENTITY_TYPE = "happy_ghast"
NAME_KEY    = "entity.minecraft.happy_ghast"
SOUND       = "minecraft:entity.happy_ghast.ambient"
CATEGORY    = "collection/happy_ghast"

RARITY_COLORS = ["white", "yellow", "aqua", "dark_purple", "gold", "green"]

HARNESS_COLORS = [
    "black", "blue", "brown", "cyan", "gray", "green",
    "light_blue", "light_gray", "lime", "magenta",
    "orange", "pink", "purple", "red", "white", "yellow",
]
GOGGLE_STATES = ["down", "up"]

# ── Helpers ───────────────────────────────────────────────────────────────────

def write(path: pathlib.Path, content: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"  wrote {path.relative_to(SCRIPT_DIR)}")


def jdump(obj) -> str:
    return json.dumps(obj, indent=2, ensure_ascii=False)


def slug(name: str) -> str:
    return name.replace("-", "_").replace(" ", "_").lower()


def parse_variant(variant: str) -> tuple[str, str]:
    """'black_down' → ('black', 'down'), 'light_blue_up' → ('light_blue', 'up')"""
    harness_color, state = variant.rsplit("_", 1)
    return harness_color, state


def state_fallback(state: str) -> str:
    return "(Goggles Down)" if state == "down" else "(Goggles Up)"


def name_extras(harness_color: str, state: str) -> list[dict]:
    """Extras list for item name: harness translate + head + goggle state."""
    return [
        {"text": " "},
        {"translate": f"item.minecraft.{harness_color}_harness"},
        {"text": " "},
        {"translate": "mob_heads.head", "fallback": "Head"},
        {"text": " "},
        {"translate": f"mob_heads.happy_ghast.{state}", "fallback": state_fallback(state)},
    ]


def group_entries_by_harness_color(entries: list[dict]) -> dict[str, list[dict]]:
    """Group variants by harness color, sorted in HARNESS_COLORS order."""
    groups: dict[str, list[dict]] = {}
    for entry in entries:
        harness_color, _ = parse_variant(entry["variant"])
        groups.setdefault(harness_color, []).append(entry)
    for color in groups:
        groups[color].sort(key=lambda e: e["variant"])
    return {c: groups[c] for c in HARNESS_COLORS if c in groups}
