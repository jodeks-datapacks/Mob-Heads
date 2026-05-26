"""
build_files.py
Generates all Minecraft datapack files for happy_ghast heads from the head_data cache.

Usage:
  python build_files.py

Input:  output/head_data/happy_ghast.json
Output: output/generated/

  Per variant (grouped by harness color):
    advancements/collection/happy_ghast/<harness_color>/<state>.json
    advancements/collection/happy_ghast/<harness_color>/end.json
    loot_table/happy_ghast/<harness_color>/<state>.json
    get_mob_head/happy_ghast/<harness_color>/<state>.mcfunction

  Root:
    advancements/collection/happy_ghast.json
    loot_table/happy_ghast.json
    get_mob_head/happy_ghast/dialog.mcfunction

  Shared (written once, skipped if already present):
    advancements/notification/killed_mob_check/happy_ghast.json
    notification/check/happy_ghast.mcfunction
    notification/dropped/happy_ghast.mcfunction
    notification/run/happy_ghast.mcfunction
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
