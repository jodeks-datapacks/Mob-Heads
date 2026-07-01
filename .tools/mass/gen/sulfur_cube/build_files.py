"""
build_files.py
Generates all Minecraft datapack files for sulfur_cube heads from the head_data cache.

Usage:
  python build_files.py

Input:  output/head_data/sulfur_cube.json
Output: output/generated/

  Per variant (grouped by category):
    advancements/collection/sulfur_cube/<category>/<variant>.json
    advancements/collection/sulfur_cube/<category>/end.json
    loot_table/sulfur_cube/<category>/<variant>.json
    get_mob_head/sulfur_cube/<category>/<variant>.mcfunction

  Root:
    advancements/collection/sulfur_cube.json
    loot_table/sulfur_cube.json
    get_mob_head/sulfur_cube/dialog.json

  Shared (written once, skipped if already present):
    advancements/notification/killed_mob_check/sulfur_cube.json
    notification/check/sulfur_cube.mcfunction
    notification/dropped/sulfur_cube.mcfunction
    notification/run/sulfur_cube.mcfunction

Generators are split across:
  _constants.py       — shared constants and helpers
  gen_advancements.py — advancement JSON generators
  gen_loot_table.py   — loot table JSON generators
  gen_mcfunctions.py  — mcfunction generators
"""

import json

from _constants import DATA_DIR, OUTPUT_ROOT, SCRIPT_DIR, ENTITY_TYPE
from gen_advancements import write_advancements, write_shared_advancements
from gen_loot_table import write_loot_tables
from gen_mcfunctions import write_mcfunctions, write_shared_mcfunctions


def main():
    cache_path = DATA_DIR / f"{ENTITY_TYPE}.json"

    if not cache_path.exists():
        print(f"ERROR: {cache_path} not found — run upload_skins.py first")
        raise SystemExit(1)

    entries = json.loads(cache_path.read_text(encoding="utf-8"))
    print(f"Building files for '{ENTITY_TYPE}' ({len(entries)} variants)...")

    print("\n[shared files]")
    write_shared_advancements()
    write_shared_mcfunctions()

    print("\n[advancements]")
    write_advancements(entries)

    print("\n[loot tables]")
    write_loot_tables(entries)

    print("\n[mcfunctions]")
    write_mcfunctions(entries)

    print(f"\nDone. Output: {OUTPUT_ROOT.relative_to(SCRIPT_DIR)}")


if __name__ == "__main__":
    main()
