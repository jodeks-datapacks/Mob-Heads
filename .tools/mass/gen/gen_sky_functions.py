#!/usr/bin/env python3
"""
Generate Minecraft sky-grid functions for mob head showcases.

ALL entries across all JSON files for a mob are merged into ONE single solid
sphere.  No sub-functions, no per-variant splitting.

Radius is chosen so the voxel count is as close to (but not exceeding) the
total entry count.  For 3072 tropical fish heads, r=9 gives 3071 voxels —
essentially a perfect fit.

Ordering within the sphere: voxels enumerated Y bottom→top, Z front→back,
X left→right, for a stable deterministic layout across re-runs.

No note blocks.  Heads are rotated so each skull face points toward the sphere centre.

Usage:
    python gen_sky_functions.py                    # all mobs
    python gen_sky_functions.py tropical_fish      # one mob
    python gen_sky_functions.py llama happy_ghast  # multiple mobs

Output:
    data/mob_heads/function/app/sky/<mob>.mcfunction
"""

import json
import math
import sys
from pathlib import Path

GEN_DIR = Path(__file__).parent
DATAPACK_ROOT = GEN_DIR.parents[2]
OUTPUT_BASE = DATAPACK_ROOT / "data" / "mob_heads" / "function" / "app" / "sky"
NAMESPACE = "mob_heads"

# ── layout constants ──────────────────────────────────────────────────────────
HEAD_SPACING = 4   # blocks between consecutive heads (3-block air gap)
Y_START      = 38  # Y offset of sphere centre above caller
               # 38 = 9 * HEAD_SPACING + 2  →  bottom of r=9 sphere clears ground


# ── sphere helpers ────────────────────────────────────────────────────────────

def sphere_voxels(radius: int) -> list[tuple[int, int, int]]:
    """All integer offsets with x²+y²+z² ≤ r², ordered Y→Z→X."""
    voxels = []
    for y in range(-radius, radius + 1):
        for z in range(-radius, radius + 1):
            for x in range(-radius, radius + 1):
                if x*x + y*y + z*z <= radius*radius:
                    voxels.append((x, y, z))
    return voxels


def best_radius(n: int) -> int:
    """Largest r where voxel count ≤ n."""
    r = 1
    while len(sphere_voxels(r + 1)) <= n:
        r += 1
    return r


# ── command helpers ───────────────────────────────────────────────────────────

def coord(n: int) -> str:
    return f"~{n}" if n != 0 else "~"


def head_rotation(vx: int, vz: int) -> int:
    """Return player_head rotation (0-15) so the skull face points toward the origin.

    Minecraft yaw: 0=south(+Z), 4=west(-X), 8=north(-Z), 12=east(+X).
    Direction toward centre from (vx,_,vz) is (-vx, _, -vz).
    """
    if vx == 0 and vz == 0:
        return 0  # directly above/below centre — arbitrary
    yaw = math.degrees(math.atan2(-vx, vz))  # direction toward centre: negate vx,vz
    return int(round(yaw % 360 / 22.5)) % 16


def head_cmd(x: int, y: int, z: int, texture: str, rotation: int) -> str:
    xc, yc, zc = coord(x), coord(y), coord(z)
    nbt = f'{{profile:{{"properties":[{{"name":"textures","value":"{texture}"}}]}}}}'
    return f"setblock {xc} {yc} {zc} player_head[rotation={rotation}]{nbt} replace"


# ── core builder ──────────────────────────────────────────────────────────────

def build_sphere(entries: list[dict]) -> list[str]:
    """Map every entry to a unique voxel in a single solid sphere."""
    radius = best_radius(len(entries))
    voxels = sphere_voxels(radius)
    lines = []
    for i, entry in enumerate(entries):
        if i >= len(voxels):
            break
        vx, vy, vz = voxels[i]
        lines.append(head_cmd(
            vx * HEAD_SPACING,
            Y_START + vy * HEAD_SPACING,
            vz * HEAD_SPACING,
            entry["texture"],
            head_rotation(vx, vz),
        ))
    return lines


def write_fn(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"  {path.relative_to(DATAPACK_ROOT)}")


# ── generators ────────────────────────────────────────────────────────────────

def collect_entries(src: Path) -> list[dict]:
    """
    Recursively collect all entries from a directory tree or a single JSON.
    Always returns a flat list sorted by variant name.
    """
    if src.is_file():
        return json.loads(src.read_text(encoding="utf-8"))

    entries: list[dict] = []
    for jf in sorted(src.rglob("*.json")):
        entries.extend(json.loads(jf.read_text(encoding="utf-8")))
    return entries


def gen_mob(mob: str) -> None:
    hd_root = GEN_DIR / mob / "output" / "head_data"
    if not hd_root.exists():
        print(f"ERROR: no head_data directory for '{mob}' (expected: {hd_root})")
        return

    print(f"\n{mob}:")

    # Collect ALL entries from the entire head_data tree, sort by variant.
    entries = sorted(collect_entries(hd_root), key=lambda e: e["variant"])
    if not entries:
        print("  no head data found")
        return

    radius = best_radius(len(entries))
    voxels = len(sphere_voxels(radius))
    print(f"  {len(entries)} entries → r={radius} sphere ({voxels} voxels)")

    lines = build_sphere(entries)
    write_fn(OUTPUT_BASE / f"{mob}.mcfunction", lines)


# ── entry point ───────────────────────────────────────────────────────────────

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