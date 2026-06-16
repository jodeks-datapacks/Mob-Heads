#!/usr/bin/env python3
"""
Generate a llama head wall-display function.

Layout:
  · 4 rows, one per llama base colour (brown / cream / gray / white), bottom→top.
  · Each row: no-carpet head first, then all 16 carpet colours in canonical dye order.
  · Smooth-quartz backing wall at Z+1 behind the heads.
  · Heads: player_wall_head[facing=north].

Run the function while standing south of the desired display location.
Walk to the north side to see skull faces.

Output:
    data/mob_heads/function/app/wall/llama.mcfunction
"""

from pathlib import Path
import json

GEN_DIR        = Path(__file__).parent
DATAPACK_ROOT  = GEN_DIR.parents[2]
OUTPUT_FILE    = (
    DATAPACK_ROOT / "data" / "mob_heads" / "function" / "app" / "wall"
    / "llama.mcfunction"
)
HEAD_DATA_FILE = GEN_DIR / "llama" / "output" / "head_data" / "llama.json"

# ── layout ────────────────────────────────────────────────────────────────────
HEAD_PITCH = 2   # blocks between adjacent heads in a row
ROW_STEP   = 4   # Y stride between rows
Y_BASE     = 1   # Y of the bottom row
Z_HEADS    = 3
Z_QUARTZ   = 4

BASE_COLORS = ["brown", "creamy", "gray", "white"]

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


# ── builder ───────────────────────────────────────────────────────────────────

def build(entries: list[dict]) -> list[str]:
    # Group entries: groups[base][carpet_color_or_None] = entry
    groups: dict[str, dict] = {b: {} for b in BASE_COLORS}
    for entry in entries:
        v = entry["variant"]
        if "_" not in v:
            groups[v][None] = entry          # no carpet
        else:
            for base in BASE_COLORS:
                if v.startswith(base + "_"):
                    groups[base][v[len(base) + 1:]] = entry
                    break

    lines: list[str] = []

    # Quartz fill (17 heads per row: x = 0..32, 1 border each side)
    right_edge = 16 * HEAD_PITCH
    top_edge   = Y_BASE + (len(BASE_COLORS) - 1) * ROW_STEP
    lines.append(
        f"fill {coord(-1)} {coord(Y_BASE - 1)} {coord(Z_QUARTZ)}"
        f" {coord(right_edge + 1)} {coord(top_edge + 1)} {coord(Z_QUARTZ)}"
        f" smooth_quartz replace"
    )

    for row_idx, base in enumerate(BASE_COLORS):
        y = Y_BASE + row_idx * ROW_STEP
        lines.append(f"# {base}")
        group = groups[base]
        col = 0

        if None in group:
            lines.append(head_cmd(col * HEAD_PITCH, y, Z_HEADS, group[None]["texture"]))
            col += 1

        for carpet in MC_COLORS:
            if carpet in group:
                lines.append(head_cmd(col * HEAD_PITCH, y, Z_HEADS, group[carpet]["texture"]))
                col += 1

    return lines


# ── entry point ───────────────────────────────────────────────────────────────

def main() -> None:
    if not HEAD_DATA_FILE.exists():
        print(f"ERROR: {HEAD_DATA_FILE}")
        return
    entries = json.loads(HEAD_DATA_FILE.read_text(encoding="utf-8"))
    print(f"llama: {len(entries)} entries")
    lines = build(entries)
    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT_FILE.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"  → {OUTPUT_FILE.relative_to(DATAPACK_ROOT)}")
    print("Done.")


if __name__ == "__main__":
    main()
