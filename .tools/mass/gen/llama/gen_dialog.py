"""
gen_dialog.py
Standalone script to regenerate only the dialog json for llama heads.

Usage:
  python gen_dialog.py

Input:  output/head_data/llama.json
Output: output/generated/get_mob_head/llama/dialog.json
"""

import json

from _constants import DATA_DIR, OUTPUT_ROOT, ENTITY_TYPE, write
from gen_mcfunctions import gen_dialog


def main():
    cache_path = DATA_DIR / f"{ENTITY_TYPE}.json"

    if not cache_path.exists():
        print(f"ERROR: {cache_path} not found — run upload_skins.py first")
        raise SystemExit(1)

    entries = json.loads(cache_path.read_text(encoding="utf-8"))
    print(f"Building dialog for '{ENTITY_TYPE}' ({len(entries)} variants)...")

    out_path = OUTPUT_ROOT / f"get_mob_head/{ENTITY_TYPE}/dialog.json"
    write(out_path, gen_dialog(entries))
    print("\nDone.")


if __name__ == "__main__":
    main()
