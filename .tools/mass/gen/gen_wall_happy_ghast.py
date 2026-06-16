#!/usr/bin/env python3
"""
Generate a happy-ghast head wall-display function.

Layout:
  · 2 rows: bottom = "down" variant, top = "up" variant.
  · Each row: 16 heads in canonical Minecraft dye order, left→right.
  · Smooth-quartz backing wall at Z+1 behind the heads.
  · Heads: player_wall_head[facing=north].

Run the function while standing south of the desired display location.
Walk to the north side to see skull faces.

Output:
    data/mob_heads/function/app/wall/happy_ghast.mcfunction
"""

from pathlib import Path
import json

GEN_DIR        = Path(__file__).parent
DATAPACK_ROOT  = GEN_DIR.parents[2]
OUTPUT_FILE    = (
    DATAPACK_ROOT / "data" / "mob_heads" / "function" / "app" / "wall"
    / "happy_ghast.mcfunction"
)
HEAD_DATA_FILE = GEN_DIR / "happy_ghast" / "output" / "head_data" / "happy_ghast.json"

# ── layout ────────────────────────────────────────────────────────────────────
HEAD_PITCH = 2   # blocks between adjacent heads in a row
ROW_STEP   = 4   # Y stride between "down" and "up" rows
Y_BASE     = 1   # Y of the bottom row
Z_HEADS    = 3
Z_QUARTZ   = 4

DIRECTIONS = ["down", "up"]   # bottom row = down, top row = up

MC_COLORS = [
    "white",      "orange",  "magenta",  "light_blue",
    "yellow",     "lime",    "pink",     "gray",
    "light_gray", "cyan",    "purple",   "blue",
    "brown",      "green",   "red",      "black",
]


# ── helpers ───────────────────────────────────────────────────────────────────

def coord(n: int) -> str:
    return f"~{n}" if n != 0 else "~"


def head_cmd(x: int, y: int, z: int, texture: str) -> str:
    c = coord
    nbt = f'{{profile:{{"properties":[{{"name":"textures","value":"{texture}"}}]}}}}'
    return f"setblock {c(x)} {c(y)} {c(z)} player_wall_head[facing=north]{nbt} replace"


def parse_variant(variant: str) -> tuple[str, str]:
    """Split e.g. 'light_blue_down' → ('light_blue', 'down')."""
    if variant.endswith("_up"):
        return variant[:-3], "up"
    if variant.endswith("_down"):
        return variant[:-5], "down"
    raise ValueError(f"Cannot parse variant: {variant!r}")


# ── builder ───────────────────────────────────────────────────────────────────

def build(entries: list[dict]) -> list[str]:
    groups: dict[str, dict[str, dict]] = {d: {} for d in DIRECTIONS}
    for entry in entries:
        color, direction = parse_variant(entry["variant"])
        groups[direction][color] = entry

    lines: list[str] = []

    # Quartz fill (16 heads: x = 0..30, 1 border each side)
    right_edge = 15 * HEAD_PITCH
    top_edge   = Y_BASE + (len(DIRECTIONS) - 1) * ROW_STEP
    lines.append(
        f"fill {coord(-1)} {coord(Y_BASE - 1)} {coord(Z_QUARTZ)}"
        f" {coord(right_edge + 1)} {coord(top_edge + 1)} {coord(Z_QUARTZ)}"
        f" smooth_quartz replace"
    )

    for row_idx, direction in enumerate(DIRECTIONS):
        y = Y_BASE + row_idx * ROW_STEP
        lines.append(f"# {direction}")
        group = groups[direction]
        for col_idx, color in enumerate(MC_COLORS):
            if color in group:
                lines.append(head_cmd(col_idx * HEAD_PITCH, y, Z_HEADS, group[color]["texture"]))

    return lines


# ── entry point ───────────────────────────────────────────────────────────────

def main() -> None:
    if not HEAD_DATA_FILE.exists():
        print(f"ERROR: {HEAD_DATA_FILE}")
        return
    entries = json.loads(HEAD_DATA_FILE.read_text(encoding="utf-8"))
    print(f"happy_ghast: {len(entries)} entries")
    lines = build(entries)
    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT_FILE.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"  → {OUTPUT_FILE.relative_to(DATAPACK_ROOT)}")
    print("Done.")


if __name__ == "__main__":
    main()
