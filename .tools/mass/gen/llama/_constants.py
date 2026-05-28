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

ENTITY_TYPE = "llama"
NAME_KEY    = "entity.minecraft.llama"
SOUND       = "minecraft:entity.llama.ambient"
CATEGORY    = "collection/llama"

RARITY_COLORS = ["white", "yellow", "aqua", "dark_purple", "gold", "green"]

LLAMA_COLORS = ["brown", "creamy", "gray", "white"]

CARPET_COLORS = [
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


def parse_variant(variant: str) -> tuple[str, str | None]:
    """'brown' → ('brown', None), 'brown_white' → ('brown', 'white'), 'brown_light_blue' → ('brown', 'light_blue')"""
    parts = variant.split("_", 1)
    if len(parts) == 1:
        return parts[0], None
    return parts[0], parts[1]


def carpet_key(variant: str) -> str:
    """Returns the carpet color, or 'no_carpet' if the llama has no carpet."""
    _, carpet = parse_variant(variant)
    return carpet if carpet is not None else "no_carpet"


def name_extras(llama_color: str, carpet: str | None) -> list[dict]:
    """Extras list for item name: entity + head [+ carpet]."""
    extras = [
        {"text": " "},
        {"translate": f"entity.minecraft.{ENTITY_TYPE}"},
        {"text": " "},
        {"translate": "mob_heads.head", "fallback": "Head"},
    ]
    if carpet is not None:
        extras += [
            {"text": " "},
            {"translate": f"block.minecraft.{carpet}_carpet"},
        ]
    return extras


def group_entries_by_llama_color(entries: list[dict]) -> dict[str, list[dict]]:
    """Group variants by llama color, sorted in LLAMA_COLORS order."""
    groups: dict[str, list[dict]] = {}
    for entry in entries:
        llama_color, _ = parse_variant(entry["variant"])
        groups.setdefault(llama_color, []).append(entry)
    for color in groups:
        groups[color].sort(key=lambda e: e["variant"])
    return {c: groups[c] for c in LLAMA_COLORS if c in groups}
