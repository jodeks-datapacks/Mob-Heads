"""
_constants.py
Shared constants and helpers for all gen_*.py modules.
"""

import json
import pathlib

SCRIPT_DIR  = pathlib.Path(__file__).parent
DATA_DIR    = SCRIPT_DIR / "output" / "head_data" / "tropical_fish"
OUTPUT_ROOT = SCRIPT_DIR / "output" / "generated"

# ── Minecraft constants ───────────────────────────────────────────────────────

ENTITY_TYPE = "tropical_fish"
NAME_KEY    = "entity.minecraft.tropical_fish"
SOUND       = "minecraft:entity.tropical_fish.ambient"
CATEGORY    = "collection/tropical_fish"

RARITY_COLORS = ["white", "yellow", "aqua", "dark_purple", "gold", "green"]

# 16 pattern colors in alphabetical order, used for parent-chain grouping
PATTERN_COLORS = [
    "black", "blue", "brown", "cyan", "gray", "green",
    "light_blue", "light_gray", "lime", "magenta",
    "orange", "pink", "purple", "red", "white", "yellow",
]

# ── Helpers ───────────────────────────────────────────────────────────────────

def write(path: pathlib.Path, content: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"  wrote {path.relative_to(SCRIPT_DIR)}")


def jdump(obj) -> str:
    return json.dumps(obj, indent=2, ensure_ascii=False)


def slug(name: str) -> str:
    return name.replace("-", "_").replace(" ", "_").lower()


def parse_colors(variant: str) -> list[str]:
    """'black_yellow' → ['black', 'yellow'], handles 'light_blue'/'light_gray'."""
    parts = variant.split("_")
    known_two_word = {"light_blue", "light_gray"}
    if len(parts) >= 3 and f"{parts[0]}_{parts[1]}" in known_two_word:
        return [f"{parts[0]}_{parts[1]}", "_".join(parts[2:])]
    elif len(parts) >= 3 and f"{parts[-2]}_{parts[-1]}" in known_two_word:
        return ["_".join(parts[:-2]), f"{parts[-2]}_{parts[-1]}"]
    else:
        return [parts[0], "_".join(parts[1:])]


def color_extras(colors: list[str]) -> list[dict]:
    """['black', 'yellow'] → [{text: ' '}, {translate: firework_star.black}, ...]"""
    extras = []
    for color in colors:
        extras.append({"text": " "})
        extras.append({"translate": f"item.minecraft.firework_star.{color}"})
    return extras


def group_entries_by_body_color(entries: list[dict]) -> dict[str, list[dict]]:
    """Group variants by body color (first color in variant name).
    Returns OrderedDict-like dict keyed by body color, values sorted alphabetically.
    """
    groups: dict[str, list[dict]] = {}
    for entry in entries:
        colors = parse_colors(entry["variant"])
        body_color = colors[0]
        groups.setdefault(body_color, []).append(entry)
    # Sort each group alphabetically by variant
    for color in groups:
        groups[color].sort(key=lambda e: e["variant"])
    # Return in PATTERN_COLORS order
    return {c: groups[c] for c in PATTERN_COLORS if c in groups}