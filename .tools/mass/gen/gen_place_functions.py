#!/usr/bin/env python3
"""
Generate Minecraft place functions for mob head showcases.

Each generated function places player heads (with note blocks underneath) in
a grid layout relative to the caller's position.

Usage:
    python gen_place_functions.py                    # all mobs
    python gen_place_functions.py tropical_fish      # one mob
    python gen_place_functions.py llama happy_ghast  # multiple mobs

Layout:
    - Heads extend along the X axis (east), rows along the Z axis (south).
    - Each row holds ROW_SIZE heads, one block apart (HEAD_SPACING=2).
    - For mobs with grouped sub-variants (e.g. tropical_fish), each group
      becomes its own cluster and clusters are arranged in a CLUSTER_COLS-wide
      grid with a CLUSTER_GAP-block gap between them.
    - Each cluster also gets its own sub-function; a master function calls them all.

Output:
    data/mob_heads/function/app/place/<mob>.mcfunction
    data/mob_heads/function/app/place/<mob>/<variant>.mcfunction  (if grouped)
"""

import json
import sys
from math import ceil
from pathlib import Path

# ── paths ──────────────────────────────────────────────────────────────────
GEN_DIR = Path(__file__).parent
DATAPACK_ROOT = GEN_DIR.parents[2]  # .tools/mass/gen -> .tools/mass -> .tools -> Mob-Heads
OUTPUT_BASE = DATAPACK_ROOT / "data" / "mob_heads" / "function" / "app" / "place"
NAMESPACE = "mob_heads"

# ── layout constants ────────────────────────────────────────────────────────
ROW_SIZE = 16      # heads per row within a cluster
HEAD_SPACING = 2   # blocks between consecutive heads (1 empty block gap)
CLUSTER_GAP = 2    # empty blocks between adjacent clusters
CLUSTER_COLS = 4   # columns in the multi-cluster grid


# ── helpers ─────────────────────────────────────────────────────────────────

def coord(n: int) -> str:
    """Format an integer as a relative coordinate offset (~, ~1, ~2, …)."""
    return f"~{n}" if n != 0 else "~"


def head_pair(x: int, z: int, texture: str) -> str:
    """Return the two setblock commands that place one head and its note block."""
    xc, zc = coord(x), coord(z)
    nbt = f'{{profile:{{"properties":[{{"name":"textures","value":"{texture}"}}]}}}}'
    return (
        f"setblock {xc} ~ {zc} minecraft:note_block\n"
        f"setblock {xc} ~1 {zc} player_head{nbt} replace"
    )


def build_cluster(entries: list[dict], ox: int, oz: int) -> list[str]:
    """
    Generate setblock lines for a list of head entries placed in a grid.
    Heads fill left-to-right (X), then wrap to the next row (Z).
    ox/oz are the cluster's origin offsets from the caller's position.
    """
    lines = []
    for i, entry in enumerate(entries):
        col = (i % ROW_SIZE) * HEAD_SPACING
        row = (i // ROW_SIZE) * HEAD_SPACING
        lines.append(head_pair(ox + col, oz + row, entry["texture"]))
    return lines


def write_fn(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"  {path.relative_to(DATAPACK_ROOT)}")


# ── generators ───────────────────────────────────────────────────────────────

def gen_single(name: str, src: Path) -> None:
    """One JSON file → one place function, single cluster at the origin."""
    entries = sorted(
        json.loads(src.read_text(encoding="utf-8")),
        key=lambda e: e["variant"],
    )
    write_fn(OUTPUT_BASE / f"{name}.mcfunction", build_cluster(entries, 0, 0))


def gen_multi(group: str, json_files: list[Path]) -> None:
    """
    Multiple JSON files (one per sub-variant group) → one function each, plus
    a master function that calls them all in alphabetical order.

    Clusters are laid out in a CLUSTER_COLS-wide grid. The Z stride is derived
    from the tallest cluster so that all rows clear each other cleanly.
    """
    clusters = [
        (
            p.stem,
            sorted(json.loads(p.read_text(encoding="utf-8")), key=lambda e: e["variant"]),
        )
        for p in json_files
    ]

    if not clusters:
        return

    max_rows = max(ceil(len(data) / ROW_SIZE) for _, data in clusters)
    # stride = span of cluster + (CLUSTER_GAP empty blocks) + 1 head
    # span = (n - 1) * HEAD_SPACING, so stride = (n - 1) * HEAD_SPACING + CLUSTER_GAP + 1
    x_stride = (ROW_SIZE - 1) * HEAD_SPACING + CLUSTER_GAP + 1
    z_stride = (max_rows - 1) * HEAD_SPACING + CLUSTER_GAP + 1

    sub_names: list[str] = []
    for i, (name, entries) in enumerate(clusters):
        ox = (i % CLUSTER_COLS) * x_stride
        oz = (i // CLUSTER_COLS) * z_stride
        write_fn(
            OUTPUT_BASE / group / f"{name}.mcfunction",
            build_cluster(entries, ox, oz),
        )
        sub_names.append(name)

    # Master caller
    write_fn(
        OUTPUT_BASE / f"{group}.mcfunction",
        [f"function {NAMESPACE}:app/place/{group}/{n}" for n in sub_names],
    )


def gen_mob(mob: str) -> None:
    hd_root = GEN_DIR / mob / "output" / "head_data"
    if not hd_root.exists():
        print(f"ERROR: no head_data directory for '{mob}' (expected: {hd_root})")
        return

    print(f"\n{mob}:")
    subdirs = sorted(d for d in hd_root.iterdir() if d.is_dir())
    jsons = sorted(hd_root.glob("*.json"), key=lambda p: p.stem)

    if subdirs:
        # e.g. tropical_fish/output/head_data/tropical_fish/*.json
        for sd in subdirs:
            group_jsons = sorted(sd.glob("*.json"), key=lambda p: p.stem)
            gen_multi(sd.name, group_jsons)
    elif jsons:
        # e.g. llama/output/head_data/llama.json
        for jf in jsons:
            gen_single(jf.stem, jf)
    else:
        print("  no head data found")


# ── entry point ──────────────────────────────────────────────────────────────

def main() -> None:
    if len(sys.argv) > 1:
        mobs = sys.argv[1:]
    else:
        mobs = sorted(
            p.name
            for p in GEN_DIR.iterdir()
            if p.is_dir() and not p.name.startswith(("_", "."))
        )

    for mob in mobs:
        gen_mob(mob)

    print("\nDone.")


if __name__ == "__main__":
    main()
