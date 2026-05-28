"""
build_files.py
Generates all Minecraft datapack files for llama heads from the head_data cache.

Usage:
  python build_files.py

Input:  output/head_data/llama.json
Output: output/generated/

  Per variant (grouped by llama color):
    advancements/collection/llama/<llama_color>/no_carpet.json
    advancements/collection/llama/<llama_color>/<carpet_color>.json
    advancements/collection/llama/<llama_color>/end.json
    loot_table/llama/<llama_color>/no_carpet.json
    loot_table/llama/<llama_color>/<carpet_color>.json
    get_mob_head/llama/<llama_color>/no_carpet.mcfunction
    get_mob_head/llama/<llama_color>/<carpet_color>.mcfunction

  Root:
    advancements/collection/llama.json
    loot_table/llama.json
    get_mob_head/llama/dialog.json

  Shared (written once, skipped if already present):
    advancements/notification/killed_mob_check/llama.json
    notification/check/llama.mcfunction
    notification/dropped/llama.mcfunction
    notification/run/llama.mcfunction
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
