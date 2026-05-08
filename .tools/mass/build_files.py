"""
03_build_files.py
Generates all Minecraft datapack files for a fish type from its head_data cache.

Usage:
  python 03_build_files.py <FishType>
  python 03_build_files.py Betty

Input:  .tools/mass/output/head_data/<fish_type>.json
Output: .tools/mass/output/generated/

  Per variant (grouped by body color):
    advancements/collection/tropical_fish/<fish_type>/<body_color>/<pattern_color>.json
    advancements/collection/tropical_fish/<fish_type>/<body_color>/end.json
    loot_table/tropical_fish/<fish_type>/<body_color>/<pattern_color>.json
    get_mob_head/tropical_fish/<fish_type>/<body_color>/<pattern_color>.mcfunction

  Per fish type:
    advancements/collection/tropical_fish/<fish_type>.json
    get_mob_head/tropical_fish/<fish_type>_dialog.mcfunction

  Shared (written once, skipped if already present):
    advancements/notification/killed_mob_check/tropical_fish.json
    notification/check/tropical_fish.mcfunction
    notification/dropped/tropical_fish.mcfunction
    notification/run/tropical_fish.mcfunction

Generators are split across:
  _constants.py       — shared constants and helpers
  gen_advancements.py — advancement JSON generators
  gen_loot_table.py   — loot table JSON generators
  gen_mcfunctions.py  — mcfunction generators
"""

import sys
import json

from _constants import DATA_DIR, OUTPUT_ROOT, SCRIPT_DIR, slug
from gen_advancements import write_advancements_for_fish_type, write_shared_advancements
from gen_loot_table import write_loot_tables_for_fish_type
from gen_mcfunctions import write_mcfunctions_for_fish_type, write_shared_mcfunctions


def main():
    if len(sys.argv) < 2:
        print("Usage: python 03_build_files.py <FishType>")
        sys.exit(1)

    fish_type  = slug(sys.argv[1])
    cache_path = DATA_DIR / f"{fish_type}.json"

    if not cache_path.exists():
        print(f"ERROR: {cache_path} not found — run upload_skins.py first")
        sys.exit(1)

    entries = json.loads(cache_path.read_text(encoding="utf-8"))
    print(f"Building files for '{fish_type}' ({len(entries)} variants)...")

    print("\n[shared files]")
    write_shared_advancements()
    write_shared_mcfunctions()

    print(f"\n[advancements]")
    write_advancements_for_fish_type(fish_type, entries)

    print(f"\n[loot tables]")
    write_loot_tables_for_fish_type(fish_type, entries)

    print(f"\n[mcfunctions]")
    write_mcfunctions_for_fish_type(fish_type, entries)

    print(f"\nDone. Output: {OUTPUT_ROOT.relative_to(SCRIPT_DIR)}")


if __name__ == "__main__":
    main()