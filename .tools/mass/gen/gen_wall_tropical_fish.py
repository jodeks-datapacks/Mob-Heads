#!/usr/bin/env python3
"""
Generate a tropical-fish wall-display function.

For each of the 12 tropical-fish shape variants (betty, blockfish, …):
  · 16 sub-walls of 4 × 4 heads arranged left→right along the X axis,
    one sub-wall per Minecraft base colour in canonical dye order.
  · Each sub-wall's 16 heads show all pattern colours in canonical dye order,
    arranged left→right, bottom→top.
  · Shape variants are stacked bottom→top along the Y axis.

Backdrop: a single smooth_quartz wall one block south (Z+1) of the heads.
Heads:    player_head[facing=north] — skull faces point toward the viewer.

Run the function while standing south of where the display should appear.
Walk around to the north side of the generated area to see skull faces.

Output:
    data/mob_heads/function/app/wall/tropical_fish.mcfunction
"""

from pathlib import Path
import json

GEN_DIR       = Path(__file__).parent
DATAPACK_ROOT = GEN_DIR.parents[2]
OUTPUT_FILE   = (
    DATAPACK_ROOT
    / "data" / "mob_heads" / "function" / "app" / "wall"
    / "tropical_fish.mcfunction"
)
HEAD_DATA_DIR = GEN_DIR / "tropical_fish" / "output" / "head_data" / "tropical_fish"

# ── layout ────────────────────────────────────────────────────────────────────
HEAD_PITCH   = 2                    # blocks between adjacent heads within a sub-wall
SUBWALL_STEP = 4 * HEAD_PITCH + 2   # X stride between sub-walls               (= 10)
VARIANT_STEP = 4 * HEAD_PITCH + 3   # Y stride between fish-shape variants      (= 11)
Y_BASE       = 1                    # Y of the bottom head row
Z_HEADS      = 3                    # relative Z of the player_head blocks
Z_QUARTZ     = 4                    # relative Z of the smooth-quartz backing

# Canonical Minecraft dye-colour order (matches in-game creative-inventory order)
MC_COLORS = [
    "white",      "orange",  "magenta",  "light_blue",
    "yellow",     "lime",    "pink",     "gray",
    "light_gray", "cyan",    "purple",   "blue",
    "brown",      "green",   "red",      "black",
]
COLOR_IDX = {c: i for i, c in enumerate(MC_COLORS)}


# ── helpers ───────────────────────────────────────────────────────────────────

def coord(n: int) -> str:
    return f"~{n}" if n != 0 else "~"


def parse_colors(variant: str) -> tuple[str, str]:
    """Split e.g. 'light_blue_red' → ('light_blue', 'red'), handles multi-word names."""
    for color in MC_COLORS:
        if variant.startswith(color + "_"):
            return color, variant[len(color) + 1:]
    raise ValueError(f"Cannot parse variant: {variant!r}")


def head_cmd(x: int, y: int, z: int, texture: str) -> str:
    c = coord
    nbt = f'{{profile:{{"properties":[{{"name":"textures","value":"{texture}"}}]}}}}'
    return f"setblock {c(x)} {c(y)} {c(z)} player_wall_head[facing=north]{nbt} replace"


# ── builder ───────────────────────────────────────────────────────────────────

def build(shapes: list[tuple[str, list[dict]]]) -> list[str]:
    lines: list[str] = []

    right_edge = 15 * SUBWALL_STEP + 3 * HEAD_PITCH
    top_edge   = Y_BASE + (len(shapes) - 1) * VARIANT_STEP + 3 * HEAD_PITCH

    # One fill for the entire quartz backdrop (1-block border on every side)
    lines.append(
        f"fill {coord(-1)} {coord(Y_BASE - 1)} {coord(Z_QUARTZ)}"
        f" {coord(right_edge + 1)} {coord(top_edge + 1)} {coord(Z_QUARTZ)}"
        f" smooth_quartz replace"
    )

    for v_idx, (shape, entries) in enumerate(shapes):
        y_origin = Y_BASE + v_idx * VARIANT_STEP
        lines.append(f"# {shape}")

        # Group entries by base colour, sort each group by pattern colour
        groups: dict[str, list[dict]] = {c: [] for c in MC_COLORS}
        for entry in entries:
            base, _pat = parse_colors(entry["variant"])
            groups[base].append(entry)
        for group in groups.values():
            group.sort(key=lambda e: COLOR_IDX[parse_colors(e["variant"])[1]])

        for prim_idx, prim_color in enumerate(MC_COLORS):
            x_origin = prim_idx * SUBWALL_STEP
            for sec_idx, entry in enumerate(groups[prim_color]):
                col = sec_idx % 4
                row = sec_idx // 4
                lines.append(head_cmd(
                    x_origin + col * HEAD_PITCH,
                    y_origin  + row * HEAD_PITCH,
                    Z_HEADS,
                    entry["texture"],
                ))

    return lines


# ── entry point ───────────────────────────────────────────────────────────────

def main() -> None:
    if not HEAD_DATA_DIR.exists():
        print(f"ERROR: head_data directory not found:\n  {HEAD_DATA_DIR}")
        return

    shapes: list[tuple[str, list[dict]]] = []
    for jf in sorted(HEAD_DATA_DIR.glob("*.json")):
        entries = json.loads(jf.read_text(encoding="utf-8"))
        shapes.append((jf.stem, entries))
        print(f"  {jf.stem}: {len(entries)} entries")

    total = sum(len(e) for _, e in shapes)
    print(f"\n{len(shapes)} shapes × 256 = {total} heads")

    lines = build(shapes)
    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT_FILE.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"  → {OUTPUT_FILE.relative_to(DATAPACK_ROOT)}")
    print("Done.")


if __name__ == "__main__":
    main()
